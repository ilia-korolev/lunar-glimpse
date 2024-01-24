part of 'save_file_bloc.dart';

@freezed
class SaveFileEvent with _$SaveFileEvent {
  const factory SaveFileEvent.started({
    required Uri fileUri,
  }) = SaveFileStarted;
}
