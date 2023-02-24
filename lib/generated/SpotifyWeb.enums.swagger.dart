import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum AlbumRestrictionObjectReason {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('market')
  market('market'),
  @JsonValue('product')
  product('product'),
  @JsonValue('explicit')
  explicit('explicit');

  final String? value;

  const AlbumRestrictionObjectReason(this.value);
}

enum ArtistObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('artist')
  artist('artist');

  final String? value;

  const ArtistObjectType(this.value);
}

enum SimplifiedArtistObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('artist')
  artist('artist');

  final String? value;

  const SimplifiedArtistObjectType(this.value);
}

enum PlayerErrorReasons {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NO_PREV_TRACK')
  noPrevTrack('NO_PREV_TRACK'),
  @JsonValue('NO_NEXT_TRACK')
  noNextTrack('NO_NEXT_TRACK'),
  @JsonValue('NO_SPECIFIC_TRACK')
  noSpecificTrack('NO_SPECIFIC_TRACK'),
  @JsonValue('ALREADY_PAUSED')
  alreadyPaused('ALREADY_PAUSED'),
  @JsonValue('NOT_PAUSED')
  notPaused('NOT_PAUSED'),
  @JsonValue('NOT_PLAYING_LOCALLY')
  notPlayingLocally('NOT_PLAYING_LOCALLY'),
  @JsonValue('NOT_PLAYING_TRACK')
  notPlayingTrack('NOT_PLAYING_TRACK'),
  @JsonValue('NOT_PLAYING_CONTEXT')
  notPlayingContext('NOT_PLAYING_CONTEXT'),
  @JsonValue('ENDLESS_CONTEXT')
  endlessContext('ENDLESS_CONTEXT'),
  @JsonValue('CONTEXT_DISALLOW')
  contextDisallow('CONTEXT_DISALLOW'),
  @JsonValue('ALREADY_PLAYING')
  alreadyPlaying('ALREADY_PLAYING'),
  @JsonValue('RATE_LIMITED')
  rateLimited('RATE_LIMITED'),
  @JsonValue('REMOTE_CONTROL_DISALLOW')
  remoteControlDisallow('REMOTE_CONTROL_DISALLOW'),
  @JsonValue('DEVICE_NOT_CONTROLLABLE')
  deviceNotControllable('DEVICE_NOT_CONTROLLABLE'),
  @JsonValue('VOLUME_CONTROL_DISALLOW')
  volumeControlDisallow('VOLUME_CONTROL_DISALLOW'),
  @JsonValue('NO_ACTIVE_DEVICE')
  noActiveDevice('NO_ACTIVE_DEVICE'),
  @JsonValue('PREMIUM_REQUIRED')
  premiumRequired('PREMIUM_REQUIRED'),
  @JsonValue('UNKNOWN')
  unknown('UNKNOWN');

  final String? value;

  const PlayerErrorReasons(this.value);
}

enum PublicUserObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('user')
  user('user');

  final String? value;

  const PublicUserObjectType(this.value);
}

enum SectionObjectMode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(-1)
  value_1(-1),
  @JsonValue(0)
  value_0(0),
  @JsonValue(1)
  $value_1(1);

  final int? value;

  const SectionObjectMode(this.value);
}

enum AudioFeaturesObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('audio_features')
  audioFeatures('audio_features');

  final String? value;

  const AudioFeaturesObjectType(this.value);
}

enum PlaylistUserObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('user')
  user('user');

  final String? value;

  const PlaylistUserObjectType(this.value);
}

enum PlaylistOwnerObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('user')
  user('user');

  final String? value;

  const PlaylistOwnerObjectType(this.value);
}

enum TrackObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('track')
  track('track');

  final String? value;

  const TrackObjectType(this.value);
}

enum EpisodeObjectReleaseDatePrecision {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('year')
  year('year'),
  @JsonValue('month')
  month('month'),
  @JsonValue('day')
  day('day');

  final String? value;

  const EpisodeObjectReleaseDatePrecision(this.value);
}

enum EpisodeObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('episode')
  episode('episode');

  final String? value;

  const EpisodeObjectType(this.value);
}

enum SimplifiedEpisodeObjectReleaseDatePrecision {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('year')
  year('year'),
  @JsonValue('month')
  month('month'),
  @JsonValue('day')
  day('day');

  final String? value;

  const SimplifiedEpisodeObjectReleaseDatePrecision(this.value);
}

enum SimplifiedEpisodeObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('episode')
  episode('episode');

  final String? value;

  const SimplifiedEpisodeObjectType(this.value);
}

enum EpisodeBaseReleaseDatePrecision {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('year')
  year('year'),
  @JsonValue('month')
  month('month'),
  @JsonValue('day')
  day('day');

  final String? value;

  const EpisodeBaseReleaseDatePrecision(this.value);
}

enum EpisodeBaseType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('episode')
  episode('episode');

  final String? value;

  const EpisodeBaseType(this.value);
}

