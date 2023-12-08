part of 'favorite_media_list_bloc.dart';

@freezed
class FavoriteMediaListState with _$FavoriteMediaListState {
  const factory FavoriteMediaListState({
    required BlocStatus status,
    @Default([]) List<Media> mediaList,
  }) = _DailyMediaListState;

  const FavoriteMediaListState._();

  @override
  String toString() {
    return '''
FavoriteMediaListState(
    status: ${status.name},
    mediaList.length: ${mediaList.length},
  )''';
  }
}
