part of 'save_file_bloc.dart';

@freezed
class SaveFileState with _$SaveFileState {
  const factory SaveFileState.ready() = SaveFileInitial;
  const factory SaveFileState.inProgress({
    required double progress,
  }) = SaveFileInProgress;
  const factory SaveFileState.complete({
    required String path,
  }) = SaveFileComplete;
  const factory SaveFileState.failure() = SaveFileFailure;
}