enum ShowBaseType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('show')
  show('show');

  final String? value;

  const ShowBaseType(this.value);
}

enum ShowObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('show')
  show('show');

  final String? value;

  const ShowObjectType(this.value);
}

enum SimplifiedShowObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('show')
  show('show');

  final String? value;

  const SimplifiedShowObjectType(this.value);
}

enum AudiobookBaseType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('audiobook')
  audiobook('audiobook');

  final String? value;

  const AudiobookBaseType(this.value);
}

enum AudiobookObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('audiobook')
  audiobook('audiobook');

  final String? value;

  const AudiobookObjectType(this.value);
}

enum SimplifiedAudiobookObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('audiobook')
  audiobook('audiobook');

  final String? value;

  const SimplifiedAudiobookObjectType(this.value);
}

enum AlbumBaseAlbumType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('album')
  album('album'),
  @JsonValue('single')
  single('single'),
  @JsonValue('compilation')
  compilation('compilation');

  final String? value;

  const AlbumBaseAlbumType(this.value);
}

enum AlbumBaseReleaseDatePrecision {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('year')
  year('year'),
  @JsonValue('month')
  month('month'),
  @JsonValue('day')
  day('day');

  final String? value;

  const AlbumBaseReleaseDatePrecision(this.value);
}

enum AlbumBaseType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('album')
  album('album');

  final String? value;

  const AlbumBaseType(this.value);
}

enum SimplifiedAlbumObjectAlbumGroup {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('album')
  album('album'),
  @JsonValue('single')
  single('single'),
  @JsonValue('compilation')
  compilation('compilation'),
  @JsonValue('appears_on')
  appearsOn('appears_on');

  final String? value;

  const SimplifiedAlbumObjectAlbumGroup(this.value);
}

enum SimplifiedAlbumObjectAlbumType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('album')
  album('album'),
  @JsonValue('single')
  single('single'),
  @JsonValue('compilation')
  compilation('compilation');

  final String? value;

  const SimplifiedAlbumObjectAlbumType(this.value);
}

enum SimplifiedAlbumObjectReleaseDatePrecision {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('year')
  year('year'),
  @JsonValue('month')
  month('month'),
  @JsonValue('day')
  day('day');

  final String? value;

  const SimplifiedAlbumObjectReleaseDatePrecision(this.value);
}

enum SimplifiedAlbumObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('album')
  album('album');

  final String? value;

  const SimplifiedAlbumObjectType(this.value);
}

enum ChapterObjectReleaseDatePrecision {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('year')
  year('year'),
  @JsonValue('month')
  month('month'),
  @JsonValue('day')
  day('day');

  final String? value;

  const ChapterObjectReleaseDatePrecision(this.value);
}

enum ChapterObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('episode')
  episode('episode');

  final String? value;

  const ChapterObjectType(this.value);
}

enum SimplifiedChapterObjectReleaseDatePrecision {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('year')
  year('year'),
  @JsonValue('month')
  month('month'),
  @JsonValue('day')
  day('day');

  final String? value;

  const SimplifiedChapterObjectReleaseDatePrecision(this.value);
}

enum SimplifiedChapterObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('episode')
  episode('episode');

  final String? value;

  const SimplifiedChapterObjectType(this.value);
}

enum ChapterBaseReleaseDatePrecision {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('year')
  year('year'),
  @JsonValue('month')
  month('month'),
  @JsonValue('day')
  day('day');

  final String? value;

  const ChapterBaseReleaseDatePrecision(this.value);
}

enum ChapterBaseType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('episode')
  episode('episode');

  final String? value;

  const ChapterBaseType(this.value);
}

enum AlbumObjectAlbumType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('album')
  album('album'),
  @JsonValue('single')
  single('single'),
  @JsonValue('compilation')
  compilation('compilation');

  final String? value;

  const AlbumObjectAlbumType(this.value);
}

enum AlbumObjectReleaseDatePrecision {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('year')
  year('year'),
  @JsonValue('month')
  month('month'),
  @JsonValue('day')
  day('day');

  final String? value;

  const AlbumObjectReleaseDatePrecision(this.value);
}

enum AlbumObjectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('album')
  album('album');

  final String? value;

  const AlbumObjectType(this.value);
}

enum SearchGetIncludeExternal {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('audio')
  audio('audio');

  final String? value;

  const SearchGetIncludeExternal(this.value);
}

enum MeFollowingGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('artist')
  artist('artist');

  final String? value;

  const MeFollowingGetType(this.value);
}

enum MeFollowingPutType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('artist')
  artist('artist'),
  @JsonValue('user')
  user('user');

  final String? value;

  const MeFollowingPutType(this.value);
}

enum MeFollowingDeleteType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('artist')
  artist('artist'),
  @JsonValue('user')
  user('user');

  final String? value;

  const MeFollowingDeleteType(this.value);
}

enum MeFollowingContainsGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('artist')
  artist('artist'),
  @JsonValue('user')
  user('user');

  final String? value;

  const MeFollowingContainsGetType(this.value);
}
