part of 'favorite_media_list_bloc.dart';

@freezed
class FavoriteMediaListEvent with _$FavoriteMediaListEvent {
  const factory FavoriteMediaListEvent.fetched() = FavoriteMediaListFetched;
  const factory FavoriteMediaListEvent.favoriteRemoved(Media media) =
      FavoriteMediaListFavoriteRemoved;
  const factory FavoriteMediaListEvent.triedAgain() =
      FavoriteMediaListTriedAgain;
  const factory FavoriteMediaListEvent.mediaChanged(List<Media> media) =
      FavoriteMediaListMediaChanged;
}
