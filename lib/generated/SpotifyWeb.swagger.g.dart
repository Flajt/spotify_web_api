// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SpotifyWeb.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinkedTrackObject _$LinkedTrackObjectFromJson(Map<String, dynamic> json) =>
    LinkedTrackObject(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlObject.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$LinkedTrackObjectToJson(LinkedTrackObject instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
    };

TrackRestrictionObject _$TrackRestrictionObjectFromJson(
        Map<String, dynamic> json) =>
    TrackRestrictionObject(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$TrackRestrictionObjectToJson(
        TrackRestrictionObject instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };

AlbumRestrictionObject _$AlbumRestrictionObjectFromJson(
        Map<String, dynamic> json) =>
    AlbumRestrictionObject(
      reason: albumRestrictionObjectReasonFromJson(json['reason']),
    );

Map<String, dynamic> _$AlbumRestrictionObjectToJson(
        AlbumRestrictionObject instance) =>
    <String, dynamic>{
      'reason': albumRestrictionObjectReasonToJson(instance.reason),
    };

EpisodeRestrictionObject _$EpisodeRestrictionObjectFromJson(
        Map<String, dynamic> json) =>
    EpisodeRestrictionObject(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$EpisodeRestrictionObjectToJson(
        EpisodeRestrictionObject instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };

ChapterRestrictionObject _$ChapterRestrictionObjectFromJson(
        Map<String, dynamic> json) =>
    ChapterRestrictionObject(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$ChapterRestrictionObjectToJson(
        ChapterRestrictionObject instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };

ArtistObject _$ArtistObjectFromJson(Map<String, dynamic> json) => ArtistObject(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlObject.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : FollowersObject.fromJson(json['followers'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      name: json['name'] as String?,
      popularity: json['popularity'] as int?,
      type: artistObjectTypeFromJson(json['type']),
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$ArtistObjectToJson(ArtistObject instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'followers': instance.followers?.toJson(),
      'genres': instance.genres,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'popularity': instance.popularity,
      'type': artistObjectTypeToJson(instance.type),
      'uri': instance.uri,
    };

SimplifiedArtistObject _$SimplifiedArtistObjectFromJson(
        Map<String, dynamic> json) =>
    SimplifiedArtistObject(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlObject.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      type: simplifiedArtistObjectTypeFromJson(json['type']),
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$SimplifiedArtistObjectToJson(
        SimplifiedArtistObject instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': simplifiedArtistObjectTypeToJson(instance.type),
      'uri': instance.uri,
    };

PlayHistoryObject _$PlayHistoryObjectFromJson(Map<String, dynamic> json) =>
    PlayHistoryObject(
      track: json['track'] == null
          ? null
          : TrackObject.fromJson(json['track'] as Map<String, dynamic>),
      playedAt: json['played_at'] == null
          ? null
          : DateTime.parse(json['played_at'] as String),
      context: json['context'] == null
          ? null
          : ContextObject.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayHistoryObjectToJson(PlayHistoryObject instance) =>
    <String, dynamic>{
      'track': instance.track?.toJson(),
      'played_at': instance.playedAt?.toIso8601String(),
      'context': instance.context?.toJson(),
    };

PlaylistTrackObject _$PlaylistTrackObjectFromJson(Map<String, dynamic> json) =>
    PlaylistTrackObject(
      addedAt: json['added_at'] == null
          ? null
          : DateTime.parse(json['added_at'] as String),
      addedBy: json['added_by'] == null
          ? null
          : PlaylistUserObject.fromJson(
              json['added_by'] as Map<String, dynamic>),
      isLocal: json['is_local'] as bool?,
      track: json['track'],
    );

Map<String, dynamic> _$PlaylistTrackObjectToJson(
        PlaylistTrackObject instance) =>
    <String, dynamic>{
      'added_at': instance.addedAt?.toIso8601String(),
      'added_by': instance.addedBy?.toJson(),
      'is_local': instance.isLocal,
      'track': instance.track,
    };

CurrentlyPlayingObject _$CurrentlyPlayingObjectFromJson(
        Map<String, dynamic> json) =>
    CurrentlyPlayingObject(
      context: json['context'] == null
          ? null
          : ContextObject.fromJson(json['context'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as int?,
      progressMs: json['progress_ms'] as int?,
      isPlaying: json['is_playing'] as bool?,
      item: json['item'],
      currentlyPlayingType: json['currently_playing_type'] as String?,
    );

Map<String, dynamic> _$CurrentlyPlayingObjectToJson(
        CurrentlyPlayingObject instance) =>
    <String, dynamic>{
      'context': instance.context?.toJson(),
      'timestamp': instance.timestamp,
      'progress_ms': instance.progressMs,
      'is_playing': instance.isPlaying,
      'item': instance.item,
      'currently_playing_type': instance.currentlyPlayingType,
    };

QueueObject _$QueueObjectFromJson(Map<String, dynamic> json) => QueueObject(
      currentlyPlaying: json['currentlyPlaying'],
      queue:
          (json['queue'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
    );

Map<String, dynamic> _$QueueObjectToJson(QueueObject instance) =>
    <String, dynamic>{
      'currentlyPlaying': instance.currentlyPlaying,
      'queue': instance.queue,
    };

CurrentlyPlayingContextObject _$CurrentlyPlayingContextObjectFromJson(
        Map<String, dynamic> json) =>
    CurrentlyPlayingContextObject(
      device: json['device'] == null
          ? null
          : DeviceObject.fromJson(json['device'] as Map<String, dynamic>),
      repeatState: json['repeat_state'] as String?,
      shuffleState: json['shuffle_state'] as bool?,
      context: json['context'] == null
          ? null
          : ContextObject.fromJson(json['context'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as int?,
      progressMs: json['progress_ms'] as int?,
      isPlaying: json['is_playing'] as bool?,
      item: json['item'],
      currentlyPlayingType: json['currently_playing_type'] as String?,
      actions: json['actions'] == null
          ? null
          : DisallowsObject.fromJson(json['actions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentlyPlayingContextObjectToJson(
        CurrentlyPlayingContextObject instance) =>
    <String, dynamic>{
      'device': instance.device?.toJson(),
      'repeat_state': instance.repeatState,
      'shuffle_state': instance.shuffleState,
      'context': instance.context?.toJson(),
      'timestamp': instance.timestamp,
      'progress_ms': instance.progressMs,
      'is_playing': instance.isPlaying,
      'item': instance.item,
      'currently_playing_type': instance.currentlyPlayingType,
      'actions': instance.actions?.toJson(),
    };

DisallowsObject _$DisallowsObjectFromJson(Map<String, dynamic> json) =>
    DisallowsObject(
      interruptingPlayback: json['interrupting_playback'] as bool?,
      pausing: json['pausing'] as bool?,
      resuming: json['resuming'] as bool?,
      seeking: json['seeking'] as bool?,
      skippingNext: json['skipping_next'] as bool?,
      skippingPrev: json['skipping_prev'] as bool?,
      togglingRepeatContext: json['toggling_repeat_context'] as bool?,
      togglingShuffle: json['toggling_shuffle'] as bool?,
      togglingRepeatTrack: json['toggling_repeat_track'] as bool?,
      transferringPlayback: json['transferring_playback'] as bool?,
    );

Map<String, dynamic> _$DisallowsObjectToJson(DisallowsObject instance) =>
    <String, dynamic>{
      'interrupting_playback': instance.interruptingPlayback,
      'pausing': instance.pausing,
      'resuming': instance.resuming,
      'seeking': instance.seeking,
      'skipping_next': instance.skippingNext,
      'skipping_prev': instance.skippingPrev,
      'toggling_repeat_context': instance.togglingRepeatContext,
      'toggling_shuffle': instance.togglingShuffle,
      'toggling_repeat_track': instance.togglingRepeatTrack,
      'transferring_playback': instance.transferringPlayback,
    };

ErrorObject _$ErrorObjectFromJson(Map<String, dynamic> json) => ErrorObject(
      status: json['status'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ErrorObjectToJson(ErrorObject instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

PlayerErrorObject _$PlayerErrorObjectFromJson(Map<String, dynamic> json) =>
    PlayerErrorObject(
      status: json['status'] as int?,
      message: json['message'] as String?,
      reason: playerErrorReasonsFromJson(json['reason']),
    );

Map<String, dynamic> _$PlayerErrorObjectToJson(PlayerErrorObject instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'reason': playerErrorReasonsToJson(instance.reason),
    };

PrivateUserObject _$PrivateUserObjectFromJson(Map<String, dynamic> json) =>
    PrivateUserObject(
      country: json['country'] as String?,
      displayName: json['display_name'] as String?,
      email: json['email'] as String?,
      explicitContent: json['explicit_content'] == null
          ? null
          : ExplicitContentSettingsObject.fromJson(
              json['explicit_content'] as Map<String, dynamic>),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlObject.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : FollowersObject.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      product: json['product'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$PrivateUserObjectToJson(PrivateUserObject instance) =>
    <String, dynamic>{
      'country': instance.country,
      'display_name': instance.displayName,
      'email': instance.email,
      'explicit_content': instance.explicitContent?.toJson(),
      'external_urls': instance.externalUrls?.toJson(),
      'followers': instance.followers?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'product': instance.product,
      'type': instance.type,
      'uri': instance.uri,
    };

PublicUserObject _$PublicUserObjectFromJson(Map<String, dynamic> json) =>
    PublicUserObject(
      displayName: json['display_name'] as String?,
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlObject.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : FollowersObject.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      type: publicUserObjectTypeFromJson(json['type']),
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$PublicUserObjectToJson(PublicUserObject instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'external_urls': instance.externalUrls?.toJson(),
      'followers': instance.followers?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'type': publicUserObjectTypeToJson(instance.type),
      'uri': instance.uri,
    };

AudioAnalysisObject _$AudioAnalysisObjectFromJson(Map<String, dynamic> json) =>
    AudioAnalysisObject(
      meta: json['meta'] == null
          ? null
          : AudioAnalysisObject$Meta.fromJson(
              json['meta'] as Map<String, dynamic>),
      track: json['track'] == null
          ? null
          : AudioAnalysisObject$Track.fromJson(
              json['track'] as Map<String, dynamic>),
      bars: (json['bars'] as List<dynamic>?)
              ?.map(
                  (e) => TimeIntervalObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      beats: (json['beats'] as List<dynamic>?)
              ?.map(
                  (e) => TimeIntervalObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      sections: (json['sections'] as List<dynamic>?)
              ?.map((e) => SectionObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      segments: (json['segments'] as List<dynamic>?)
              ?.map((e) => SegmentObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      tatums: (json['tatums'] as List<dynamic>?)
              ?.map(
                  (e) => TimeIntervalObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AudioAnalysisObjectToJson(
        AudioAnalysisObject instance) =>
    <String, dynamic>{
      'meta': instance.meta?.toJson(),
      'track': instance.track?.toJson(),
      'bars': instance.bars?.map((e) => e.toJson()).toList(),
      'beats': instance.beats?.map((e) => e.toJson()).toList(),
      'sections': instance.sections?.map((e) => e.toJson()).toList(),
      'segments': instance.segments?.map((e) => e.toJson()).toList(),
      'tatums': instance.tatums?.map((e) => e.toJson()).toList(),
    };

TimeIntervalObject _$TimeIntervalObjectFromJson(Map<String, dynamic> json) =>
    TimeIntervalObject(
      start: (json['start'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toDouble(),
      confidence: (json['confidence'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TimeIntervalObjectToJson(TimeIntervalObject instance) =>
    <String, dynamic>{
      'start': instance.start,
      'duration': instance.duration,
      'confidence': instance.confidence,
    };

SectionObject _$SectionObjectFromJson(Map<String, dynamic> json) =>
    SectionObject(
      start: (json['start'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toDouble(),
      confidence: (json['confidence'] as num?)?.toDouble(),
      loudness: (json['loudness'] as num?)?.toDouble(),
      tempo: (json['tempo'] as num?)?.toDouble(),
      tempoConfidence: (json['tempo_confidence'] as num?)?.toDouble(),
      key: json['key'] as int?,
      keyConfidence: (json['key_confidence'] as num?)?.toDouble(),
      mode: (json['mode'] as num?)?.toDouble(),
      modeConfidence: (json['mode_confidence'] as num?)?.toDouble(),
      timeSignature: json['time_signature'] as int?,
      timeSignatureConfidence:
          (json['time_signature_confidence'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SectionObjectToJson(SectionObject instance) =>
    <String, dynamic>{
      'start': instance.start,
      'duration': instance.duration,
      'confidence': instance.confidence,
      'loudness': instance.loudness,
      'tempo': instance.tempo,
      'tempo_confidence': instance.tempoConfidence,
      'key': instance.key,
      'key_confidence': instance.keyConfidence,
      'mode': instance.mode,
      'mode_confidence': instance.modeConfidence,
      'time_signature': instance.timeSignature,
      'time_signature_confidence': instance.timeSignatureConfidence,
    };

SegmentObject _$SegmentObjectFromJson(Map<String, dynamic> json) =>
    SegmentObject(
      start: (json['start'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toDouble(),
      confidence: (json['confidence'] as num?)?.toDouble(),
      loudnessStart: (json['loudness_start'] as num?)?.toDouble(),
      loudnessMax: (json['loudness_max'] as num?)?.toDouble(),
      loudnessMaxTime: (json['loudness_max_time'] as num?)?.toDouble(),
      loudnessEnd: (json['loudness_end'] as num?)?.toDouble(),
      pitches: (json['pitches'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          [],
      timbre: (json['timbre'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          [],
    );

Map<String, dynamic> _$SegmentObjectToJson(SegmentObject instance) =>
    <String, dynamic>{
      'start': instance.start,
      'duration': instance.duration,
      'confidence': instance.confidence,
      'loudness_start': instance.loudnessStart,
      'loudness_max': instance.loudnessMax,
      'loudness_max_time': instance.loudnessMaxTime,
      'loudness_end': instance.loudnessEnd,
      'pitches': instance.pitches,
      'timbre': instance.timbre,
    };

Tempo _$TempoFromJson(Map<String, dynamic> json) => Tempo();

Map<String, dynamic> _$TempoToJson(Tempo instance) => <String, dynamic>{};

Loudness _$LoudnessFromJson(Map<String, dynamic> json) => Loudness();

Map<String, dynamic> _$LoudnessToJson(Loudness instance) => <String, dynamic>{};

AudioFeaturesObject _$AudioFeaturesObjectFromJson(Map<String, dynamic> json) =>
    AudioFeaturesObject(
      acousticness: (json['acousticness'] as num?)?.toDouble(),
      analysisUrl: json['analysis_url'] as String?,
      danceability: (json['danceability'] as num?)?.toDouble(),
      durationMs: json['duration_ms'] as int?,
      energy: (json['energy'] as num?)?.toDouble(),
      id: json['id'] as String?,
      instrumentalness: (json['instrumentalness'] as num?)?.toDouble(),
      key: json['key'] as int?,
      liveness: (json['liveness'] as num?)?.toDouble(),
      loudness: json['loudness'] as num?,
      mode: json['mode'] as int?,
      speechiness: (json['speechiness'] as num?)?.toDouble(),
      tempo: json['tempo'] as num?,
      timeSignature: json['time_signature'] as int?,
      trackHref: json['track_href'] as String?,
      type: audioFeaturesObjectTypeFromJson(json['type']),
      uri: json['uri'] as String?,
      valence: (json['valence'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AudioFeaturesObjectToJson(
        AudioFeaturesObject instance) =>
    <String, dynamic>{
      'acousticness': instance.acousticness,
      'analysis_url': instance.analysisUrl,
      'danceability': instance.danceability,
      'duration_ms': instance.durationMs,
      'energy': instance.energy,
      'id': instance.id,
      'instrumentalness': instance.instrumentalness,
      'key': instance.key,
      'liveness': instance.liveness,
      'loudness': instance.loudness,
      'mode': instance.mode,
      'speechiness': instance.speechiness,
      'tempo': instance.tempo,
      'time_signature': instance.timeSignature,
      'track_href': instance.trackHref,
      'type': audioFeaturesObjectTypeToJson(instance.type),
      'uri': instance.uri,
      'valence': instance.valence,
    };

SimplifiedTrackObject _$SimplifiedTrackObjectFromJson(
        Map<String, dynamic> json) =>
    SimplifiedTrackObject(
      artists: (json['artists'] as List<dynamic>?)
              ?.map((e) =>
                  SimplifiedArtistObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      discNumber: json['disc_number'] as int?,
      durationMs: json['duration_ms'] as int?,
      explicit: json['explicit'] as bool?,
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlObject.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      isPlayable: json['is_playable'] as bool?,
      linkedFrom: json['linked_from'] == null
          ? null
          : LinkedTrackObject.fromJson(
              json['linked_from'] as Map<String, dynamic>),
      restrictions: json['restrictions'] == null
          ? null
          : TrackRestrictionObject.fromJson(
              json['restrictions'] as Map<String, dynamic>),
      name: json['name'] as String?,
      previewUrl: json['preview_url'] as String?,
      trackNumber: json['track_number'] as int?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      isLocal: json['is_local'] as bool?,
    );

Map<String, dynamic> _$SimplifiedTrackObjectToJson(
        SimplifiedTrackObject instance) =>
    <String, dynamic>{
      'artists': instance.artists?.map((e) => e.toJson()).toList(),
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'is_playable': instance.isPlayable,
      'linked_from': instance.linkedFrom?.toJson(),
      'restrictions': instance.restrictions?.toJson(),
      'name': instance.name,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
      'is_local': instance.isLocal,
    };

DevicesObject _$DevicesObjectFromJson(Map<String, dynamic> json) =>
    DevicesObject(
      devices: (json['devices'] as List<dynamic>?)
              ?.map((e) => DeviceObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DevicesObjectToJson(DevicesObject instance) =>
    <String, dynamic>{
      'devices': instance.devices?.map((e) => e.toJson()).toList(),
    };

DeviceObject _$DeviceObjectFromJson(Map<String, dynamic> json) => DeviceObject(
      id: json['id'] as String?,
      isActive: json['is_active'] as bool?,
      isPrivateSession: json['is_private_session'] as bool?,
      isRestricted: json['is_restricted'] as bool?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      volumePercent: json['volume_percent'] as int?,
    );

Map<String, dynamic> _$DeviceObjectToJson(DeviceObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'is_private_session': instance.isPrivateSession,
      'is_restricted': instance.isRestricted,
      'name': instance.name,
      'type': instance.type,
      'volume_percent': instance.volumePercent,
    };

CursorObject _$CursorObjectFromJson(Map<String, dynamic> json) => CursorObject(
      after: json['after'] as String?,
      before: json['before'] as String?,
    );

Map<String, dynamic> _$CursorObjectToJson(CursorObject instance) =>
    <String, dynamic>{
      'after': instance.after,
      'before': instance.before,
    };

CursorPagingObject _$CursorPagingObjectFromJson(Map<String, dynamic> json) =>
    CursorPagingObject(
      href: json['href'] as String?,
      limit: json['limit'] as int?,
      next: json['next'] as String?,
      cursors: json['cursors'] == null
          ? null
          : CursorObject.fromJson(json['cursors'] as Map<String, dynamic>),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$CursorPagingObjectToJson(CursorPagingObject instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'cursors': instance.cursors?.toJson(),
      'total': instance.total,
    };

CursorPagingPlayHistoryObject _$CursorPagingPlayHistoryObjectFromJson(
        Map<String, dynamic> json) =>
    CursorPagingPlayHistoryObject(
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => PlayHistoryObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String?,
      limit: json['limit'] as int?,
      next: json['next'] as String?,
      cursors: json['cursors'] == null
          ? null
          : CursorObject.fromJson(json['cursors'] as Map<String, dynamic>),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$CursorPagingPlayHistoryObjectToJson(
        CursorPagingPlayHistoryObject instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'cursors': instance.cursors?.toJson(),
      'total': instance.total,
    };

CursorPagingSimplifiedArtistObject _$CursorPagingSimplifiedArtistObjectFromJson(
        Map<String, dynamic> json) =>
    CursorPagingSimplifiedArtistObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ArtistObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String?,
      limit: json['limit'] as int?,
      next: json['next'] as String?,
      cursors: json['cursors'] == null
          ? null
          : CursorObject.fromJson(json['cursors'] as Map<String, dynamic>),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$CursorPagingSimplifiedArtistObjectToJson(
        CursorPagingSimplifiedArtistObject instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'cursors': instance.cursors?.toJson(),
      'total': instance.total,
    };

PagingObject _$PagingObjectFromJson(Map<String, dynamic> json) => PagingObject(
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingObjectToJson(PagingObject instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingPlaylistObject _$PagingPlaylistObjectFromJson(
        Map<String, dynamic> json) =>
    PagingPlaylistObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  SimplifiedPlaylistObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingPlaylistObjectToJson(
        PagingPlaylistObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingFeaturedPlaylistObject _$PagingFeaturedPlaylistObjectFromJson(
        Map<String, dynamic> json) =>
    PagingFeaturedPlaylistObject(
      message: json['message'] as String?,
      playlists: json['playlists'] == null
          ? null
          : PagingPlaylistObject.fromJson(
              json['playlists'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PagingFeaturedPlaylistObjectToJson(
        PagingFeaturedPlaylistObject instance) =>
    <String, dynamic>{
      'message': instance.message,
      'playlists': instance.playlists?.toJson(),
    };

PagingSimplifiedAlbumObject _$PagingSimplifiedAlbumObjectFromJson(
        Map<String, dynamic> json) =>
    PagingSimplifiedAlbumObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  SimplifiedAlbumObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingSimplifiedAlbumObjectToJson(
        PagingSimplifiedAlbumObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingSavedAlbumObject _$PagingSavedAlbumObjectFromJson(
        Map<String, dynamic> json) =>
    PagingSavedAlbumObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => SavedAlbumObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingSavedAlbumObjectToJson(
        PagingSavedAlbumObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingSimplifiedTrackObject _$PagingSimplifiedTrackObjectFromJson(
        Map<String, dynamic> json) =>
    PagingSimplifiedTrackObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  SimplifiedTrackObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingSimplifiedTrackObjectToJson(
        PagingSimplifiedTrackObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingSavedTrackObject _$PagingSavedTrackObjectFromJson(
        Map<String, dynamic> json) =>
    PagingSavedTrackObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => SavedTrackObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingSavedTrackObjectToJson(
        PagingSavedTrackObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingTrackObject _$PagingTrackObjectFromJson(Map<String, dynamic> json) =>
    PagingTrackObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => TrackObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingTrackObjectToJson(PagingTrackObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingPlaylistTrackObject _$PagingPlaylistTrackObjectFromJson(
        Map<String, dynamic> json) =>
    PagingPlaylistTrackObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  PlaylistTrackObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingPlaylistTrackObjectToJson(
        PagingPlaylistTrackObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingSimplifiedShowObject _$PagingSimplifiedShowObjectFromJson(
        Map<String, dynamic> json) =>
    PagingSimplifiedShowObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  SimplifiedShowObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingSimplifiedShowObjectToJson(
        PagingSimplifiedShowObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingSavedShowObject _$PagingSavedShowObjectFromJson(
        Map<String, dynamic> json) =>
    PagingSavedShowObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => SavedShowObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingSavedShowObjectToJson(
        PagingSavedShowObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingSimplifiedEpisodeObject _$PagingSimplifiedEpisodeObjectFromJson(
        Map<String, dynamic> json) =>
    PagingSimplifiedEpisodeObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  SimplifiedEpisodeObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingSimplifiedEpisodeObjectToJson(
        PagingSimplifiedEpisodeObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingSavedEpisodeObject _$PagingSavedEpisodeObjectFromJson(
        Map<String, dynamic> json) =>
    PagingSavedEpisodeObject(
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => SavedEpisodeObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingSavedEpisodeObjectToJson(
        PagingSavedEpisodeObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingSimplifiedAudiobookObject _$PagingSimplifiedAudiobookObjectFromJson(
        Map<String, dynamic> json) =>
    PagingSimplifiedAudiobookObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  SimplifiedAudiobookObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingSimplifiedAudiobookObjectToJson(
        PagingSimplifiedAudiobookObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingSimplifiedArtistObject _$PagingSimplifiedArtistObjectFromJson(
        Map<String, dynamic> json) =>
    PagingSimplifiedArtistObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  SimplifiedArtistObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingSimplifiedArtistObjectToJson(
        PagingSimplifiedArtistObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingArtistObject _$PagingArtistObjectFromJson(Map<String, dynamic> json) =>
    PagingArtistObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ArtistObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingArtistObjectToJson(PagingArtistObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

PagingSimplifiedChapterObject _$PagingSimplifiedChapterObjectFromJson(
        Map<String, dynamic> json) =>
    PagingSimplifiedChapterObject(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  SimplifiedChapterObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PagingSimplifiedChapterObjectToJson(
        PagingSimplifiedChapterObject instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

RecommendationsObject _$RecommendationsObjectFromJson(
        Map<String, dynamic> json) =>
    RecommendationsObject(
      seeds: (json['seeds'] as List<dynamic>?)
              ?.map((e) =>
                  RecommendationSeedObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      tracks: (json['tracks'] as List<dynamic>?)
              ?.map((e) => TrackObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RecommendationsObjectToJson(
        RecommendationsObject instance) =>
    <String, dynamic>{
      'seeds': instance.seeds.map((e) => e.toJson()).toList(),
      'tracks': instance.tracks.map((e) => e.toJson()).toList(),
    };

RecommendationSeedObject _$RecommendationSeedObjectFromJson(
        Map<String, dynamic> json) =>
    RecommendationSeedObject(
      afterFilteringSize: json['afterFilteringSize'] as int?,
      afterRelinkingSize: json['afterRelinkingSize'] as int?,
      href: json['href'] as String?,
      id: json['id'] as String?,
      initialPoolSize: json['initialPoolSize'] as int?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$RecommendationSeedObjectToJson(
        RecommendationSeedObject instance) =>
    <String, dynamic>{
      'afterFilteringSize': instance.afterFilteringSize,
      'afterRelinkingSize': instance.afterRelinkingSize,
      'href': instance.href,
      'id': instance.id,
      'initialPoolSize': instance.initialPoolSize,
      'type': instance.type,
    };

SavedAlbumObject _$SavedAlbumObjectFromJson(Map<String, dynamic> json) =>
    SavedAlbumObject(
      addedAt: json['added_at'] == null
          ? null
          : DateTime.parse(json['added_at'] as String),
      album: json['album'] == null
          ? null
          : AlbumObject.fromJson(json['album'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SavedAlbumObjectToJson(SavedAlbumObject instance) =>
    <String, dynamic>{
      'added_at': instance.addedAt?.toIso8601String(),
      'album': instance.album?.toJson(),
    };

SavedTrackObject _$SavedTrackObjectFromJson(Map<String, dynamic> json) =>
    SavedTrackObject(
      addedAt: json['added_at'] == null
          ? null
          : DateTime.parse(json['added_at'] as String),
      track: json['track'] == null
          ? null
          : TrackObject.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SavedTrackObjectToJson(SavedTrackObject instance) =>
    <String, dynamic>{
      'added_at': instance.addedAt?.toIso8601String(),
      'track': instance.track?.toJson(),
    };

SavedEpisodeObject _$SavedEpisodeObjectFromJson(Map<String, dynamic> json) =>
    SavedEpisodeObject(
      addedAt: json['added_at'] == null
          ? null
          : DateTime.parse(json['added_at'] as String),
      episode: json['episode'] == null
          ? null
          : EpisodeObject.fromJson(json['episode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SavedEpisodeObjectToJson(SavedEpisodeObject instance) =>
    <String, dynamic>{
      'added_at': instance.addedAt?.toIso8601String(),
      'episode': instance.episode?.toJson(),
    };

SavedShowObject _$SavedShowObjectFromJson(Map<String, dynamic> json) =>
    SavedShowObject(
      addedAt: json['added_at'] == null
          ? null
          : DateTime.parse(json['added_at'] as String),
      show: json['show'] == null
          ? null
          : SimplifiedShowObject.fromJson(json['show'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SavedShowObjectToJson(SavedShowObject instance) =>
    <String, dynamic>{
      'added_at': instance.addedAt?.toIso8601String(),
      'show': instance.show?.toJson(),
    };

TuneableTrackObject _$TuneableTrackObjectFromJson(Map<String, dynamic> json) =>
    TuneableTrackObject(
      acousticness: (json['acousticness'] as num?)?.toDouble(),
      danceability: (json['danceability'] as num?)?.toDouble(),
      durationMs: json['duration_ms'] as int?,
      energy: (json['energy'] as num?)?.toDouble(),
      instrumentalness: (json['instrumentalness'] as num?)?.toDouble(),
      key: json['key'] as int?,
      liveness: (json['liveness'] as num?)?.toDouble(),
      loudness: json['loudness'] as num?,
      mode: json['mode'] as int?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      speechiness: (json['speechiness'] as num?)?.toDouble(),
      tempo: json['tempo'] as num?,
      timeSignature: json['time_signature'] as int?,
      valence: (json['valence'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TuneableTrackObjectToJson(
        TuneableTrackObject instance) =>
    <String, dynamic>{
      'acousticness': instance.acousticness,
      'danceability': instance.danceability,
      'duration_ms': instance.durationMs,
      'energy': instance.energy,
      'instrumentalness': instance.instrumentalness,
      'key': instance.key,
      'liveness': instance.liveness,
      'loudness': instance.loudness,
      'mode': instance.mode,
      'popularity': instance.popularity,
      'speechiness': instance.speechiness,
      'tempo': instance.tempo,
      'time_signature': instance.timeSignature,
      'valence': instance.valence,
    };

PlaylistObject _$PlaylistObjectFromJson(Map<String, dynamic> json) =>
    PlaylistObject(
      collaborative: json['collaborative'] as bool?,
      description: json['description'] as String?,
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlObject.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : FollowersObject.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      name: json['name'] as String?,
      owner: json['owner'] == null
          ? null
          : PlaylistOwnerObject.fromJson(json['owner'] as Map<String, dynamic>),
      public: json['public'] as bool?,
      snapshotId: json['snapshot_id'] as String?,
      tracks: json['tracks'],
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$PlaylistObjectToJson(PlaylistObject instance) =>
    <String, dynamic>{
      'collaborative': instance.collaborative,
      'description': instance.description,
      'external_urls': instance.externalUrls?.toJson(),
      'followers': instance.followers?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'owner': instance.owner?.toJson(),
      'public': instance.public,
      'snapshot_id': instance.snapshotId,
      'tracks': instance.tracks,
      'type': instance.type,
      'uri': instance.uri,
    };

SimplifiedPlaylistObject _$SimplifiedPlaylistObjectFromJson(
        Map<String, dynamic> json) =>
    SimplifiedPlaylistObject(
      collaborative: json['collaborative'] as bool?,
      description: json['description'] as String?,
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlObject.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      name: json['name'] as String?,
      owner: json['owner'] == null
          ? null
          : PlaylistOwnerObject.fromJson(json['owner'] as Map<String, dynamic>),
      public: json['public'] as bool?,
      snapshotId: json['snapshot_id'] as String?,
      tracks: json['tracks'] == null
          ? null
          : PlaylistTracksRefObject.fromJson(
              json['tracks'] as Map<String, dynamic>),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$SimplifiedPlaylistObjectToJson(
        SimplifiedPlaylistObject instance) =>
    <String, dynamic>{
      'collaborative': instance.collaborative,
      'description': instance.description,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'owner': instance.owner?.toJson(),
      'public': instance.public,
      'snapshot_id': instance.snapshotId,
      'tracks': instance.tracks?.toJson(),
      'type': instance.type,
      'uri': instance.uri,
    };

PlaylistTracksRefObject _$PlaylistTracksRefObjectFromJson(
        Map<String, dynamic> json) =>
    PlaylistTracksRefObject(
      href: json['href'] as String?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$PlaylistTracksRefObjectToJson(
        PlaylistTracksRefObject instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

PlaylistUserObject _$PlaylistUserObjectFromJson(Map<String, dynamic> json) =>
    PlaylistUserObject(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlObject.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : FollowersObject.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      type: playlistUserObjectTypeFromJson(json['type']),
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$PlaylistUserObjectToJson(PlaylistUserObject instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'followers': instance.followers?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'type': playlistUserObjectTypeToJson(instance.type),
      'uri': instance.uri,
    };

PlaylistOwnerObject _$PlaylistOwnerObjectFromJson(Map<String, dynamic> json) =>
    PlaylistOwnerObject(
      displayName: json['display_name'] as String?,
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlObject.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : FollowersObject.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      type: playlistOwnerObjectTypeFromJson(json['type']),
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$PlaylistOwnerObjectToJson(
        PlaylistOwnerObject instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'external_urls': instance.externalUrls?.toJson(),
      'followers': instance.followers?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'type': playlistOwnerObjectTypeToJson(instance.type),
      'uri': instance.uri,
    };

CategoryObject _$CategoryObjectFromJson(Map<String, dynamic> json) =>
    CategoryObject(
      href: json['href'] as String,
      icons: (json['icons'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CategoryObjectToJson(CategoryObject instance) =>
    <String, dynamic>{
      'href': instance.href,
      'icons': instance.icons.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
    };

TrackObject _$TrackObjectFromJson(Map<String, dynamic> json) => TrackObject(
      album: json['album'] == null
          ? null
          : SimplifiedAlbumObject.fromJson(
              json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>?)
              ?.map((e) => ArtistObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      discNumber: json['disc_number'] as int?,
      durationMs: json['duration_ms'] as int?,
      explicit: json['explicit'] as bool?,
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIdObject.fromJson(
              json['external_ids'] as Map<String, dynamic>),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlObject.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      isPlayable: json['is_playable'] as bool?,
      linkedFrom: json['linked_from'] == null
          ? null
          : LinkedTrackObject.fromJson(
              json['linked_from'] as Map<String, dynamic>),
      restrictions: json['restrictions'] == null
          ? null
          : TrackRestrictionObject.fromJson(
              json['restrictions'] as Map<String, dynamic>),
      name: json['name'] as String?,
      popularity: json['popularity'] as int?,
      previewUrl: json['preview_url'] as String?,
      trackNumber: json['track_number'] as int?,
      type: trackObjectTypeFromJson(json['type']),
      uri: json['uri'] as String?,
      isLocal: json['is_local'] as bool?,
    );

Map<String, dynamic> _$TrackObjectToJson(TrackObject instance) =>
    <String, dynamic>{
      'album': instance.album?.toJson(),
      'artists': instance.artists?.map((e) => e.toJson()).toList(),
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_ids': instance.externalIds?.toJson(),
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'is_playable': instance.isPlayable,
      'linked_from': instance.linkedFrom?.toJson(),
      'restrictions': instance.restrictions?.toJson(),
      'name': instance.name,
      'popularity': instance.popularity,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': trackObjectTypeToJson(instance.type),
      'uri': instance.uri,
      'is_local': instance.isLocal,
    };

EpisodeObject _$EpisodeObjectFromJson(Map<String, dynamic> json) =>
    EpisodeObject(
      show: SimplifiedShowObject.fromJson(json['show'] as Map<String, dynamic>),
      audioPreviewUrl: json['audio_preview_url'] as String,
      description: json['description'] as String,
      htmlDescription: json['html_description'] as String,
      durationMs: json['duration_ms'] as int,
      explicit: json['explicit'] as bool,
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isExternallyHosted: json['is_externally_hosted'] as bool,
      isPlayable: json['is_playable'] as bool,
      language: json['language'] as String?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      releaseDatePrecision: episodeObjectReleaseDatePrecisionFromJson(
          json['release_date_precision']),
      resumePoint: ResumePointObject.fromJson(
          json['resume_point'] as Map<String, dynamic>),
      type: episodeObjectTypeFromJson(json['type']),
      uri: json['uri'] as String,
      restrictions: json['restrictions'] == null
          ? null
          : EpisodeRestrictionObject.fromJson(
              json['restrictions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EpisodeObjectToJson(EpisodeObject instance) =>
    <String, dynamic>{
      'show': instance.show.toJson(),
      'audio_preview_url': instance.audioPreviewUrl,
      'description': instance.description,
      'html_description': instance.htmlDescription,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'is_externally_hosted': instance.isExternallyHosted,
      'is_playable': instance.isPlayable,
      'language': instance.language,
      'languages': instance.languages,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': episodeObjectReleaseDatePrecisionToJson(
          instance.releaseDatePrecision),
      'resume_point': instance.resumePoint.toJson(),
      'type': episodeObjectTypeToJson(instance.type),
      'uri': instance.uri,
      'restrictions': instance.restrictions?.toJson(),
    };

SimplifiedEpisodeObject _$SimplifiedEpisodeObjectFromJson(
        Map<String, dynamic> json) =>
    SimplifiedEpisodeObject(
      audioPreviewUrl: json['audio_preview_url'] as String,
      description: json['description'] as String,
      htmlDescription: json['html_description'] as String,
      durationMs: json['duration_ms'] as int,
      explicit: json['explicit'] as bool,
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isExternallyHosted: json['is_externally_hosted'] as bool,
      isPlayable: json['is_playable'] as bool,
      language: json['language'] as String?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      releaseDatePrecision: simplifiedEpisodeObjectReleaseDatePrecisionFromJson(
          json['release_date_precision']),
      resumePoint: ResumePointObject.fromJson(
          json['resume_point'] as Map<String, dynamic>),
      type: simplifiedEpisodeObjectTypeFromJson(json['type']),
      uri: json['uri'] as String,
      restrictions: json['restrictions'] == null
          ? null
          : EpisodeRestrictionObject.fromJson(
              json['restrictions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SimplifiedEpisodeObjectToJson(
        SimplifiedEpisodeObject instance) =>
    <String, dynamic>{
      'audio_preview_url': instance.audioPreviewUrl,
      'description': instance.description,
      'html_description': instance.htmlDescription,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'is_externally_hosted': instance.isExternallyHosted,
      'is_playable': instance.isPlayable,
      'language': instance.language,
      'languages': instance.languages,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision':
          simplifiedEpisodeObjectReleaseDatePrecisionToJson(
              instance.releaseDatePrecision),
      'resume_point': instance.resumePoint.toJson(),
      'type': simplifiedEpisodeObjectTypeToJson(instance.type),
      'uri': instance.uri,
      'restrictions': instance.restrictions?.toJson(),
    };

EpisodeBase _$EpisodeBaseFromJson(Map<String, dynamic> json) => EpisodeBase(
      audioPreviewUrl: json['audio_preview_url'] as String,
      description: json['description'] as String,
      htmlDescription: json['html_description'] as String,
      durationMs: json['duration_ms'] as int,
      explicit: json['explicit'] as bool,
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isExternallyHosted: json['is_externally_hosted'] as bool,
      isPlayable: json['is_playable'] as bool,
      language: json['language'] as String?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      releaseDatePrecision: episodeBaseReleaseDatePrecisionFromJson(
          json['release_date_precision']),
      resumePoint: ResumePointObject.fromJson(
          json['resume_point'] as Map<String, dynamic>),
      type: episodeBaseTypeFromJson(json['type']),
      uri: json['uri'] as String,
      restrictions: json['restrictions'] == null
          ? null
          : EpisodeRestrictionObject.fromJson(
              json['restrictions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EpisodeBaseToJson(EpisodeBase instance) =>
    <String, dynamic>{
      'audio_preview_url': instance.audioPreviewUrl,
      'description': instance.description,
      'html_description': instance.htmlDescription,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'is_externally_hosted': instance.isExternallyHosted,
      'is_playable': instance.isPlayable,
      'language': instance.language,
      'languages': instance.languages,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision':
          episodeBaseReleaseDatePrecisionToJson(instance.releaseDatePrecision),
      'resume_point': instance.resumePoint.toJson(),
      'type': episodeBaseTypeToJson(instance.type),
      'uri': instance.uri,
      'restrictions': instance.restrictions?.toJson(),
    };

ResumePointObject _$ResumePointObjectFromJson(Map<String, dynamic> json) =>
    ResumePointObject(
      fullyPlayed: json['fully_played'] as bool?,
      resumePositionMs: json['resume_position_ms'] as int?,
    );

Map<String, dynamic> _$ResumePointObjectToJson(ResumePointObject instance) =>
    <String, dynamic>{
      'fully_played': instance.fullyPlayed,
      'resume_position_ms': instance.resumePositionMs,
    };

ShowBase _$ShowBaseFromJson(Map<String, dynamic> json) => ShowBase(
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      copyrights: (json['copyrights'] as List<dynamic>?)
              ?.map((e) => CopyrightObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      description: json['description'] as String,
      htmlDescription: json['html_description'] as String,
      explicit: json['explicit'] as bool,
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isExternallyHosted: json['is_externally_hosted'] as bool,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      mediaType: json['media_type'] as String,
      name: json['name'] as String,
      publisher: json['publisher'] as String,
      type: showBaseTypeFromJson(json['type']),
      uri: json['uri'] as String,
      totalEpisodes: json['total_episodes'] as int,
    );

Map<String, dynamic> _$ShowBaseToJson(ShowBase instance) => <String, dynamic>{
      'available_markets': instance.availableMarkets,
      'copyrights': instance.copyrights.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'html_description': instance.htmlDescription,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'is_externally_hosted': instance.isExternallyHosted,
      'languages': instance.languages,
      'media_type': instance.mediaType,
      'name': instance.name,
      'publisher': instance.publisher,
      'type': showBaseTypeToJson(instance.type),
      'uri': instance.uri,
      'total_episodes': instance.totalEpisodes,
    };

ShowObject _$ShowObjectFromJson(Map<String, dynamic> json) => ShowObject(
      episodes: json['episodes'] as Object,
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      copyrights: (json['copyrights'] as List<dynamic>?)
              ?.map((e) => CopyrightObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      description: json['description'] as String,
      htmlDescription: json['html_description'] as String,
      explicit: json['explicit'] as bool,
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isExternallyHosted: json['is_externally_hosted'] as bool,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      mediaType: json['media_type'] as String,
      name: json['name'] as String,
      publisher: json['publisher'] as String,
      type: showObjectTypeFromJson(json['type']),
      uri: json['uri'] as String,
      totalEpisodes: json['total_episodes'] as int,
    );

Map<String, dynamic> _$ShowObjectToJson(ShowObject instance) =>
    <String, dynamic>{
      'episodes': instance.episodes,
      'available_markets': instance.availableMarkets,
      'copyrights': instance.copyrights.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'html_description': instance.htmlDescription,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'is_externally_hosted': instance.isExternallyHosted,
      'languages': instance.languages,
      'media_type': instance.mediaType,
      'name': instance.name,
      'publisher': instance.publisher,
      'type': showObjectTypeToJson(instance.type),
      'uri': instance.uri,
      'total_episodes': instance.totalEpisodes,
    };

SimplifiedShowObject _$SimplifiedShowObjectFromJson(
        Map<String, dynamic> json) =>
    SimplifiedShowObject(
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      copyrights: (json['copyrights'] as List<dynamic>?)
              ?.map((e) => CopyrightObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      description: json['description'] as String,
      htmlDescription: json['html_description'] as String,
      explicit: json['explicit'] as bool,
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isExternallyHosted: json['is_externally_hosted'] as bool,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      mediaType: json['media_type'] as String,
      name: json['name'] as String,
      publisher: json['publisher'] as String,
      type: simplifiedShowObjectTypeFromJson(json['type']),
      uri: json['uri'] as String,
      totalEpisodes: json['total_episodes'] as int,
    );

Map<String, dynamic> _$SimplifiedShowObjectToJson(
        SimplifiedShowObject instance) =>
    <String, dynamic>{
      'available_markets': instance.availableMarkets,
      'copyrights': instance.copyrights.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'html_description': instance.htmlDescription,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'is_externally_hosted': instance.isExternallyHosted,
      'languages': instance.languages,
      'media_type': instance.mediaType,
      'name': instance.name,
      'publisher': instance.publisher,
      'type': simplifiedShowObjectTypeToJson(instance.type),
      'uri': instance.uri,
      'total_episodes': instance.totalEpisodes,
    };

AudiobookBase _$AudiobookBaseFromJson(Map<String, dynamic> json) =>
    AudiobookBase(
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => AuthorObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      copyrights: (json['copyrights'] as List<dynamic>?)
              ?.map((e) => CopyrightObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      description: json['description'] as String,
      htmlDescription: json['html_description'] as String,
      edition: json['edition'] as String?,
      explicit: json['explicit'] as bool,
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      mediaType: json['media_type'] as String,
      name: json['name'] as String,
      narrators: (json['narrators'] as List<dynamic>?)
              ?.map((e) => NarratorObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      publisher: json['publisher'] as String,
      type: audiobookBaseTypeFromJson(json['type']),
      uri: json['uri'] as String,
      totalChapters: json['total_chapters'] as int,
    );

Map<String, dynamic> _$AudiobookBaseToJson(AudiobookBase instance) =>
    <String, dynamic>{
      'authors': instance.authors.map((e) => e.toJson()).toList(),
      'available_markets': instance.availableMarkets,
      'copyrights': instance.copyrights.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'html_description': instance.htmlDescription,
      'edition': instance.edition,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'languages': instance.languages,
      'media_type': instance.mediaType,
      'name': instance.name,
      'narrators': instance.narrators.map((e) => e.toJson()).toList(),
      'publisher': instance.publisher,
      'type': audiobookBaseTypeToJson(instance.type),
      'uri': instance.uri,
      'total_chapters': instance.totalChapters,
    };

AudiobookObject _$AudiobookObjectFromJson(Map<String, dynamic> json) =>
    AudiobookObject(
      chapters: json['chapters'] as Object,
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => AuthorObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      copyrights: (json['copyrights'] as List<dynamic>?)
              ?.map((e) => CopyrightObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      description: json['description'] as String,
      htmlDescription: json['html_description'] as String,
      edition: json['edition'] as String?,
      explicit: json['explicit'] as bool,
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      mediaType: json['media_type'] as String,
      name: json['name'] as String,
      narrators: (json['narrators'] as List<dynamic>?)
              ?.map((e) => NarratorObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      publisher: json['publisher'] as String,
      type: audiobookObjectTypeFromJson(json['type']),
      uri: json['uri'] as String,
      totalChapters: json['total_chapters'] as int,
    );

Map<String, dynamic> _$AudiobookObjectToJson(AudiobookObject instance) =>
    <String, dynamic>{
      'chapters': instance.chapters,
      'authors': instance.authors.map((e) => e.toJson()).toList(),
      'available_markets': instance.availableMarkets,
      'copyrights': instance.copyrights.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'html_description': instance.htmlDescription,
      'edition': instance.edition,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'languages': instance.languages,
      'media_type': instance.mediaType,
      'name': instance.name,
      'narrators': instance.narrators.map((e) => e.toJson()).toList(),
      'publisher': instance.publisher,
      'type': audiobookObjectTypeToJson(instance.type),
      'uri': instance.uri,
      'total_chapters': instance.totalChapters,
    };

SimplifiedAudiobookObject _$SimplifiedAudiobookObjectFromJson(
        Map<String, dynamic> json) =>
    SimplifiedAudiobookObject(
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => AuthorObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      copyrights: (json['copyrights'] as List<dynamic>?)
              ?.map((e) => CopyrightObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      description: json['description'] as String,
      htmlDescription: json['html_description'] as String,
      edition: json['edition'] as String?,
      explicit: json['explicit'] as bool,
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      mediaType: json['media_type'] as String,
      name: json['name'] as String,
      narrators: (json['narrators'] as List<dynamic>?)
              ?.map((e) => NarratorObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      publisher: json['publisher'] as String,
      type: simplifiedAudiobookObjectTypeFromJson(json['type']),
      uri: json['uri'] as String,
      totalChapters: json['total_chapters'] as int,
    );

Map<String, dynamic> _$SimplifiedAudiobookObjectToJson(
        SimplifiedAudiobookObject instance) =>
    <String, dynamic>{
      'authors': instance.authors.map((e) => e.toJson()).toList(),
      'available_markets': instance.availableMarkets,
      'copyrights': instance.copyrights.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'html_description': instance.htmlDescription,
      'edition': instance.edition,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'languages': instance.languages,
      'media_type': instance.mediaType,
      'name': instance.name,
      'narrators': instance.narrators.map((e) => e.toJson()).toList(),
      'publisher': instance.publisher,
      'type': simplifiedAudiobookObjectTypeToJson(instance.type),
      'uri': instance.uri,
      'total_chapters': instance.totalChapters,
    };

AlbumBase _$AlbumBaseFromJson(Map<String, dynamic> json) => AlbumBase(
      albumType: albumBaseAlbumTypeFromJson(json['album_type']),
      totalTracks: json['total_tracks'] as int,
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      releaseDatePrecision:
          albumBaseReleaseDatePrecisionFromJson(json['release_date_precision']),
      restrictions: json['restrictions'] == null
          ? null
          : AlbumRestrictionObject.fromJson(
              json['restrictions'] as Map<String, dynamic>),
      type: albumBaseTypeFromJson(json['type']),
      uri: json['uri'] as String,
      copyrights: (json['copyrights'] as List<dynamic>?)
              ?.map((e) => CopyrightObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIdObject.fromJson(
              json['external_ids'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      label: json['label'] as String?,
      popularity: json['popularity'] as int?,
    );

Map<String, dynamic> _$AlbumBaseToJson(AlbumBase instance) => <String, dynamic>{
      'album_type': albumBaseAlbumTypeToJson(instance.albumType),
      'total_tracks': instance.totalTracks,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision':
          albumBaseReleaseDatePrecisionToJson(instance.releaseDatePrecision),
      'restrictions': instance.restrictions?.toJson(),
      'type': albumBaseTypeToJson(instance.type),
      'uri': instance.uri,
      'copyrights': instance.copyrights?.map((e) => e.toJson()).toList(),
      'external_ids': instance.externalIds?.toJson(),
      'genres': instance.genres,
      'label': instance.label,
      'popularity': instance.popularity,
    };

SimplifiedAlbumObject _$SimplifiedAlbumObjectFromJson(
        Map<String, dynamic> json) =>
    SimplifiedAlbumObject(
      albumGroup: simplifiedAlbumObjectAlbumGroupFromJson(json['album_group']),
      artists: (json['artists'] as List<dynamic>?)
              ?.map((e) =>
                  SimplifiedArtistObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      albumType: simplifiedAlbumObjectAlbumTypeFromJson(json['album_type']),
      totalTracks: json['total_tracks'] as int,
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      releaseDatePrecision: simplifiedAlbumObjectReleaseDatePrecisionFromJson(
          json['release_date_precision']),
      restrictions: json['restrictions'] == null
          ? null
          : AlbumRestrictionObject.fromJson(
              json['restrictions'] as Map<String, dynamic>),
      type: simplifiedAlbumObjectTypeFromJson(json['type']),
      uri: json['uri'] as String,
      copyrights: (json['copyrights'] as List<dynamic>?)
              ?.map((e) => CopyrightObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIdObject.fromJson(
              json['external_ids'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      label: json['label'] as String?,
      popularity: json['popularity'] as int?,
    );

Map<String, dynamic> _$SimplifiedAlbumObjectToJson(
        SimplifiedAlbumObject instance) =>
    <String, dynamic>{
      'album_group': simplifiedAlbumObjectAlbumGroupToJson(instance.albumGroup),
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'album_type': simplifiedAlbumObjectAlbumTypeToJson(instance.albumType),
      'total_tracks': instance.totalTracks,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': simplifiedAlbumObjectReleaseDatePrecisionToJson(
          instance.releaseDatePrecision),
      'restrictions': instance.restrictions?.toJson(),
      'type': simplifiedAlbumObjectTypeToJson(instance.type),
      'uri': instance.uri,
      'copyrights': instance.copyrights?.map((e) => e.toJson()).toList(),
      'external_ids': instance.externalIds?.toJson(),
      'genres': instance.genres,
      'label': instance.label,
      'popularity': instance.popularity,
    };

ChapterObject _$ChapterObjectFromJson(Map<String, dynamic> json) =>
    ChapterObject(
      audiobook: SimplifiedAudiobookObject.fromJson(
          json['audiobook'] as Map<String, dynamic>),
      audioPreviewUrl: json['audio_preview_url'] as String,
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      chapterNumber: json['chapter_number'] as int,
      description: json['description'] as String,
      htmlDescription: json['html_description'] as String,
      durationMs: json['duration_ms'] as int,
      explicit: json['explicit'] as bool,
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isPlayable: json['is_playable'] as bool,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      releaseDatePrecision: chapterObjectReleaseDatePrecisionFromJson(
          json['release_date_precision']),
      resumePoint: ResumePointObject.fromJson(
          json['resume_point'] as Map<String, dynamic>),
      type: chapterObjectTypeFromJson(json['type']),
      uri: json['uri'] as String,
      restrictions: json['restrictions'] == null
          ? null
          : ChapterRestrictionObject.fromJson(
              json['restrictions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChapterObjectToJson(ChapterObject instance) =>
    <String, dynamic>{
      'audiobook': instance.audiobook.toJson(),
      'audio_preview_url': instance.audioPreviewUrl,
      'available_markets': instance.availableMarkets,
      'chapter_number': instance.chapterNumber,
      'description': instance.description,
      'html_description': instance.htmlDescription,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'is_playable': instance.isPlayable,
      'languages': instance.languages,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': chapterObjectReleaseDatePrecisionToJson(
          instance.releaseDatePrecision),
      'resume_point': instance.resumePoint.toJson(),
      'type': chapterObjectTypeToJson(instance.type),
      'uri': instance.uri,
      'restrictions': instance.restrictions?.toJson(),
    };

SimplifiedChapterObject _$SimplifiedChapterObjectFromJson(
        Map<String, dynamic> json) =>
    SimplifiedChapterObject(
      audioPreviewUrl: json['audio_preview_url'] as String,
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      chapterNumber: json['chapter_number'] as int,
      description: json['description'] as String,
      htmlDescription: json['html_description'] as String,
      durationMs: json['duration_ms'] as int,
      explicit: json['explicit'] as bool,
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isPlayable: json['is_playable'] as bool,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      releaseDatePrecision: simplifiedChapterObjectReleaseDatePrecisionFromJson(
          json['release_date_precision']),
      resumePoint: ResumePointObject.fromJson(
          json['resume_point'] as Map<String, dynamic>),
      type: simplifiedChapterObjectTypeFromJson(json['type']),
      uri: json['uri'] as String,
      restrictions: json['restrictions'] == null
          ? null
          : ChapterRestrictionObject.fromJson(
              json['restrictions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SimplifiedChapterObjectToJson(
        SimplifiedChapterObject instance) =>
    <String, dynamic>{
      'audio_preview_url': instance.audioPreviewUrl,
      'available_markets': instance.availableMarkets,
      'chapter_number': instance.chapterNumber,
      'description': instance.description,
      'html_description': instance.htmlDescription,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'is_playable': instance.isPlayable,
      'languages': instance.languages,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision':
          simplifiedChapterObjectReleaseDatePrecisionToJson(
              instance.releaseDatePrecision),
      'resume_point': instance.resumePoint.toJson(),
      'type': simplifiedChapterObjectTypeToJson(instance.type),
      'uri': instance.uri,
      'restrictions': instance.restrictions?.toJson(),
    };

ChapterBase _$ChapterBaseFromJson(Map<String, dynamic> json) => ChapterBase(
      audioPreviewUrl: json['audio_preview_url'] as String,
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      chapterNumber: json['chapter_number'] as int,
      description: json['description'] as String,
      htmlDescription: json['html_description'] as String,
      durationMs: json['duration_ms'] as int,
      explicit: json['explicit'] as bool,
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isPlayable: json['is_playable'] as bool,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      releaseDatePrecision: chapterBaseReleaseDatePrecisionFromJson(
          json['release_date_precision']),
      resumePoint: ResumePointObject.fromJson(
          json['resume_point'] as Map<String, dynamic>),
      type: chapterBaseTypeFromJson(json['type']),
      uri: json['uri'] as String,
      restrictions: json['restrictions'] == null
          ? null
          : ChapterRestrictionObject.fromJson(
              json['restrictions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChapterBaseToJson(ChapterBase instance) =>
    <String, dynamic>{
      'audio_preview_url': instance.audioPreviewUrl,
      'available_markets': instance.availableMarkets,
      'chapter_number': instance.chapterNumber,
      'description': instance.description,
      'html_description': instance.htmlDescription,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'is_playable': instance.isPlayable,
      'languages': instance.languages,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision':
          chapterBaseReleaseDatePrecisionToJson(instance.releaseDatePrecision),
      'resume_point': instance.resumePoint.toJson(),
      'type': chapterBaseTypeToJson(instance.type),
      'uri': instance.uri,
      'restrictions': instance.restrictions?.toJson(),
    };

AlbumObject _$AlbumObjectFromJson(Map<String, dynamic> json) => AlbumObject(
      artists: (json['artists'] as List<dynamic>?)
              ?.map((e) =>
                  SimplifiedArtistObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      tracks: json['tracks'] == null
          ? null
          : PagingSimplifiedTrackObject.fromJson(
              json['tracks'] as Map<String, dynamic>),
      popularity: json['popularity'] as int?,
      label: json['label'] as String?,
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIdObject.fromJson(
              json['external_ids'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      copyrights: (json['copyrights'] as List<dynamic>?)
              ?.map((e) => CopyrightObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      albumType: albumObjectAlbumTypeFromJson(json['album_type']),
      totalTracks: json['total_tracks'] as int,
      availableMarkets: (json['available_markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      externalUrls: ExternalUrlObject.fromJson(
          json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      releaseDatePrecision: albumObjectReleaseDatePrecisionFromJson(
          json['release_date_precision']),
      restrictions: json['restrictions'] == null
          ? null
          : AlbumRestrictionObject.fromJson(
              json['restrictions'] as Map<String, dynamic>),
      type: albumObjectTypeFromJson(json['type']),
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$AlbumObjectToJson(AlbumObject instance) =>
    <String, dynamic>{
      'artists': instance.artists?.map((e) => e.toJson()).toList(),
      'tracks': instance.tracks?.toJson(),
      'popularity': instance.popularity,
      'label': instance.label,
      'external_ids': instance.externalIds?.toJson(),
      'genres': instance.genres,
      'copyrights': instance.copyrights?.map((e) => e.toJson()).toList(),
      'album_type': albumObjectAlbumTypeToJson(instance.albumType),
      'total_tracks': instance.totalTracks,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision':
          albumObjectReleaseDatePrecisionToJson(instance.releaseDatePrecision),
      'restrictions': instance.restrictions?.toJson(),
      'type': albumObjectTypeToJson(instance.type),
      'uri': instance.uri,
    };

ContextObject _$ContextObjectFromJson(Map<String, dynamic> json) =>
    ContextObject(
      type: json['type'] as String?,
      href: json['href'] as String?,
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlObject.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$ContextObjectToJson(ContextObject instance) =>
    <String, dynamic>{
      'type': instance.type,
      'href': instance.href,
      'external_urls': instance.externalUrls?.toJson(),
      'uri': instance.uri,
    };

CopyrightObject _$CopyrightObjectFromJson(Map<String, dynamic> json) =>
    CopyrightObject(
      text: json['text'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$CopyrightObjectToJson(CopyrightObject instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.type,
    };

AuthorObject _$AuthorObjectFromJson(Map<String, dynamic> json) => AuthorObject(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$AuthorObjectToJson(AuthorObject instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

NarratorObject _$NarratorObjectFromJson(Map<String, dynamic> json) =>
    NarratorObject(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$NarratorObjectToJson(NarratorObject instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

ExternalIdObject _$ExternalIdObjectFromJson(Map<String, dynamic> json) =>
    ExternalIdObject(
      isrc: json['isrc'] as String?,
      ean: json['ean'] as String?,
      upc: json['upc'] as String?,
    );

Map<String, dynamic> _$ExternalIdObjectToJson(ExternalIdObject instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
      'ean': instance.ean,
      'upc': instance.upc,
    };

ExternalUrlObject _$ExternalUrlObjectFromJson(Map<String, dynamic> json) =>
    ExternalUrlObject(
      spotify: json['spotify'] as String?,
    );

Map<String, dynamic> _$ExternalUrlObjectToJson(ExternalUrlObject instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

FollowersObject _$FollowersObjectFromJson(Map<String, dynamic> json) =>
    FollowersObject(
      href: json['href'] as String?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$FollowersObjectToJson(FollowersObject instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

ImageObject _$ImageObjectFromJson(Map<String, dynamic> json) => ImageObject(
      url: json['url'] as String,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$ImageObjectToJson(ImageObject instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

ExplicitContentSettingsObject _$ExplicitContentSettingsObjectFromJson(
        Map<String, dynamic> json) =>
    ExplicitContentSettingsObject(
      filterEnabled: json['filter_enabled'] as bool?,
      filterLocked: json['filter_locked'] as bool?,
    );

Map<String, dynamic> _$ExplicitContentSettingsObjectToJson(
        ExplicitContentSettingsObject instance) =>
    <String, dynamic>{
      'filter_enabled': instance.filterEnabled,
      'filter_locked': instance.filterLocked,
    };

SavedAudiobookObject _$SavedAudiobookObjectFromJson(
        Map<String, dynamic> json) =>
    SavedAudiobookObject(
      addedAt: json['added_at'] == null
          ? null
          : DateTime.parse(json['added_at'] as String),
      album: json['album'] == null
          ? null
          : AudiobookObject.fromJson(json['album'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SavedAudiobookObjectToJson(
        SavedAudiobookObject instance) =>
    <String, dynamic>{
      'added_at': instance.addedAt?.toIso8601String(),
      'album': instance.album?.toJson(),
    };

AudioAnalysisObject$Meta _$AudioAnalysisObject$MetaFromJson(
        Map<String, dynamic> json) =>
    AudioAnalysisObject$Meta(
      analyzerVersion: json['analyzer_version'] as String?,
      platform: json['platform'] as String?,
      detailedStatus: json['detailed_status'] as String?,
      statusCode: json['status_code'] as int?,
      timestamp: json['timestamp'] as int?,
      analysisTime: (json['analysis_time'] as num?)?.toDouble(),
      inputProcess: json['input_process'] as String?,
    );

Map<String, dynamic> _$AudioAnalysisObject$MetaToJson(
        AudioAnalysisObject$Meta instance) =>
    <String, dynamic>{
      'analyzer_version': instance.analyzerVersion,
      'platform': instance.platform,
      'detailed_status': instance.detailedStatus,
      'status_code': instance.statusCode,
      'timestamp': instance.timestamp,
      'analysis_time': instance.analysisTime,
      'input_process': instance.inputProcess,
    };

AudioAnalysisObject$Track _$AudioAnalysisObject$TrackFromJson(
        Map<String, dynamic> json) =>
    AudioAnalysisObject$Track(
      numSamples: json['num_samples'] as int?,
      duration: (json['duration'] as num?)?.toDouble(),
      sampleMd5: json['sample_md5'] as String?,
      offsetSeconds: json['offset_seconds'] as int?,
      windowSeconds: json['window_seconds'] as int?,
      analysisSampleRate: json['analysis_sample_rate'] as int?,
      analysisChannels: json['analysis_channels'] as int?,
      endOfFadeIn: (json['end_of_fade_in'] as num?)?.toDouble(),
      startOfFadeOut: (json['start_of_fade_out'] as num?)?.toDouble(),
      loudness: json['loudness'] as num?,
      tempo: json['tempo'] as num?,
      tempoConfidence: (json['tempo_confidence'] as num?)?.toDouble(),
      timeSignature: json['time_signature'] as int?,
      timeSignatureConfidence:
          (json['time_signature_confidence'] as num?)?.toDouble(),
      key: json['key'] as int?,
      keyConfidence: (json['key_confidence'] as num?)?.toDouble(),
      mode: json['mode'] as int?,
      modeConfidence: (json['mode_confidence'] as num?)?.toDouble(),
      codestring: json['codestring'] as String?,
      codeVersion: (json['code_version'] as num?)?.toDouble(),
      echoprintstring: json['echoprintstring'] as String?,
      echoprintVersion: (json['echoprint_version'] as num?)?.toDouble(),
      synchstring: json['synchstring'] as String?,
      synchVersion: (json['synch_version'] as num?)?.toDouble(),
      rhythmstring: json['rhythmstring'] as String?,
      rhythmVersion: (json['rhythm_version'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AudioAnalysisObject$TrackToJson(
        AudioAnalysisObject$Track instance) =>
    <String, dynamic>{
      'num_samples': instance.numSamples,
      'duration': instance.duration,
      'sample_md5': instance.sampleMd5,
      'offset_seconds': instance.offsetSeconds,
      'window_seconds': instance.windowSeconds,
      'analysis_sample_rate': instance.analysisSampleRate,
      'analysis_channels': instance.analysisChannels,
      'end_of_fade_in': instance.endOfFadeIn,
      'start_of_fade_out': instance.startOfFadeOut,
      'loudness': instance.loudness,
      'tempo': instance.tempo,
      'tempo_confidence': instance.tempoConfidence,
      'time_signature': instance.timeSignature,
      'time_signature_confidence': instance.timeSignatureConfidence,
      'key': instance.key,
      'key_confidence': instance.keyConfidence,
      'mode': instance.mode,
      'mode_confidence': instance.modeConfidence,
      'codestring': instance.codestring,
      'code_version': instance.codeVersion,
      'echoprintstring': instance.echoprintstring,
      'echoprint_version': instance.echoprintVersion,
      'synchstring': instance.synchstring,
      'synch_version': instance.synchVersion,
      'rhythmstring': instance.rhythmstring,
      'rhythm_version': instance.rhythmVersion,
    };

Unauthorized _$UnauthorizedFromJson(Map<String, dynamic> json) => Unauthorized(
      error: ErrorObject.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UnauthorizedToJson(Unauthorized instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
    };

Forbidden _$ForbiddenFromJson(Map<String, dynamic> json) => Forbidden(
      error: ErrorObject.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForbiddenToJson(Forbidden instance) => <String, dynamic>{
      'error': instance.error.toJson(),
    };

TooManyRequests _$TooManyRequestsFromJson(Map<String, dynamic> json) =>
    TooManyRequests(
      error: ErrorObject.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TooManyRequestsToJson(TooManyRequests instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
    };

ManyAlbums _$ManyAlbumsFromJson(Map<String, dynamic> json) => ManyAlbums(
      albums: (json['albums'] as List<dynamic>?)
              ?.map((e) => AlbumObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ManyAlbumsToJson(ManyAlbums instance) =>
    <String, dynamic>{
      'albums': instance.albums.map((e) => e.toJson()).toList(),
    };

ManyAudiobooks _$ManyAudiobooksFromJson(Map<String, dynamic> json) =>
    ManyAudiobooks(
      audiobooks: (json['audiobooks'] as List<dynamic>?)
              ?.map((e) => AudiobookObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ManyAudiobooksToJson(ManyAudiobooks instance) =>
    <String, dynamic>{
      'audiobooks': instance.audiobooks.map((e) => e.toJson()).toList(),
    };

ManyChapters _$ManyChaptersFromJson(Map<String, dynamic> json) => ManyChapters(
      chapters: (json['chapters'] as List<dynamic>?)
              ?.map((e) => ChapterObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ManyChaptersToJson(ManyChapters instance) =>
    <String, dynamic>{
      'chapters': instance.chapters.map((e) => e.toJson()).toList(),
    };

PagedAlbums _$PagedAlbumsFromJson(Map<String, dynamic> json) => PagedAlbums(
      albums: PagingSimplifiedAlbumObject.fromJson(
          json['albums'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PagedAlbumsToJson(PagedAlbums instance) =>
    <String, dynamic>{
      'albums': instance.albums.toJson(),
    };

PagedCategories _$PagedCategoriesFromJson(Map<String, dynamic> json) =>
    PagedCategories(
      categories: json['categories'],
    );

Map<String, dynamic> _$PagedCategoriesToJson(PagedCategories instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

CursorPagedArtists _$CursorPagedArtistsFromJson(Map<String, dynamic> json) =>
    CursorPagedArtists(
      artists: CursorPagingSimplifiedArtistObject.fromJson(
          json['artists'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CursorPagedArtistsToJson(CursorPagedArtists instance) =>
    <String, dynamic>{
      'artists': instance.artists.toJson(),
    };

ManyArtists _$ManyArtistsFromJson(Map<String, dynamic> json) => ManyArtists(
      artists: (json['artists'] as List<dynamic>?)
              ?.map((e) => ArtistObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ManyArtistsToJson(ManyArtists instance) =>
    <String, dynamic>{
      'artists': instance.artists.map((e) => e.toJson()).toList(),
    };

ManyAudioFeatures _$ManyAudioFeaturesFromJson(Map<String, dynamic> json) =>
    ManyAudioFeatures(
      audioFeatures: (json['audio_features'] as List<dynamic>?)
              ?.map((e) =>
                  AudioFeaturesObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ManyAudioFeaturesToJson(ManyAudioFeatures instance) =>
    <String, dynamic>{
      'audio_features': instance.audioFeatures.map((e) => e.toJson()).toList(),
    };

ManyEpisodes _$ManyEpisodesFromJson(Map<String, dynamic> json) => ManyEpisodes(
      episodes: (json['episodes'] as List<dynamic>?)
              ?.map((e) => EpisodeObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ManyEpisodesToJson(ManyEpisodes instance) =>
    <String, dynamic>{
      'episodes': instance.episodes.map((e) => e.toJson()).toList(),
    };

ManyGenres _$ManyGenresFromJson(Map<String, dynamic> json) => ManyGenres(
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ManyGenresToJson(ManyGenres instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };

ManyTracks _$ManyTracksFromJson(Map<String, dynamic> json) => ManyTracks(
      tracks: (json['tracks'] as List<dynamic>?)
              ?.map((e) => TrackObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ManyTracksToJson(ManyTracks instance) =>
    <String, dynamic>{
      'tracks': instance.tracks.map((e) => e.toJson()).toList(),
    };

ManySimplifiedShows _$ManySimplifiedShowsFromJson(Map<String, dynamic> json) =>
    ManySimplifiedShows(
      shows: (json['shows'] as List<dynamic>?)
              ?.map((e) =>
                  SimplifiedShowObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ManySimplifiedShowsToJson(
        ManySimplifiedShows instance) =>
    <String, dynamic>{
      'shows': instance.shows.map((e) => e.toJson()).toList(),
    };

SearchItems _$SearchItemsFromJson(Map<String, dynamic> json) => SearchItems(
      tracks: json['tracks'] == null
          ? null
          : PagingTrackObject.fromJson(json['tracks'] as Map<String, dynamic>),
      artists: json['artists'] == null
          ? null
          : PagingArtistObject.fromJson(
              json['artists'] as Map<String, dynamic>),
      albums: json['albums'] == null
          ? null
          : PagingSimplifiedAlbumObject.fromJson(
              json['albums'] as Map<String, dynamic>),
      playlists: json['playlists'] == null
          ? null
          : PagingPlaylistObject.fromJson(
              json['playlists'] as Map<String, dynamic>),
      shows: json['shows'] == null
          ? null
          : PagingSimplifiedShowObject.fromJson(
              json['shows'] as Map<String, dynamic>),
      episodes: json['episodes'] == null
          ? null
          : PagingSimplifiedEpisodeObject.fromJson(
              json['episodes'] as Map<String, dynamic>),
      audiobooks: json['audiobooks'] == null
          ? null
          : PagingSimplifiedAudiobookObject.fromJson(
              json['audiobooks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchItemsToJson(SearchItems instance) =>
    <String, dynamic>{
      'tracks': instance.tracks?.toJson(),
      'artists': instance.artists?.toJson(),
      'albums': instance.albums?.toJson(),
      'playlists': instance.playlists?.toJson(),
      'shows': instance.shows?.toJson(),
      'episodes': instance.episodes?.toJson(),
      'audiobooks': instance.audiobooks?.toJson(),
    };

PlaylistSnapshotId _$PlaylistSnapshotIdFromJson(Map<String, dynamic> json) =>
    PlaylistSnapshotId(
      snapshotId: json['snapshot_id'] as String?,
    );

Map<String, dynamic> _$PlaylistSnapshotIdToJson(PlaylistSnapshotId instance) =>
    <String, dynamic>{
      'snapshot_id': instance.snapshotId,
    };

Markets _$MarketsFromJson(Map<String, dynamic> json) => Markets(
      markets: (json['markets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$MarketsToJson(Markets instance) => <String, dynamic>{
      'markets': instance.markets,
    };

PlaylistsPlaylistIdPut$RequestBody _$PlaylistsPlaylistIdPut$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    PlaylistsPlaylistIdPut$RequestBody(
      name: json['name'] as String?,
      public: json['public'] as bool?,
      collaborative: json['collaborative'] as bool?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$PlaylistsPlaylistIdPut$RequestBodyToJson(
        PlaylistsPlaylistIdPut$RequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'public': instance.public,
      'collaborative': instance.collaborative,
      'description': instance.description,
    };

PlaylistsPlaylistIdTracksPost$RequestBody
    _$PlaylistsPlaylistIdTracksPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        PlaylistsPlaylistIdTracksPost$RequestBody(
          uris: (json['uris'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          position: json['position'] as int?,
        );

Map<String, dynamic> _$PlaylistsPlaylistIdTracksPost$RequestBodyToJson(
        PlaylistsPlaylistIdTracksPost$RequestBody instance) =>
    <String, dynamic>{
      'uris': instance.uris,
      'position': instance.position,
    };

PlaylistsPlaylistIdTracksPut$RequestBody
    _$PlaylistsPlaylistIdTracksPut$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        PlaylistsPlaylistIdTracksPut$RequestBody(
          uris: (json['uris'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          rangeStart: json['range_start'] as int?,
          insertBefore: json['insert_before'] as int?,
          rangeLength: json['range_length'] as int?,
          snapshotId: json['snapshot_id'] as String?,
        );

Map<String, dynamic> _$PlaylistsPlaylistIdTracksPut$RequestBodyToJson(
        PlaylistsPlaylistIdTracksPut$RequestBody instance) =>
    <String, dynamic>{
      'uris': instance.uris,
      'range_start': instance.rangeStart,
      'insert_before': instance.insertBefore,
      'range_length': instance.rangeLength,
      'snapshot_id': instance.snapshotId,
    };

PlaylistsPlaylistIdTracksDelete$RequestBody
    _$PlaylistsPlaylistIdTracksDelete$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        PlaylistsPlaylistIdTracksDelete$RequestBody(
          tracks: (json['tracks'] as List<dynamic>?)
                  ?.map((e) => (e as List<dynamic>)
                      .map((e) =>
                          PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item
                              .fromJson(e as Map<String, dynamic>))
                      .toList())
                  .toList() ??
              [],
          snapshotId: json['snapshot_id'] as String?,
        );

Map<String, dynamic> _$PlaylistsPlaylistIdTracksDelete$RequestBodyToJson(
        PlaylistsPlaylistIdTracksDelete$RequestBody instance) =>
    <String, dynamic>{
      'tracks': instance.tracks
          .map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'snapshot_id': instance.snapshotId,
    };

MeAlbumsPut$RequestBody _$MeAlbumsPut$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    MeAlbumsPut$RequestBody(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$MeAlbumsPut$RequestBodyToJson(
        MeAlbumsPut$RequestBody instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

MeAlbumsDelete$RequestBody _$MeAlbumsDelete$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    MeAlbumsDelete$RequestBody(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$MeAlbumsDelete$RequestBodyToJson(
        MeAlbumsDelete$RequestBody instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

MeTracksPut$RequestBody _$MeTracksPut$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    MeTracksPut$RequestBody(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$MeTracksPut$RequestBodyToJson(
        MeTracksPut$RequestBody instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

MeTracksDelete$RequestBody _$MeTracksDelete$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    MeTracksDelete$RequestBody(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$MeTracksDelete$RequestBodyToJson(
        MeTracksDelete$RequestBody instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

MeEpisodesPut$RequestBody _$MeEpisodesPut$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    MeEpisodesPut$RequestBody(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$MeEpisodesPut$RequestBodyToJson(
        MeEpisodesPut$RequestBody instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

MeEpisodesDelete$RequestBody _$MeEpisodesDelete$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    MeEpisodesDelete$RequestBody(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$MeEpisodesDelete$RequestBodyToJson(
        MeEpisodesDelete$RequestBody instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

MeShowsPut$RequestBody _$MeShowsPut$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    MeShowsPut$RequestBody(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$MeShowsPut$RequestBodyToJson(
        MeShowsPut$RequestBody instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

MeShowsDelete$RequestBody _$MeShowsDelete$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    MeShowsDelete$RequestBody(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$MeShowsDelete$RequestBodyToJson(
        MeShowsDelete$RequestBody instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

UsersUserIdPlaylistsPost$RequestBody
    _$UsersUserIdPlaylistsPost$RequestBodyFromJson(Map<String, dynamic> json) =>
        UsersUserIdPlaylistsPost$RequestBody(
          name: json['name'] as String,
          public: json['public'] as bool?,
          collaborative: json['collaborative'] as bool?,
          description: json['description'] as String?,
        );

Map<String, dynamic> _$UsersUserIdPlaylistsPost$RequestBodyToJson(
        UsersUserIdPlaylistsPost$RequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'public': instance.public,
      'collaborative': instance.collaborative,
      'description': instance.description,
    };

PlaylistsPlaylistIdFollowersPut$RequestBody
    _$PlaylistsPlaylistIdFollowersPut$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        PlaylistsPlaylistIdFollowersPut$RequestBody(
          public: json['public'] as bool?,
        );

Map<String, dynamic> _$PlaylistsPlaylistIdFollowersPut$RequestBodyToJson(
        PlaylistsPlaylistIdFollowersPut$RequestBody instance) =>
    <String, dynamic>{
      'public': instance.public,
    };

MeFollowingPut$RequestBody _$MeFollowingPut$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    MeFollowingPut$RequestBody(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$MeFollowingPut$RequestBodyToJson(
        MeFollowingPut$RequestBody instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

MeFollowingDelete$RequestBody _$MeFollowingDelete$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    MeFollowingDelete$RequestBody(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$MeFollowingDelete$RequestBodyToJson(
        MeFollowingDelete$RequestBody instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

MePlayerPut$RequestBody _$MePlayerPut$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    MePlayerPut$RequestBody(
      deviceIds: (json['device_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      play: json['play'] as bool?,
    );

Map<String, dynamic> _$MePlayerPut$RequestBodyToJson(
        MePlayerPut$RequestBody instance) =>
    <String, dynamic>{
      'device_ids': instance.deviceIds,
      'play': instance.play,
    };

MePlayerPlayPut$RequestBody _$MePlayerPlayPut$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    MePlayerPlayPut$RequestBody(
      contextUri: json['context_uri'] as String?,
      uris:
          (json['uris'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      offset: json['offset'] as Map<String, dynamic>?,
      positionMs: json['position_ms'] as int?,
    );

Map<String, dynamic> _$MePlayerPlayPut$RequestBodyToJson(
        MePlayerPlayPut$RequestBody instance) =>
    <String, dynamic>{
      'context_uri': instance.contextUri,
      'uris': instance.uris,
      'offset': instance.offset,
      'position_ms': instance.positionMs,
    };

PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item
    _$PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$ItemFromJson(
            Map<String, dynamic> json) =>
        PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item(
          uri: json['uri'] as String?,
        );

Map<String, dynamic>
    _$PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$ItemToJson(
            PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item instance) =>
        <String, dynamic>{
          'uri': instance.uri,
        };
