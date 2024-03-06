import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_sources_event.dart';
part 'news_sources_state.dart';
part 'news_sources_bloc.freezed.dart';

class NewsSourcesBloc extends Bloc<NewsSourcesEvent, NewsSourcesState> {
  NewsSourcesBloc({
    required NewsRepository newsRepository,
  })  : _newsRepository = newsRepository,
        super(const NewsSourcesState(status: BlocStatus.initial)) {
    on<NewsSourcesInitialized>(_initialized);
    on<NewsSourcesSourceShowToggled>(_sourceShowToggled);
    on<NewsSourcesChangesApplied>(_changesApplied);
    on<NewsSourcesSourcesChanged>(_newsSourcesChanged);

    _newsSourcesListener = _newsRepository.sourceStream.listen((event) {
      add(const NewsSourcesInitialized());
    });
  }

  final NewsRepository _newsRepository;

  late final StreamSubscription<List<NewsSource>> _newsSourcesListener;

  @override
  Future<void> close() async {
    await _newsSourcesListener.cancel();

    return super.close();
  }

  FutureOr<void> _initialized(
    NewsSourcesInitialized event,
    Emitter<NewsSourcesState> emit,
  ) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final sources = await _newsRepository.fetchSources();

    emit(
      state.copyWith(
        status: BlocStatus.success,
        inputs: sources.map((s) => NewsSourceInput(source: s)).toList(),
      ),
    );
  }

  FutureOr<void> _sourceShowToggled(
    NewsSourcesSourceShowToggled event,
    Emitter<NewsSourcesState> emit,
  ) {
    final inputs = List<NewsSourceInput>.from(
      state.inputs,
      growable: false,
    );

    final index = inputs.indexOf(event.input);

    if (index == -1) {
      throw ArgumentError(
        'The input list does not contain the input to change: ${event.input}',
      );
    }

    inputs[index] = event.input.copyWith(
      isChanged: !event.input.isChanged,
    );

    emit(
      state.copyWith(inputs: inputs),
    );
  }

  FutureOr<void> _changesApplied(
    NewsSourcesChangesApplied event,
    Emitter<NewsSourcesState> emit,
  ) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final sourcesToToggle =
        state.inputs.where((i) => i.isChanged).map((i) => i.source).toList();

    await _newsRepository.toggleShowSources(sources: sourcesToToggle);

    emit(state.copyWith(status: BlocStatus.success));
  }

  FutureOr<void> _newsSourcesChanged(
    NewsSourcesSourcesChanged event,
    Emitter<NewsSourcesState> emit,
  ) {
    emit(
      state.copyWith(
        status: BlocStatus.success,
        inputs: event.sources.map((s) => NewsSourceInput(source: s)).toList(),
      ),
    );
  }
}
