import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'save_file_event.dart';
part 'save_file_state.dart';
part 'save_file_bloc.freezed.dart';

const _progressThrottleDuration = Duration(milliseconds: 75);
const _readyDuration = Duration(seconds: 2);

class SaveFileBloc extends Bloc<SaveFileEvent, SaveFileState> {
  SaveFileBloc({
    required SaveFileRepository repository,
  })  : _repository = repository,
        super(const SaveFileInitial()) {
    on<SaveFileStarted>((event, emit) => _started(emit, event.fileUri));
  }

  final SaveFileRepository _repository;

  final StreamController<String> _saveSuccessController =
      StreamController<String>.broadcast();

  final StreamController<String> _saveFailureController =
      StreamController<String>.broadcast();

  Stream<String> get saveSuccessStream => _saveSuccessController.stream;

  Stream<String> get saveFailureStream => _saveFailureController.stream;

  Future<void> _started(
    Emitter<SaveFileState> emit,
    Uri fileUri,
  ) async {
    StreamSubscription<double>? subscription;

    try {
      emit(
        const SaveFileState.inProgress(progress: 0),
      );

      final result = _repository.save(fileUri: fileUri);

      subscription = result.progress
          .throttleTime(_progressThrottleDuration)
          .listen((p) => emit(SaveFileState.inProgress(progress: p)));

      final path = await result.path;

      if (path == null) {
        emit(const SaveFileState.ready());

        return;
      }

      _saveSuccessController.add(path);

      emit(SaveFileState.complete(path: path));

      await Future.delayed(_readyDuration, () {
        emit(const SaveFileState.ready());
      });
    } on Exception catch (e) {
      _saveFailureController.add(e.toString());

      emit(const SaveFileState.failure());
    } finally {
      await subscription?.cancel();
    }
  }
}
