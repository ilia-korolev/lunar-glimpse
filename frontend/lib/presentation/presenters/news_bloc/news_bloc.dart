import 'package:bloc/bloc.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc({
    required NewsRepository newsRepository,
    required WebFeedRepository webFeedRepository,
  })  : _newsRepository = newsRepository,
        _webFeedRepository = webFeedRepository,
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
  }

  final NewsRepository _newsRepository;
  final WebFeedRepository _webFeedRepository;

  NewsEvent? _previousEvent;

  @override
  void onEvent(NewsEvent event) {
    _storeEvent(event);

    super.onEvent(event);
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

      final webFeeds = await _webFeedRepository.fetchWebFeedsToShow();
      final response = await _newsRepository.fetchNews(webFeeds: webFeeds);

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
