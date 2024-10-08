import 'dart:async';

import 'package:astro_common/astro_common.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/_export.dart';
import 'package:frontend/domain/_export.dart';
import 'package:frontend/presentation/_export.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc({
    required NewsArticleRepository newsArticleRepository,
    required NewsSourceRepository newsSourceRepository,
  })  : _newsArticleRepository = newsArticleRepository,
        _newsSourceRepository = newsSourceRepository,
        super(
          const NewsState(
            status: BlocStatus.initial,
          ),
        ) {
    on<NewsFetched>(
      (event, emit) async => _fetched(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<NewsRefreshed>(
      (event, emit) async => _refreshed(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    on<NewsTriedAgain>(
      (event, emit) async => _triedAgain(emit),
      transformer: throttleDroppableTransformer(_throttleDuration),
    );

    _newsSourcesListener = _newsSourceRepository.sourceStream.listen((event) {
      add(const NewsRefreshed());
    });
  }

  final NewsArticleRepository _newsArticleRepository;
  final NewsSourceRepository _newsSourceRepository;

  late final StreamSubscription<List<NewsSource>> _newsSourcesListener;

  NewsEvent? _previousEvent;

  @override
  void onEvent(NewsEvent event) {
    _storeEvent(event);

    super.onEvent(event);
  }

  @override
  Future<void> close() async {
    await _newsSourcesListener.cancel();

    return super.close();
  }

  void _storeEvent(NewsEvent event) {
    final shouldStore = event.maybeWhen<bool>(
      triedAgain: () => false,
      orElse: () => true,
    );

    if (!shouldStore) {
      return;
    }

    _previousEvent = event;
  }

  Future<void> _fetched(Emitter<NewsState> emit) async {
    try {
      emit(
        state.copyWith(
          status: BlocStatus.loading,
        ),
      );

      final sources = await _newsSourceRepository.fetchSources();
      final shownSources = sources.where((s) => s.isShown).toList();
      final response =
          await _newsArticleRepository.fetchNews(sources: shownSources);

      emit(
        state.copyWith(
          status: BlocStatus.success,
          articles: response.articles,
        ),
      );
    } on Exception catch (_) {
      emit(
        state.copyWith(
          status: BlocStatus.failure,
        ),
      );
    }
  }

  Future<void> _refreshed(Emitter<NewsState> emit) async {
    emit(
      state.copyWith(
        status: BlocStatus.loading,
        articles: [],
      ),
    );

    await _fetched(emit);
  }

  Future<void> _triedAgain(Emitter<NewsState> emit) async {
    if (_previousEvent == null) {
      return;
    }

    add(_previousEvent!);
  }
}
