// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SpotifyWeb.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$SpotifyWeb extends SpotifyWeb {
  _$SpotifyWeb([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SpotifyWeb;

  @override
  Future<Response<Object>> _albumsIdGet({
    required String? id,
    String? market,
  }) {
    final Uri $url = Uri.parse('/albums/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{'market': market};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<ManyAlbums>> _albumsGet({
    required String? ids,
    String? market,
  }) {
    final Uri $url = Uri.parse('/albums');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ids': ids,
      'market': market,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ManyAlbums, ManyAlbums>($request);
  }

  @override
  Future<Response<Object>> _albumsIdTracksGet({
    required String? id,
    String? market,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/albums/${id}/tracks');
    final Map<String, dynamic> $params = <String, dynamic>{
      'market': market,
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _artistsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/artists/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<ManyArtists>> _artistsGet({required String? ids}) {
    final Uri $url = Uri.parse('/artists');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ManyArtists, ManyArtists>($request);
  }

  @override
  Future<Response<Object>> _artistsIdAlbumsGet({
    required String? id,
    String? includeGroups,
    String? market,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/artists/${id}/albums');
    final Map<String, dynamic> $params = <String, dynamic>{
      'include_groups': includeGroups,
      'market': market,
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<ManyTracks>> _artistsIdTopTracksGet({
    required String? id,
    String? market,
  }) {
    final Uri $url = Uri.parse('/artists/${id}/top-tracks');
    final Map<String, dynamic> $params = <String, dynamic>{'market': market};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ManyTracks, ManyTracks>($request);
  }

  @override
  Future<Response<ManyArtists>> _artistsIdRelatedArtistsGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/artists/${id}/related-artists');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ManyArtists, ManyArtists>($request);
  }

  @override
  Future<Response<Object>> _showsIdGet({
    String? market,
    required String? id,
  }) {
    final Uri $url = Uri.parse('/shows/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{'market': market};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<ManySimplifiedShows>> _showsGet({
    String? market,
    required String? ids,
  }) {
    final Uri $url = Uri.parse('/shows');
    final Map<String, dynamic> $params = <String, dynamic>{
      'market': market,
      'ids': ids,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ManySimplifiedShows, ManySimplifiedShows>($request);
  }

  @override
  Future<Response<Object>> _showsIdEpisodesGet({
    required String? id,
    String? market,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/shows/${id}/episodes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'market': market,
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _episodesIdGet({
    required String? id,
    String? market,
  }) {
    final Uri $url = Uri.parse('/episodes/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{'market': market};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<ManyEpisodes>> _episodesGet({
    required String? ids,
    String? market,
  }) {
    final Uri $url = Uri.parse('/episodes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ids': ids,
      'market': market,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ManyEpisodes, ManyEpisodes>($request);
  }

  @override
  Future<Response<Object>> _audiobooksIdGet({
    required String? id,
    String? market,
  }) {
    final Uri $url = Uri.parse('/audiobooks/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{'market': market};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<ManyAudiobooks>> _audiobooksGet({
    required String? ids,
    String? market,
  }) {
    final Uri $url = Uri.parse('/audiobooks');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ids': ids,
      'market': market,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ManyAudiobooks, ManyAudiobooks>($request);
  }

  @override
  Future<Response<Object>> _audiobooksIdChaptersGet({
    required String? id,
    String? market,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/audiobooks/${id}/chapters');
    final Map<String, dynamic> $params = <String, dynamic>{
      'market': market,
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _meAudiobooksGet({
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/me/audiobooks');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _meAudiobooksPut({required String? ids}) {
    final Uri $url = Uri.parse('/me/audiobooks');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _meAudiobooksDelete({required String? ids}) {
    final Uri $url = Uri.parse('/me/audiobooks');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<Object>>> _meAudiobooksContainsGet(
      {required String? ids}) {
    final Uri $url = Uri.parse('/me/audiobooks/contains');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<Object>> _chaptersIdGet({
    required String? id,
    String? market,
  }) {
    final Uri $url = Uri.parse('/chapters/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{'market': market};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<ManyChapters>> _chaptersGet({
    required String? ids,
    String? market,
  }) {
    final Uri $url = Uri.parse('/chapters');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ids': ids,
      'market': market,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ManyChapters, ManyChapters>($request);
  }

  @override
  Future<Response<Object>> _tracksIdGet({
    required String? id,
    String? market,
  }) {
    final Uri $url = Uri.parse('/tracks/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{'market': market};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<ManyTracks>> _tracksGet({
    String? market,
    required String? ids,
  }) {
    final Uri $url = Uri.parse('/tracks');
    final Map<String, dynamic> $params = <String, dynamic>{
      'market': market,
      'ids': ids,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ManyTracks, ManyTracks>($request);
  }

  @override
  Future<Response<SearchItems>> _searchGet({
    required String? q,
    required List<String>? type,
    String? market,
    int? limit,
    int? offset,
    String? includeExternal,
  }) {
    final Uri $url = Uri.parse('/search');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'type': type,
      'market': market,
      'limit': limit,
      'offset': offset,
      'include_external': includeExternal,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<SearchItems, SearchItems>($request);
  }

  @override
  Future<Response<Object>> _meGet() {
    final Uri $url = Uri.parse('/me');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _playlistsPlaylistIdGet({
    required String? playlistId,
    String? market,
    String? fields,
    String? additionalTypes,
  }) {
    final Uri $url = Uri.parse('/playlists/${playlistId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'market': market,
      'fields': fields,
      'additional_types': additionalTypes,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _playlistsPlaylistIdPut({
    required String? playlistId,
    required PlaylistsPlaylistIdPut$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/playlists/${playlistId}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Object>> _playlistsPlaylistIdTracksGet({
    required String? playlistId,
    String? market,
    String? fields,
    int? limit,
    int? offset,
    String? additionalTypes,
  }) {
    final Uri $url = Uri.parse('/playlists/${playlistId}/tracks');
    final Map<String, dynamic> $params = <String, dynamic>{
      'market': market,
      'fields': fields,
      'limit': limit,
      'offset': offset,
      'additional_types': additionalTypes,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<PlaylistSnapshotId>> _playlistsPlaylistIdTracksPost({
    required String? playlistId,
    int? position,
    String? uris,
    required PlaylistsPlaylistIdTracksPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/playlists/${playlistId}/tracks');
    final Map<String, dynamic> $params = <String, dynamic>{
      'position': position,
      'uris': uris,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<PlaylistSnapshotId, PlaylistSnapshotId>($request);
  }

  @override
  Future<Response<PlaylistSnapshotId>> _playlistsPlaylistIdTracksPut({
    required String? playlistId,
    String? uris,
    required PlaylistsPlaylistIdTracksPut$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/playlists/${playlistId}/tracks');
    final Map<String, dynamic> $params = <String, dynamic>{'uris': uris};
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<PlaylistSnapshotId, PlaylistSnapshotId>($request);
  }

  @override
  Future<Response<PlaylistSnapshotId>> _playlistsPlaylistIdTracksDelete({
    required String? playlistId,
    required PlaylistsPlaylistIdTracksDelete$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/playlists/${playlistId}/tracks');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<PlaylistSnapshotId, PlaylistSnapshotId>($request);
  }

  @override
  Future<Response<Object>> _mePlaylistsGet({
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/me/playlists');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _meAlbumsGet({
    int? limit,
    int? offset,
    String? market,
  }) {
    final Uri $url = Uri.parse('/me/albums');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'market': market,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _meAlbumsPut({
    required String? ids,
    required MeAlbumsPut$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/me/albums');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _meAlbumsDelete({
    required String? ids,
    required MeAlbumsDelete$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/me/albums');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<Object>>> _meAlbumsContainsGet({required String? ids}) {
    final Uri $url = Uri.parse('/me/albums/contains');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<Object>> _meTracksGet({
    String? market,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/me/tracks');
    final Map<String, dynamic> $params = <String, dynamic>{
      'market': market,
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _meTracksPut({
    required String? ids,
    required MeTracksPut$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/me/tracks');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _meTracksDelete({
    required String? ids,
    required MeTracksDelete$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/me/tracks');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<Object>>> _meTracksContainsGet({required String? ids}) {
    final Uri $url = Uri.parse('/me/tracks/contains');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<Object>> _meEpisodesGet({
    String? market,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/me/episodes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'market': market,
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _meEpisodesPut({
    required String? ids,
    required MeEpisodesPut$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/me/episodes');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _meEpisodesDelete({
    required String? ids,
    required MeEpisodesDelete$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/me/episodes');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<Object>>> _meEpisodesContainsGet(
      {required String? ids}) {
    final Uri $url = Uri.parse('/me/episodes/contains');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<Object>> _meShowsGet({
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/me/shows');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _meShowsPut({
    required String? ids,
    required MeShowsPut$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/me/shows');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _meShowsDelete({
    required String? ids,
    String? market,
    required MeShowsDelete$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/me/shows');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ids': ids,
      'market': market,
    };
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<Object>>> _meShowsContainsGet({required String? ids}) {
    final Uri $url = Uri.parse('/me/shows/contains');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<Object>> _usersUserIdGet({required String? userId}) {
    final Uri $url = Uri.parse('/users/${userId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _usersUserIdPlaylistsGet({
    required String? userId,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/users/${userId}/playlists');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _usersUserIdPlaylistsPost({
    required String? userId,
    required UsersUserIdPlaylistsPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/users/${userId}/playlists');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _playlistsPlaylistIdFollowersPut({
    required String? playlistId,
    required PlaylistsPlaylistIdFollowersPut$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/playlists/${playlistId}/followers');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _playlistsPlaylistIdFollowersDelete(
      {required String? playlistId}) {
    final Uri $url = Uri.parse('/playlists/${playlistId}/followers');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Object>> _browseFeaturedPlaylistsGet({
    String? country,
    String? locale,
    String? timestamp,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/browse/featured-playlists');
    final Map<String, dynamic> $params = <String, dynamic>{
      'country': country,
      'locale': locale,
      'timestamp': timestamp,
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<PagedCategories>> _browseCategoriesGet({
    String? country,
    String? locale,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/browse/categories');
    final Map<String, dynamic> $params = <String, dynamic>{
      'country': country,
      'locale': locale,
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PagedCategories, PagedCategories>($request);
  }

  @override
  Future<Response<Object>> _browseCategoriesCategoryIdGet({
    required String? categoryId,
    String? country,
    String? locale,
  }) {
    final Uri $url = Uri.parse('/browse/categories/${categoryId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'country': country,
      'locale': locale,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _browseCategoriesCategoryIdPlaylistsGet({
    required String? categoryId,
    String? country,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/browse/categories/${categoryId}/playlists');
    final Map<String, dynamic> $params = <String, dynamic>{
      'country': country,
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<ImageObject>>> _playlistsPlaylistIdImagesGet(
      {required String? playlistId}) {
    final Uri $url = Uri.parse('/playlists/${playlistId}/images');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ImageObject>, ImageObject>($request);
  }

  @override
  Future<Response<dynamic>> _playlistsPlaylistIdImagesPut({
    required String? playlistId,
    required String? body,
  }) {
    final Uri $url = Uri.parse('/playlists/${playlistId}/images');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PagedAlbums>> _browseNewReleasesGet({
    String? country,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/browse/new-releases');
    final Map<String, dynamic> $params = <String, dynamic>{
      'country': country,
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PagedAlbums, PagedAlbums>($request);
  }

  @override
  Future<Response<CursorPagedArtists>> _meFollowingGet({
    required String? type,
    String? after,
    int? limit,
  }) {
    final Uri $url = Uri.parse('/me/following');
    final Map<String, dynamic> $params = <String, dynamic>{
      'type': type,
      'after': after,
      'limit': limit,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<CursorPagedArtists, CursorPagedArtists>($request);
  }

  @override
  Future<Response<dynamic>> _meFollowingPut({
    required String? type,
    required String? ids,
    required MeFollowingPut$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/me/following');
    final Map<String, dynamic> $params = <String, dynamic>{
      'type': type,
      'ids': ids,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _meFollowingDelete({
    required String? type,
    required String? ids,
    required MeFollowingDelete$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/me/following');
    final Map<String, dynamic> $params = <String, dynamic>{
      'type': type,
      'ids': ids,
    };
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<Object>>> _meFollowingContainsGet({
    required String? type,
    required String? ids,
  }) {
    final Uri $url = Uri.parse('/me/following/contains');
    final Map<String, dynamic> $params = <String, dynamic>{
      'type': type,
      'ids': ids,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<List<Object>>> _playlistsPlaylistIdFollowersContainsGet({
    required String? playlistId,
    required String? ids,
  }) {
    final Uri $url = Uri.parse('/playlists/${playlistId}/followers/contains');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<ManyAudioFeatures>> _audioFeaturesGet(
      {required String? ids}) {
    final Uri $url = Uri.parse('/audio-features');
    final Map<String, dynamic> $params = <String, dynamic>{'ids': ids};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ManyAudioFeatures, ManyAudioFeatures>($request);
  }

  @override
  Future<Response<Object>> _audioFeaturesIdGet({required String? id}) {
    final Uri $url = Uri.parse('/audio-features/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _audioAnalysisIdGet({required String? id}) {
    final Uri $url = Uri.parse('/audio-analysis/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _recommendationsGet({
    int? limit,
    String? market,
    String? seedArtists,
    String? seedGenres,
    String? seedTracks,
    num? minAcousticness,
    num? maxAcousticness,
    num? targetAcousticness,
    num? minDanceability,
    num? maxDanceability,
    num? targetDanceability,
    int? minDurationMs,
    int? maxDurationMs,
    int? targetDurationMs,
    num? minEnergy,
    num? maxEnergy,
    num? targetEnergy,
    num? minInstrumentalness,
    num? maxInstrumentalness,
    num? targetInstrumentalness,
    int? minKey,
    int? maxKey,
    int? targetKey,
    num? minLiveness,
    num? maxLiveness,
    num? targetLiveness,
    num? minLoudness,
    num? maxLoudness,
    num? targetLoudness,
    int? minMode,
    int? maxMode,
    int? targetMode,
    int? minPopularity,
    int? maxPopularity,
    int? targetPopularity,
    num? minSpeechiness,
    num? maxSpeechiness,
    num? targetSpeechiness,
    num? minTempo,
    num? maxTempo,
    num? targetTempo,
    int? minTimeSignature,
    int? maxTimeSignature,
    int? targetTimeSignature,
    num? minValence,
    num? maxValence,
    num? targetValence,
  }) {
    final Uri $url = Uri.parse('/recommendations');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'market': market,
      'seed_artists': seedArtists,
      'seed_genres': seedGenres,
      'seed_tracks': seedTracks,
      'min_acousticness': minAcousticness,
      'max_acousticness': maxAcousticness,
      'target_acousticness': targetAcousticness,
      'min_danceability': minDanceability,
      'max_danceability': maxDanceability,
      'target_danceability': targetDanceability,
      'min_duration_ms': minDurationMs,
      'max_duration_ms': maxDurationMs,
      'target_duration_ms': targetDurationMs,
      'min_energy': minEnergy,
      'max_energy': maxEnergy,
      'target_energy': targetEnergy,
      'min_instrumentalness': minInstrumentalness,
      'max_instrumentalness': maxInstrumentalness,
      'target_instrumentalness': targetInstrumentalness,
      'min_key': minKey,
      'max_key': maxKey,
      'target_key': targetKey,
      'min_liveness': minLiveness,
      'max_liveness': maxLiveness,
      'target_liveness': targetLiveness,
      'min_loudness': minLoudness,
      'max_loudness': maxLoudness,
      'target_loudness': targetLoudness,
      'min_mode': minMode,
      'max_mode': maxMode,
      'target_mode': targetMode,
      'min_popularity': minPopularity,
      'max_popularity': maxPopularity,
      'target_popularity': targetPopularity,
      'min_speechiness': minSpeechiness,
      'max_speechiness': maxSpeechiness,
      'target_speechiness': targetSpeechiness,
      'min_tempo': minTempo,
      'max_tempo': maxTempo,
      'target_tempo': targetTempo,
      'min_time_signature': minTimeSignature,
      'max_time_signature': maxTimeSignature,
      'target_time_signature': targetTimeSignature,
      'min_valence': minValence,
      'max_valence': maxValence,
      'target_valence': targetValence,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<ManyGenres>> _recommendationsAvailableGenreSeedsGet() {
    final Uri $url = Uri.parse('/recommendations/available-genre-seeds');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ManyGenres, ManyGenres>($request);
  }

  @override
  Future<Response<Object>> _mePlayerGet({
    String? market,
    String? additionalTypes,
  }) {
    final Uri $url = Uri.parse('/me/player');
    final Map<String, dynamic> $params = <String, dynamic>{
      'market': market,
      'additional_types': additionalTypes,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _mePlayerPut(
      {required MePlayerPut$RequestBody? body}) {
    final Uri $url = Uri.parse('/me/player');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Object>> _mePlayerDevicesGet() {
    final Uri $url = Uri.parse('/me/player/devices');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _mePlayerCurrentlyPlayingGet({
    String? market,
    String? additionalTypes,
  }) {
    final Uri $url = Uri.parse('/me/player/currently-playing');
    final Map<String, dynamic> $params = <String, dynamic>{
      'market': market,
      'additional_types': additionalTypes,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _mePlayerPlayPut({
    String? deviceId,
    required MePlayerPlayPut$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/me/player/play');
    final Map<String, dynamic> $params = <String, dynamic>{
      'device_id': deviceId
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _mePlayerPausePut({String? deviceId}) {
    final Uri $url = Uri.parse('/me/player/pause');
    final Map<String, dynamic> $params = <String, dynamic>{
      'device_id': deviceId
    };
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _mePlayerNextPost({String? deviceId}) {
    final Uri $url = Uri.parse('/me/player/next');
    final Map<String, dynamic> $params = <String, dynamic>{
      'device_id': deviceId
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _mePlayerPreviousPost({String? deviceId}) {
    final Uri $url = Uri.parse('/me/player/previous');
    final Map<String, dynamic> $params = <String, dynamic>{
      'device_id': deviceId
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _mePlayerSeekPut({
    required int? positionMs,
    String? deviceId,
  }) {
    final Uri $url = Uri.parse('/me/player/seek');
    final Map<String, dynamic> $params = <String, dynamic>{
      'position_ms': positionMs,
      'device_id': deviceId,
    };
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _mePlayerRepeatPut({
    required String? state,
    String? deviceId,
  }) {
    final Uri $url = Uri.parse('/me/player/repeat');
    final Map<String, dynamic> $params = <String, dynamic>{
      'state': state,
      'device_id': deviceId,
    };
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _mePlayerVolumePut({
    required int? volumePercent,
    String? deviceId,
  }) {
    final Uri $url = Uri.parse('/me/player/volume');
    final Map<String, dynamic> $params = <String, dynamic>{
      'volume_percent': volumePercent,
      'device_id': deviceId,
    };
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _mePlayerShufflePut({
    required bool? state,
    String? deviceId,
  }) {
    final Uri $url = Uri.parse('/me/player/shuffle');
    final Map<String, dynamic> $params = <String, dynamic>{
      'state': state,
      'device_id': deviceId,
    };
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Object>> _mePlayerRecentlyPlayedGet({
    int? limit,
    int? after,
    int? before,
  }) {
    final Uri $url = Uri.parse('/me/player/recently-played');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'after': after,
      'before': before,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _mePlayerQueueGet() {
    final Uri $url = Uri.parse('/me/player/queue');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _mePlayerQueuePost({
    required String? uri,
    String? deviceId,
  }) {
    final Uri $url = Uri.parse('/me/player/queue');
    final Map<String, dynamic> $params = <String, dynamic>{
      'uri': uri,
      'device_id': deviceId,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Markets>> _marketsGet() {
    final Uri $url = Uri.parse('/markets');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Markets, Markets>($request);
  }

  @override
  Future<Response<Object>> _meTopArtistsGet({
    String? timeRange,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/me/top/artists');
    final Map<String, dynamic> $params = <String, dynamic>{
      'time_range': timeRange,
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _meTopTracksGet({
    String? timeRange,
    int? limit,
    int? offset,
  }) {
    final Uri $url = Uri.parse('/me/top/tracks');
    final Map<String, dynamic> $params = <String, dynamic>{
      'time_range': timeRange,
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }
}
