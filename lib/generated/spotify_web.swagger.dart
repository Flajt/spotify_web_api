// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'spotify_web.enums.swagger.dart' as enums;
export 'spotify_web.enums.swagger.dart';

part 'spotify_web.swagger.chopper.dart';
part 'spotify_web.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class SpotifyWeb extends ChopperService {
  static SpotifyWeb create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$SpotifyWeb(client);
    }

    final newClient = ChopperClient(
        services: [_$SpotifyWeb()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$SpotifyWeb(newClient);
  }

  ///Get Album
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the album.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  Future<chopper.Response<Object>> albumsIdGet({
    required String? id,
    String? market,
  }) {
    return _albumsIdGet(id: id, market: market);
  }

  ///Get Album
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the album.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  @Get(path: '/albums/{id}')
  Future<chopper.Response<Object>> _albumsIdGet({
    @Path('id') required String? id,
    @Query('market') String? market,
  });

  ///Get Several Albums
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the albums. Maximum: 20 IDs.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  Future<chopper.Response<ManyAlbums>> albumsGet({
    required String? ids,
    String? market,
  }) {
    generatedMapping.putIfAbsent(ManyAlbums, () => ManyAlbums.fromJsonFactory);

    return _albumsGet(ids: ids, market: market);
  }

  ///Get Several Albums
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the albums. Maximum: 20 IDs.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  @Get(path: '/albums')
  Future<chopper.Response<ManyAlbums>> _albumsGet({
    @Query('ids') required String? ids,
    @Query('market') String? market,
  });

  ///Get Album Tracks
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the album.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<Object>> albumsIdTracksGet({
    required String? id,
    String? market,
    int? limit,
    int? offset,
  }) {
    return _albumsIdTracksGet(
        id: id, market: market, limit: limit, offset: offset);
  }

  ///Get Album Tracks
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the album.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/albums/{id}/tracks')
  Future<chopper.Response<Object>> _albumsIdTracksGet({
    @Path('id') required String? id,
    @Query('market') String? market,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Get Artist
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist.
  Future<chopper.Response<Object>> artistsIdGet({required String? id}) {
    return _artistsIdGet(id: id);
  }

  ///Get Artist
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist.
  @Get(path: '/artists/{id}')
  Future<chopper.Response<Object>> _artistsIdGet(
      {@Path('id') required String? id});

  ///Get Several Artists
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the artists. Maximum: 50 IDs.
  Future<chopper.Response<ManyArtists>> artistsGet({required String? ids}) {
    generatedMapping.putIfAbsent(
        ManyArtists, () => ManyArtists.fromJsonFactory);

    return _artistsGet(ids: ids);
  }

  ///Get Several Artists
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the artists. Maximum: 50 IDs.
  @Get(path: '/artists')
  Future<chopper.Response<ManyArtists>> _artistsGet(
      {@Query('ids') required String? ids});

  ///Get Artist's Albums
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist.
  ///@param include_groups A comma-separated list of keywords that will be used to filter the response. If not supplied, all album types will be returned. <br/> Valid values are:<br/>- `album`<br/>- `single`<br/>- `appears_on`<br/>- `compilation`<br/>For example: `include_groups=album,single`.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<Object>> artistsIdAlbumsGet({
    required String? id,
    String? includeGroups,
    String? market,
    int? limit,
    int? offset,
  }) {
    return _artistsIdAlbumsGet(
        id: id,
        includeGroups: includeGroups,
        market: market,
        limit: limit,
        offset: offset);
  }

  ///Get Artist's Albums
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist.
  ///@param include_groups A comma-separated list of keywords that will be used to filter the response. If not supplied, all album types will be returned. <br/> Valid values are:<br/>- `album`<br/>- `single`<br/>- `appears_on`<br/>- `compilation`<br/>For example: `include_groups=album,single`.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/artists/{id}/albums')
  Future<chopper.Response<Object>> _artistsIdAlbumsGet({
    @Path('id') required String? id,
    @Query('include_groups') String? includeGroups,
    @Query('market') String? market,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Get Artist's Top Tracks
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  Future<chopper.Response<ManyTracks>> artistsIdTopTracksGet({
    required String? id,
    String? market,
  }) {
    generatedMapping.putIfAbsent(ManyTracks, () => ManyTracks.fromJsonFactory);

    return _artistsIdTopTracksGet(id: id, market: market);
  }

  ///Get Artist's Top Tracks
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  @Get(path: '/artists/{id}/top-tracks')
  Future<chopper.Response<ManyTracks>> _artistsIdTopTracksGet({
    @Path('id') required String? id,
    @Query('market') String? market,
  });

  ///Get Artist's Related Artists
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist.
  Future<chopper.Response<ManyArtists>> artistsIdRelatedArtistsGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ManyArtists, () => ManyArtists.fromJsonFactory);

    return _artistsIdRelatedArtistsGet(id: id);
  }

  ///Get Artist's Related Artists
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the artist.
  @Get(path: '/artists/{id}/related-artists')
  Future<chopper.Response<ManyArtists>> _artistsIdRelatedArtistsGet(
      {@Path('id') required String? id});

  ///Get Show
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
  Future<chopper.Response<Object>> showsIdGet({
    String? market,
    required String? id,
  }) {
    return _showsIdGet(market: market, id: id);
  }

  ///Get Show
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
  @Get(path: '/shows/{id}')
  Future<chopper.Response<Object>> _showsIdGet({
    @Query('market') String? market,
    @Path('id') required String? id,
  });

  ///Get Several Shows
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the shows. Maximum: 50 IDs.
  Future<chopper.Response<ManySimplifiedShows>> showsGet({
    String? market,
    required String? ids,
  }) {
    generatedMapping.putIfAbsent(
        ManySimplifiedShows, () => ManySimplifiedShows.fromJsonFactory);

    return _showsGet(market: market, ids: ids);
  }

  ///Get Several Shows
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the shows. Maximum: 50 IDs.
  @Get(path: '/shows')
  Future<chopper.Response<ManySimplifiedShows>> _showsGet({
    @Query('market') String? market,
    @Query('ids') required String? ids,
  });

  ///Get Show Episodes
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<Object>> showsIdEpisodesGet({
    required String? id,
    String? market,
    int? limit,
    int? offset,
  }) {
    return _showsIdEpisodesGet(
        id: id, market: market, limit: limit, offset: offset);
  }

  ///Get Show Episodes
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the show.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/shows/{id}/episodes')
  Future<chopper.Response<Object>> _showsIdEpisodesGet({
    @Path('id') required String? id,
    @Query('market') String? market,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Get Episode
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the episode.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  Future<chopper.Response<Object>> episodesIdGet({
    required String? id,
    String? market,
  }) {
    return _episodesIdGet(id: id, market: market);
  }

  ///Get Episode
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the episode.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  @Get(path: '/episodes/{id}')
  Future<chopper.Response<Object>> _episodesIdGet({
    @Path('id') required String? id,
    @Query('market') String? market,
  });

  ///Get Several Episodes
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the episodes. Maximum: 50 IDs.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  Future<chopper.Response<ManyEpisodes>> episodesGet({
    required String? ids,
    String? market,
  }) {
    generatedMapping.putIfAbsent(
        ManyEpisodes, () => ManyEpisodes.fromJsonFactory);

    return _episodesGet(ids: ids, market: market);
  }

  ///Get Several Episodes
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the episodes. Maximum: 50 IDs.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  @Get(path: '/episodes')
  Future<chopper.Response<ManyEpisodes>> _episodesGet({
    @Query('ids') required String? ids,
    @Query('market') String? market,
  });

  ///Get an Audiobook
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the audiobook.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  Future<chopper.Response<Object>> audiobooksIdGet({
    required String? id,
    String? market,
  }) {
    return _audiobooksIdGet(id: id, market: market);
  }

  ///Get an Audiobook
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the audiobook.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  @Get(path: '/audiobooks/{id}')
  Future<chopper.Response<Object>> _audiobooksIdGet({
    @Path('id') required String? id,
    @Query('market') String? market,
  });

  ///Get Several Audiobooks
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ`. Maximum: 50 IDs.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  Future<chopper.Response<ManyAudiobooks>> audiobooksGet({
    required String? ids,
    String? market,
  }) {
    generatedMapping.putIfAbsent(
        ManyAudiobooks, () => ManyAudiobooks.fromJsonFactory);

    return _audiobooksGet(ids: ids, market: market);
  }

  ///Get Several Audiobooks
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ`. Maximum: 50 IDs.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  @Get(path: '/audiobooks')
  Future<chopper.Response<ManyAudiobooks>> _audiobooksGet({
    @Query('ids') required String? ids,
    @Query('market') String? market,
  });

  ///Get Audiobook Chapters
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the audiobook.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<Object>> audiobooksIdChaptersGet({
    required String? id,
    String? market,
    int? limit,
    int? offset,
  }) {
    return _audiobooksIdChaptersGet(
        id: id, market: market, limit: limit, offset: offset);
  }

  ///Get Audiobook Chapters
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the audiobook.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/audiobooks/{id}/chapters')
  Future<chopper.Response<Object>> _audiobooksIdChaptersGet({
    @Path('id') required String? id,
    @Query('market') String? market,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Get User's Saved Audiobooks
  ///
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<Object>> meAudiobooksGet({
    int? limit,
    int? offset,
  }) {
    return _meAudiobooksGet(limit: limit, offset: offset);
  }

  ///Get User's Saved Audiobooks
  ///
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/me/audiobooks')
  Future<chopper.Response<Object>> _meAudiobooksGet({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Save Audiobooks for Current User
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ`. Maximum: 50 IDs.
  Future<chopper.Response> meAudiobooksPut({required String? ids}) {
    return _meAudiobooksPut(ids: ids);
  }

  ///Save Audiobooks for Current User
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ`. Maximum: 50 IDs.
  @Put(
    path: '/me/audiobooks',
    optionalBody: true,
  )
  Future<chopper.Response> _meAudiobooksPut(
      {@Query('ids') required String? ids});

  ///Remove User's Saved Audiobooks
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ`. Maximum: 50 IDs.
  Future<chopper.Response> meAudiobooksDelete({required String? ids}) {
    return _meAudiobooksDelete(ids: ids);
  }

  ///Remove User's Saved Audiobooks
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ`. Maximum: 50 IDs.
  @Delete(path: '/me/audiobooks')
  Future<chopper.Response> _meAudiobooksDelete(
      {@Query('ids') required String? ids});

  ///Check User's Saved Audiobooks
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ`. Maximum: 50 IDs.
  Future<chopper.Response<ArrayOfBooleans>> meAudiobooksContainsGet(
      {required String? ids}) {
    return _meAudiobooksContainsGet(ids: ids);
  }

  ///Check User's Saved Audiobooks
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=18yVqkdbdRvS24c0Ilj2ci,1HGw3J3NxZO1TP1BTtVhpZ`. Maximum: 50 IDs.
  @Get(path: '/me/audiobooks/contains')
  Future<chopper.Response<ArrayOfBooleans>> _meAudiobooksContainsGet(
      {@Query('ids') required String? ids});

  ///Get a Chapter
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the chapter.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  Future<chopper.Response<Object>> chaptersIdGet({
    required String? id,
    String? market,
  }) {
    return _chaptersIdGet(id: id, market: market);
  }

  ///Get a Chapter
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the chapter.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  @Get(path: '/chapters/{id}')
  Future<chopper.Response<Object>> _chaptersIdGet({
    @Path('id') required String? id,
    @Query('market') String? market,
  });

  ///Get Several Chapters
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=0IsXVP0JmcB2adSE338GkK,3ZXb8FKZGU0EHALYX6uCzU`. Maximum: 50 IDs.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  Future<chopper.Response<ManyChapters>> chaptersGet({
    required String? ids,
    String? market,
  }) {
    generatedMapping.putIfAbsent(
        ManyChapters, () => ManyChapters.fromJsonFactory);

    return _chaptersGet(ids: ids, market: market);
  }

  ///Get Several Chapters
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=0IsXVP0JmcB2adSE338GkK,3ZXb8FKZGU0EHALYX6uCzU`. Maximum: 50 IDs.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  @Get(path: '/chapters')
  Future<chopper.Response<ManyChapters>> _chaptersGet({
    @Query('ids') required String? ids,
    @Query('market') String? market,
  });

  ///Get Track
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  Future<chopper.Response<Object>> tracksIdGet({
    required String? id,
    String? market,
  }) {
    return _tracksIdGet(id: id, market: market);
  }

  ///Get Track
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  @Get(path: '/tracks/{id}')
  Future<chopper.Response<Object>> _tracksIdGet({
    @Path('id') required String? id,
    @Query('market') String? market,
  });

  ///Get Several Tracks
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=4iV5W9uYEdYUVa79Axb7Rh,1301WleyT98MSxVHPZCA6M`. Maximum: 50 IDs.
  Future<chopper.Response<ManyTracks>> tracksGet({
    String? market,
    required String? ids,
  }) {
    generatedMapping.putIfAbsent(ManyTracks, () => ManyTracks.fromJsonFactory);

    return _tracksGet(market: market, ids: ids);
  }

  ///Get Several Tracks
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=4iV5W9uYEdYUVa79Axb7Rh,1301WleyT98MSxVHPZCA6M`. Maximum: 50 IDs.
  @Get(path: '/tracks')
  Future<chopper.Response<ManyTracks>> _tracksGet({
    @Query('market') String? market,
    @Query('ids') required String? ids,
  });

  ///Search for Item
  ///
  ///@param q Your search query.  You can narrow down your search using field filters. The available filters are `album`, `artist`, `track`, `year`, `upc`, `tag:hipster`, `tag:new`, `isrc`, and `genre`. Each field filter only applies to certain result types.  The `artist` and `year` filters can be used while searching albums, artists and tracks. You can filter on a single `year` or a range (e.g. 1955-1960).<br /> The `album` filter can be used while searching albums and tracks.<br /> The `genre` filter can be used while searching artists and tracks.<br /> The `isrc` and `track` filters can be used while searching tracks.<br /> The `upc`, `tag:new` and `tag:hipster` filters can only be used while searching albums. The `tag:new` filter will return albums released in the past two weeks and `tag:hipster` can be used to return only albums with the lowest 10% popularity.<br />
  ///@param type A comma-separated list of item types to search across. Search results include hits from all the specified item types. For example: `q=abacab&type=album,track` returns both albums and tracks matching "abacab".
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of results to return in each item type.
  ///@param offset The index of the first result to return. Use with limit to get the next page of search results.
  ///@param include_external If `include_external=audio` is specified it signals that the client can play externally hosted audio content, and marks the content as playable in the response. By default externally hosted audio content is marked as unplayable in the response.
  Future<chopper.Response<SearchItems>> searchGet({
    required String? q,
    required List<String>? type,
    String? market,
    int? limit,
    int? offset,
    enums.SearchGetIncludeExternal? includeExternal,
  }) {
    generatedMapping.putIfAbsent(
        SearchItems, () => SearchItems.fromJsonFactory);

    return _searchGet(
        q: q,
        type: type,
        market: market,
        limit: limit,
        offset: offset,
        includeExternal: includeExternal?.value?.toString());
  }

  ///Search for Item
  ///
  ///@param q Your search query.  You can narrow down your search using field filters. The available filters are `album`, `artist`, `track`, `year`, `upc`, `tag:hipster`, `tag:new`, `isrc`, and `genre`. Each field filter only applies to certain result types.  The `artist` and `year` filters can be used while searching albums, artists and tracks. You can filter on a single `year` or a range (e.g. 1955-1960).<br /> The `album` filter can be used while searching albums and tracks.<br /> The `genre` filter can be used while searching artists and tracks.<br /> The `isrc` and `track` filters can be used while searching tracks.<br /> The `upc`, `tag:new` and `tag:hipster` filters can only be used while searching albums. The `tag:new` filter will return albums released in the past two weeks and `tag:hipster` can be used to return only albums with the lowest 10% popularity.<br />
  ///@param type A comma-separated list of item types to search across. Search results include hits from all the specified item types. For example: `q=abacab&type=album,track` returns both albums and tracks matching "abacab".
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of results to return in each item type.
  ///@param offset The index of the first result to return. Use with limit to get the next page of search results.
  ///@param include_external If `include_external=audio` is specified it signals that the client can play externally hosted audio content, and marks the content as playable in the response. By default externally hosted audio content is marked as unplayable in the response.
  @Get(path: '/search')
  Future<chopper.Response<SearchItems>> _searchGet({
    @Query('q') required String? q,
    @Query('type') required List<String>? type,
    @Query('market') String? market,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('include_external') String? includeExternal,
  });

  ///Get Current User's Profile
  ///
  Future<chopper.Response<Object>> meGet() {
    return _meGet();
  }

  ///Get Current User's Profile
  ///
  @Get(path: '/me')
  Future<chopper.Response<Object>> _meGet();

  ///Get Playlist
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param fields Filters for the query: a comma-separated list of the fields to return. If omitted, all fields are returned. For example, to get just the playlist''s description and URI: `fields=description,uri`. A dot separator can be used to specify non-reoccurring fields, while parentheses can be used to specify reoccurring fields within objects. For example, to get just the added date and user ID of the adder: `fields=tracks.items(added_at,added_by.id)`. Use multiple parentheses to drill down into nested objects, for example: `fields=tracks.items(track(name,href,album(name,href)))`. Fields can be excluded by prefixing them with an exclamation mark, for example: `fields=tracks.items(track(name,href,album(!name,href)))`
  ///@param additional_types A comma-separated list of item types that your client supports besides the default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**: This parameter was introduced to allow existing clients to maintain their current behaviour and might be deprecated in the future._<br/> In addition to providing this parameter, make sure that your client properly handles cases of new types in the future by checking against the `type` field of each object.
  Future<chopper.Response<Object>> playlistsPlaylistIdGet({
    required String? playlistId,
    String? market,
    String? fields,
    String? additionalTypes,
  }) {
    return _playlistsPlaylistIdGet(
        playlistId: playlistId,
        market: market,
        fields: fields,
        additionalTypes: additionalTypes);
  }

  ///Get Playlist
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param fields Filters for the query: a comma-separated list of the fields to return. If omitted, all fields are returned. For example, to get just the playlist''s description and URI: `fields=description,uri`. A dot separator can be used to specify non-reoccurring fields, while parentheses can be used to specify reoccurring fields within objects. For example, to get just the added date and user ID of the adder: `fields=tracks.items(added_at,added_by.id)`. Use multiple parentheses to drill down into nested objects, for example: `fields=tracks.items(track(name,href,album(name,href)))`. Fields can be excluded by prefixing them with an exclamation mark, for example: `fields=tracks.items(track(name,href,album(!name,href)))`
  ///@param additional_types A comma-separated list of item types that your client supports besides the default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**: This parameter was introduced to allow existing clients to maintain their current behaviour and might be deprecated in the future._<br/> In addition to providing this parameter, make sure that your client properly handles cases of new types in the future by checking against the `type` field of each object.
  @Get(path: '/playlists/{playlist_id}')
  Future<chopper.Response<Object>> _playlistsPlaylistIdGet({
    @Path('playlist_id') required String? playlistId,
    @Query('market') String? market,
    @Query('fields') String? fields,
    @Query('additional_types') String? additionalTypes,
  });

  ///Change Playlist Details
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  Future<chopper.Response> playlistsPlaylistIdPut({
    required String? playlistId,
    required PlaylistsPlaylistIdPut$RequestBody? body,
  }) {
    return _playlistsPlaylistIdPut(playlistId: playlistId, body: body);
  }

  ///Change Playlist Details
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  @Put(
    path: '/playlists/{playlist_id}',
    optionalBody: true,
  )
  Future<chopper.Response> _playlistsPlaylistIdPut({
    @Path('playlist_id') required String? playlistId,
    @Body() required PlaylistsPlaylistIdPut$RequestBody? body,
  });

  ///Get Playlist Items
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param fields Filters for the query: a comma-separated list of the fields to return. If omitted, all fields are returned. For example, to get just the total number of items and the request limit:<br/>`fields=total,limit`<br/>A dot separator can be used to specify non-reoccurring fields, while parentheses can be used to specify reoccurring fields within objects. For example, to get just the added date and user ID of the adder:<br/>`fields=items(added_at,added_by.id)`<br/>Use multiple parentheses to drill down into nested objects, for example:<br/>`fields=items(track(name,href,album(name,href)))`<br/>Fields can be excluded by prefixing them with an exclamation mark, for example:<br/>`fields=items.track.album(!external_urls,images)`
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 100.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  ///@param additional_types A comma-separated list of item types that your client supports besides the default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**: This parameter was introduced to allow existing clients to maintain their current behaviour and might be deprecated in the future._<br/> In addition to providing this parameter, make sure that your client properly handles cases of new types in the future by checking against the `type` field of each object.
  Future<chopper.Response<Object>> playlistsPlaylistIdTracksGet({
    required String? playlistId,
    String? market,
    String? fields,
    int? limit,
    int? offset,
    String? additionalTypes,
  }) {
    return _playlistsPlaylistIdTracksGet(
        playlistId: playlistId,
        market: market,
        fields: fields,
        limit: limit,
        offset: offset,
        additionalTypes: additionalTypes);
  }

  ///Get Playlist Items
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param fields Filters for the query: a comma-separated list of the fields to return. If omitted, all fields are returned. For example, to get just the total number of items and the request limit:<br/>`fields=total,limit`<br/>A dot separator can be used to specify non-reoccurring fields, while parentheses can be used to specify reoccurring fields within objects. For example, to get just the added date and user ID of the adder:<br/>`fields=items(added_at,added_by.id)`<br/>Use multiple parentheses to drill down into nested objects, for example:<br/>`fields=items(track(name,href,album(name,href)))`<br/>Fields can be excluded by prefixing them with an exclamation mark, for example:<br/>`fields=items.track.album(!external_urls,images)`
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 100.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  ///@param additional_types A comma-separated list of item types that your client supports besides the default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**: This parameter was introduced to allow existing clients to maintain their current behaviour and might be deprecated in the future._<br/> In addition to providing this parameter, make sure that your client properly handles cases of new types in the future by checking against the `type` field of each object.
  @Get(path: '/playlists/{playlist_id}/tracks')
  Future<chopper.Response<Object>> _playlistsPlaylistIdTracksGet({
    @Path('playlist_id') required String? playlistId,
    @Query('market') String? market,
    @Query('fields') String? fields,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('additional_types') String? additionalTypes,
  });

  ///Add Items to Playlist
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  ///@param position The position to insert the items, a zero-based index. For example, to insert the items in the first position: `position=0`; to insert the items in the third position: `position=2`. If omitted, the items will be appended to the playlist. Items are added in the order they are listed in the query string or request body.
  ///@param uris A comma-separated list of [Spotify URIs](/documentation/web-api/concepts/spotify-uris-ids) to add, can be track or episode URIs. For example:<br/>`uris=spotify:track:4iV5W9uYEdYUVa79Axb7Rh, spotify:track:1301WleyT98MSxVHPZCA6M, spotify:episode:512ojhOuo1ktJprKbVcKyQ`<br/>A maximum of 100 items can be added in one request. <br/> _**Note**: it is likely that passing a large number of item URIs as a query parameter will exceed the maximum length of the request URI. When adding a large number of items, it is recommended to pass them in the request body, see below._
  Future<chopper.Response<PlaylistSnapshotId>> playlistsPlaylistIdTracksPost({
    required String? playlistId,
    int? position,
    String? uris,
    required PlaylistsPlaylistIdTracksPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
        PlaylistSnapshotId, () => PlaylistSnapshotId.fromJsonFactory);

    return _playlistsPlaylistIdTracksPost(
        playlistId: playlistId, position: position, uris: uris, body: body);
  }

  ///Add Items to Playlist
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  ///@param position The position to insert the items, a zero-based index. For example, to insert the items in the first position: `position=0`; to insert the items in the third position: `position=2`. If omitted, the items will be appended to the playlist. Items are added in the order they are listed in the query string or request body.
  ///@param uris A comma-separated list of [Spotify URIs](/documentation/web-api/concepts/spotify-uris-ids) to add, can be track or episode URIs. For example:<br/>`uris=spotify:track:4iV5W9uYEdYUVa79Axb7Rh, spotify:track:1301WleyT98MSxVHPZCA6M, spotify:episode:512ojhOuo1ktJprKbVcKyQ`<br/>A maximum of 100 items can be added in one request. <br/> _**Note**: it is likely that passing a large number of item URIs as a query parameter will exceed the maximum length of the request URI. When adding a large number of items, it is recommended to pass them in the request body, see below._
  @Post(
    path: '/playlists/{playlist_id}/tracks',
    optionalBody: true,
  )
  Future<chopper.Response<PlaylistSnapshotId>> _playlistsPlaylistIdTracksPost({
    @Path('playlist_id') required String? playlistId,
    @Query('position') int? position,
    @Query('uris') String? uris,
    @Body() required PlaylistsPlaylistIdTracksPost$RequestBody? body,
  });

  ///Update Playlist Items
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  ///@param uris A comma-separated list of [Spotify URIs](/documentation/web-api/concepts/spotify-uris-ids) to set, can be track or episode URIs. For example: `uris=spotify:track:4iV5W9uYEdYUVa79Axb7Rh,spotify:track:1301WleyT98MSxVHPZCA6M,spotify:episode:512ojhOuo1ktJprKbVcKyQ`<br/>A maximum of 100 items can be set in one request.
  Future<chopper.Response<PlaylistSnapshotId>> playlistsPlaylistIdTracksPut({
    required String? playlistId,
    String? uris,
    required PlaylistsPlaylistIdTracksPut$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
        PlaylistSnapshotId, () => PlaylistSnapshotId.fromJsonFactory);

    return _playlistsPlaylistIdTracksPut(
        playlistId: playlistId, uris: uris, body: body);
  }

  ///Update Playlist Items
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  ///@param uris A comma-separated list of [Spotify URIs](/documentation/web-api/concepts/spotify-uris-ids) to set, can be track or episode URIs. For example: `uris=spotify:track:4iV5W9uYEdYUVa79Axb7Rh,spotify:track:1301WleyT98MSxVHPZCA6M,spotify:episode:512ojhOuo1ktJprKbVcKyQ`<br/>A maximum of 100 items can be set in one request.
  @Put(
    path: '/playlists/{playlist_id}/tracks',
    optionalBody: true,
  )
  Future<chopper.Response<PlaylistSnapshotId>> _playlistsPlaylistIdTracksPut({
    @Path('playlist_id') required String? playlistId,
    @Query('uris') String? uris,
    @Body() required PlaylistsPlaylistIdTracksPut$RequestBody? body,
  });

  ///Remove Playlist Items
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  Future<chopper.Response<PlaylistSnapshotId>> playlistsPlaylistIdTracksDelete({
    required String? playlistId,
    required PlaylistsPlaylistIdTracksDelete$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
        PlaylistSnapshotId, () => PlaylistSnapshotId.fromJsonFactory);

    return _playlistsPlaylistIdTracksDelete(playlistId: playlistId, body: body);
  }

  ///Remove Playlist Items
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  @Delete(path: '/playlists/{playlist_id}/tracks')
  Future<chopper.Response<PlaylistSnapshotId>>
      _playlistsPlaylistIdTracksDelete({
    @Path('playlist_id') required String? playlistId,
    @Body() required PlaylistsPlaylistIdTracksDelete$RequestBody? body,
  });

  ///Get Current User's Playlists
  ///
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset 'The index of the first playlist to return. Default: 0 (the first object). Maximum offset: 100.000\. Use with `limit` to get the next set of playlists.'
  Future<chopper.Response<Object>> mePlaylistsGet({
    int? limit,
    int? offset,
  }) {
    return _mePlaylistsGet(limit: limit, offset: offset);
  }

  ///Get Current User's Playlists
  ///
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset 'The index of the first playlist to return. Default: 0 (the first object). Maximum offset: 100.000\. Use with `limit` to get the next set of playlists.'
  @Get(path: '/me/playlists')
  Future<chopper.Response<Object>> _mePlaylistsGet({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Get User's Saved Albums
  ///
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  Future<chopper.Response<Object>> meAlbumsGet({
    int? limit,
    int? offset,
    String? market,
  }) {
    return _meAlbumsGet(limit: limit, offset: offset, market: market);
  }

  ///Get User's Saved Albums
  ///
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  @Get(path: '/me/albums')
  Future<chopper.Response<Object>> _meAlbumsGet({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('market') String? market,
  });

  ///Save Albums for Current User
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the albums. Maximum: 20 IDs.
  Future<chopper.Response> meAlbumsPut({
    required String? ids,
    required MeAlbumsPut$RequestBody? body,
  }) {
    return _meAlbumsPut(ids: ids, body: body);
  }

  ///Save Albums for Current User
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the albums. Maximum: 20 IDs.
  @Put(
    path: '/me/albums',
    optionalBody: true,
  )
  Future<chopper.Response> _meAlbumsPut({
    @Query('ids') required String? ids,
    @Body() required MeAlbumsPut$RequestBody? body,
  });

  ///Remove Users' Saved Albums
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the albums. Maximum: 20 IDs.
  Future<chopper.Response> meAlbumsDelete({
    required String? ids,
    required MeAlbumsDelete$RequestBody? body,
  }) {
    return _meAlbumsDelete(ids: ids, body: body);
  }

  ///Remove Users' Saved Albums
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the albums. Maximum: 20 IDs.
  @Delete(path: '/me/albums')
  Future<chopper.Response> _meAlbumsDelete({
    @Query('ids') required String? ids,
    @Body() required MeAlbumsDelete$RequestBody? body,
  });

  ///Check User's Saved Albums
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the albums. Maximum: 20 IDs.
  Future<chopper.Response<ArrayOfBooleans>> meAlbumsContainsGet(
      {required String? ids}) {
    return _meAlbumsContainsGet(ids: ids);
  }

  ///Check User's Saved Albums
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the albums. Maximum: 20 IDs.
  @Get(path: '/me/albums/contains')
  Future<chopper.Response<ArrayOfBooleans>> _meAlbumsContainsGet(
      {@Query('ids') required String? ids});

  ///Get User's Saved Tracks
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<Object>> meTracksGet({
    String? market,
    int? limit,
    int? offset,
  }) {
    return _meTracksGet(market: market, limit: limit, offset: offset);
  }

  ///Get User's Saved Tracks
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/me/tracks')
  Future<chopper.Response<Object>> _meTracksGet({
    @Query('market') String? market,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Save Tracks for Current User
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=4iV5W9uYEdYUVa79Axb7Rh,1301WleyT98MSxVHPZCA6M`. Maximum: 50 IDs.
  Future<chopper.Response> meTracksPut({
    required String? ids,
    required MeTracksPut$RequestBody? body,
  }) {
    return _meTracksPut(ids: ids, body: body);
  }

  ///Save Tracks for Current User
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=4iV5W9uYEdYUVa79Axb7Rh,1301WleyT98MSxVHPZCA6M`. Maximum: 50 IDs.
  @Put(
    path: '/me/tracks',
    optionalBody: true,
  )
  Future<chopper.Response> _meTracksPut({
    @Query('ids') required String? ids,
    @Body() required MeTracksPut$RequestBody? body,
  });

  ///Remove User's Saved Tracks
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=4iV5W9uYEdYUVa79Axb7Rh,1301WleyT98MSxVHPZCA6M`. Maximum: 50 IDs.
  Future<chopper.Response> meTracksDelete({
    required String? ids,
    required MeTracksDelete$RequestBody? body,
  }) {
    return _meTracksDelete(ids: ids, body: body);
  }

  ///Remove User's Saved Tracks
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=4iV5W9uYEdYUVa79Axb7Rh,1301WleyT98MSxVHPZCA6M`. Maximum: 50 IDs.
  @Delete(path: '/me/tracks')
  Future<chopper.Response> _meTracksDelete({
    @Query('ids') required String? ids,
    @Body() required MeTracksDelete$RequestBody? body,
  });

  ///Check User's Saved Tracks
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=4iV5W9uYEdYUVa79Axb7Rh,1301WleyT98MSxVHPZCA6M`. Maximum: 50 IDs.
  Future<chopper.Response<ArrayOfBooleans>> meTracksContainsGet(
      {required String? ids}) {
    return _meTracksContainsGet(ids: ids);
  }

  ///Check User's Saved Tracks
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=4iV5W9uYEdYUVa79Axb7Rh,1301WleyT98MSxVHPZCA6M`. Maximum: 50 IDs.
  @Get(path: '/me/tracks/contains')
  Future<chopper.Response<ArrayOfBooleans>> _meTracksContainsGet(
      {@Query('ids') required String? ids});

  ///Get User's Saved Episodes
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<Object>> meEpisodesGet({
    String? market,
    int? limit,
    int? offset,
  }) {
    return _meEpisodesGet(market: market, limit: limit, offset: offset);
  }

  ///Get User's Saved Episodes
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/me/episodes')
  Future<chopper.Response<Object>> _meEpisodesGet({
    @Query('market') String? market,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Save Episodes for Current User
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). Maximum: 50 IDs.
  Future<chopper.Response> meEpisodesPut({
    required String? ids,
    required MeEpisodesPut$RequestBody? body,
  }) {
    return _meEpisodesPut(ids: ids, body: body);
  }

  ///Save Episodes for Current User
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). Maximum: 50 IDs.
  @Put(
    path: '/me/episodes',
    optionalBody: true,
  )
  Future<chopper.Response> _meEpisodesPut({
    @Query('ids') required String? ids,
    @Body() required MeEpisodesPut$RequestBody? body,
  });

  ///Remove User's Saved Episodes
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=4iV5W9uYEdYUVa79Axb7Rh,1301WleyT98MSxVHPZCA6M`. Maximum: 50 IDs.
  Future<chopper.Response> meEpisodesDelete({
    required String? ids,
    required MeEpisodesDelete$RequestBody? body,
  }) {
    return _meEpisodesDelete(ids: ids, body: body);
  }

  ///Remove User's Saved Episodes
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=4iV5W9uYEdYUVa79Axb7Rh,1301WleyT98MSxVHPZCA6M`. Maximum: 50 IDs.
  @Delete(path: '/me/episodes')
  Future<chopper.Response> _meEpisodesDelete({
    @Query('ids') required String? ids,
    @Body() required MeEpisodesDelete$RequestBody? body,
  });

  ///Check User's Saved Episodes
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the episodes. Maximum: 50 IDs.
  Future<chopper.Response<ArrayOfBooleans>> meEpisodesContainsGet(
      {required String? ids}) {
    return _meEpisodesContainsGet(ids: ids);
  }

  ///Check User's Saved Episodes
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the episodes. Maximum: 50 IDs.
  @Get(path: '/me/episodes/contains')
  Future<chopper.Response<ArrayOfBooleans>> _meEpisodesContainsGet(
      {@Query('ids') required String? ids});

  ///Get User's Saved Shows
  ///
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<Object>> meShowsGet({
    int? limit,
    int? offset,
  }) {
    return _meShowsGet(limit: limit, offset: offset);
  }

  ///Get User's Saved Shows
  ///
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/me/shows')
  Future<chopper.Response<Object>> _meShowsGet({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Save Shows for Current User
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the shows. Maximum: 50 IDs.
  Future<chopper.Response> meShowsPut({
    required String? ids,
    required MeShowsPut$RequestBody? body,
  }) {
    return _meShowsPut(ids: ids, body: body);
  }

  ///Save Shows for Current User
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the shows. Maximum: 50 IDs.
  @Put(
    path: '/me/shows',
    optionalBody: true,
  )
  Future<chopper.Response> _meShowsPut({
    @Query('ids') required String? ids,
    @Body() required MeShowsPut$RequestBody? body,
  });

  ///Remove User's Saved Shows
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the shows. Maximum: 50 IDs.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  Future<chopper.Response> meShowsDelete({
    required String? ids,
    String? market,
    required MeShowsDelete$RequestBody? body,
  }) {
    return _meShowsDelete(ids: ids, market: market, body: body);
  }

  ///Remove User's Saved Shows
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the shows. Maximum: 50 IDs.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  @Delete(path: '/me/shows')
  Future<chopper.Response> _meShowsDelete({
    @Query('ids') required String? ids,
    @Query('market') String? market,
    @Body() required MeShowsDelete$RequestBody? body,
  });

  ///Check User's Saved Shows
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the shows. Maximum: 50 IDs.
  Future<chopper.Response<ArrayOfBooleans>> meShowsContainsGet(
      {required String? ids}) {
    return _meShowsContainsGet(ids: ids);
  }

  ///Check User's Saved Shows
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the shows. Maximum: 50 IDs.
  @Get(path: '/me/shows/contains')
  Future<chopper.Response<ArrayOfBooleans>> _meShowsContainsGet(
      {@Query('ids') required String? ids});

  ///Get User's Profile
  ///
  ///@param user_id The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
  Future<chopper.Response<Object>> usersUserIdGet({required String? userId}) {
    return _usersUserIdGet(userId: userId);
  }

  ///Get User's Profile
  ///
  ///@param user_id The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
  @Get(path: '/users/{user_id}')
  Future<chopper.Response<Object>> _usersUserIdGet(
      {@Path('user_id') required String? userId});

  ///Get User's Playlists
  ///
  ///@param user_id The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first playlist to return. Default: 0 (the first object). Maximum offset: 100.000\. Use with `limit` to get the next set of playlists.
  Future<chopper.Response<Object>> usersUserIdPlaylistsGet({
    required String? userId,
    int? limit,
    int? offset,
  }) {
    return _usersUserIdPlaylistsGet(
        userId: userId, limit: limit, offset: offset);
  }

  ///Get User's Playlists
  ///
  ///@param user_id The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first playlist to return. Default: 0 (the first object). Maximum offset: 100.000\. Use with `limit` to get the next set of playlists.
  @Get(path: '/users/{user_id}/playlists')
  Future<chopper.Response<Object>> _usersUserIdPlaylistsGet({
    @Path('user_id') required String? userId,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Create Playlist
  ///
  ///@param user_id The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
  Future<chopper.Response<Object>> usersUserIdPlaylistsPost({
    required String? userId,
    required UsersUserIdPlaylistsPost$RequestBody? body,
  }) {
    return _usersUserIdPlaylistsPost(userId: userId, body: body);
  }

  ///Create Playlist
  ///
  ///@param user_id The user's [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids).
  @Post(
    path: '/users/{user_id}/playlists',
    optionalBody: true,
  )
  Future<chopper.Response<Object>> _usersUserIdPlaylistsPost({
    @Path('user_id') required String? userId,
    @Body() required UsersUserIdPlaylistsPost$RequestBody? body,
  });

  ///Follow Playlist
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  Future<chopper.Response> playlistsPlaylistIdFollowersPut({
    required String? playlistId,
    required PlaylistsPlaylistIdFollowersPut$RequestBody? body,
  }) {
    return _playlistsPlaylistIdFollowersPut(playlistId: playlistId, body: body);
  }

  ///Follow Playlist
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  @Put(
    path: '/playlists/{playlist_id}/followers',
    optionalBody: true,
  )
  Future<chopper.Response> _playlistsPlaylistIdFollowersPut({
    @Path('playlist_id') required String? playlistId,
    @Body() required PlaylistsPlaylistIdFollowersPut$RequestBody? body,
  });

  ///Unfollow Playlist
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  Future<chopper.Response> playlistsPlaylistIdFollowersDelete(
      {required String? playlistId}) {
    return _playlistsPlaylistIdFollowersDelete(playlistId: playlistId);
  }

  ///Unfollow Playlist
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  @Delete(path: '/playlists/{playlist_id}/followers')
  Future<chopper.Response> _playlistsPlaylistIdFollowersDelete(
      {@Path('playlist_id') required String? playlistId});

  ///Get Featured Playlists
  ///
  ///@param country A country: an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Provide this parameter if you want the list of returned items to be relevant to a particular country. If omitted, the returned items will be relevant to all countries.
  ///@param locale The desired language, consisting of a lowercase [ISO 639-1 language code](http://en.wikipedia.org/wiki/ISO_639-1) and an uppercase [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), joined by an underscore. For example: `es_MX`, meaning "Spanish (Mexico)". Provide this parameter if you want the results returned in a particular language (where available). <br/> _**Note**: if `locale` is not supplied, or if the specified language is not available, all strings will be returned in the Spotify default language (American English). The `locale` parameter, combined with the `country` parameter, may give odd results if not carefully matched. For example `country=SE&locale=de_DE` will return a list of categories relevant to Sweden but as German language strings._
  ///@param timestamp A timestamp in [ISO 8601 format](http://en.wikipedia.org/wiki/ISO_8601): `yyyy-MM-ddTHH:mm:ss`. Use this parameter to specify the user's local time to get results tailored for that specific date and time in the day. If not provided, the response defaults to the current UTC time. Example: "2014-10-23T09:00:00" for a user whose local time is 9AM. If there were no featured playlists (or there is no data) at the specified time, the response will revert to the current UTC time.
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<Object>> browseFeaturedPlaylistsGet({
    String? country,
    String? locale,
    String? timestamp,
    int? limit,
    int? offset,
  }) {
    return _browseFeaturedPlaylistsGet(
        country: country,
        locale: locale,
        timestamp: timestamp,
        limit: limit,
        offset: offset);
  }

  ///Get Featured Playlists
  ///
  ///@param country A country: an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Provide this parameter if you want the list of returned items to be relevant to a particular country. If omitted, the returned items will be relevant to all countries.
  ///@param locale The desired language, consisting of a lowercase [ISO 639-1 language code](http://en.wikipedia.org/wiki/ISO_639-1) and an uppercase [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), joined by an underscore. For example: `es_MX`, meaning "Spanish (Mexico)". Provide this parameter if you want the results returned in a particular language (where available). <br/> _**Note**: if `locale` is not supplied, or if the specified language is not available, all strings will be returned in the Spotify default language (American English). The `locale` parameter, combined with the `country` parameter, may give odd results if not carefully matched. For example `country=SE&locale=de_DE` will return a list of categories relevant to Sweden but as German language strings._
  ///@param timestamp A timestamp in [ISO 8601 format](http://en.wikipedia.org/wiki/ISO_8601): `yyyy-MM-ddTHH:mm:ss`. Use this parameter to specify the user's local time to get results tailored for that specific date and time in the day. If not provided, the response defaults to the current UTC time. Example: "2014-10-23T09:00:00" for a user whose local time is 9AM. If there were no featured playlists (or there is no data) at the specified time, the response will revert to the current UTC time.
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/browse/featured-playlists')
  Future<chopper.Response<Object>> _browseFeaturedPlaylistsGet({
    @Query('country') String? country,
    @Query('locale') String? locale,
    @Query('timestamp') String? timestamp,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Get Several Browse Categories
  ///
  ///@param country A country: an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Provide this parameter if you want to narrow the list of returned categories to those relevant to a particular country. If omitted, the returned items will be globally relevant.
  ///@param locale The desired language, consisting of an [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code and an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), joined by an underscore. For example: `es_MX`, meaning "Spanish (Mexico)". Provide this parameter if you want the category metadata returned in a particular language. <br/> _**Note**: if `locale` is not supplied, or if the specified language is not available, all strings will be returned in the Spotify default language (American English). The `locale` parameter, combined with the `country` parameter, may give odd results if not carefully matched. For example `country=SE&locale=de_DE` will return a list of categories relevant to Sweden but as German language strings._
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<PagedCategories>> browseCategoriesGet({
    String? country,
    String? locale,
    int? limit,
    int? offset,
  }) {
    generatedMapping.putIfAbsent(
        PagedCategories, () => PagedCategories.fromJsonFactory);

    return _browseCategoriesGet(
        country: country, locale: locale, limit: limit, offset: offset);
  }

  ///Get Several Browse Categories
  ///
  ///@param country A country: an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Provide this parameter if you want to narrow the list of returned categories to those relevant to a particular country. If omitted, the returned items will be globally relevant.
  ///@param locale The desired language, consisting of an [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code and an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), joined by an underscore. For example: `es_MX`, meaning "Spanish (Mexico)". Provide this parameter if you want the category metadata returned in a particular language. <br/> _**Note**: if `locale` is not supplied, or if the specified language is not available, all strings will be returned in the Spotify default language (American English). The `locale` parameter, combined with the `country` parameter, may give odd results if not carefully matched. For example `country=SE&locale=de_DE` will return a list of categories relevant to Sweden but as German language strings._
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/browse/categories')
  Future<chopper.Response<PagedCategories>> _browseCategoriesGet({
    @Query('country') String? country,
    @Query('locale') String? locale,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Get Single Browse Category
  ///
  ///@param category_id The [Spotify category ID](/documentation/web-api/concepts/spotify-uris-ids) for the category.
  ///@param country A country: an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Provide this parameter to ensure that the category exists for a particular country.
  ///@param locale The desired language, consisting of an [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code and an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), joined by an underscore. For example: `es_MX`, meaning &quot;Spanish (Mexico)&quot;. Provide this parameter if you want the category strings returned in a particular language.<br/> _**Note**: if `locale` is not supplied, or if the specified language is not available, the category strings returned will be in the Spotify default language (American English)._
  Future<chopper.Response<Object>> browseCategoriesCategoryIdGet({
    required String? categoryId,
    String? country,
    String? locale,
  }) {
    return _browseCategoriesCategoryIdGet(
        categoryId: categoryId, country: country, locale: locale);
  }

  ///Get Single Browse Category
  ///
  ///@param category_id The [Spotify category ID](/documentation/web-api/concepts/spotify-uris-ids) for the category.
  ///@param country A country: an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Provide this parameter to ensure that the category exists for a particular country.
  ///@param locale The desired language, consisting of an [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code and an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), joined by an underscore. For example: `es_MX`, meaning &quot;Spanish (Mexico)&quot;. Provide this parameter if you want the category strings returned in a particular language.<br/> _**Note**: if `locale` is not supplied, or if the specified language is not available, the category strings returned will be in the Spotify default language (American English)._
  @Get(path: '/browse/categories/{category_id}')
  Future<chopper.Response<Object>> _browseCategoriesCategoryIdGet({
    @Path('category_id') required String? categoryId,
    @Query('country') String? country,
    @Query('locale') String? locale,
  });

  ///Get Category's Playlists
  ///
  ///@param category_id The [Spotify category ID](/documentation/web-api/concepts/spotify-uris-ids) for the category.
  ///@param country A country: an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Provide this parameter to ensure that the category exists for a particular country.
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<Object>> browseCategoriesCategoryIdPlaylistsGet({
    required String? categoryId,
    String? country,
    int? limit,
    int? offset,
  }) {
    return _browseCategoriesCategoryIdPlaylistsGet(
        categoryId: categoryId, country: country, limit: limit, offset: offset);
  }

  ///Get Category's Playlists
  ///
  ///@param category_id The [Spotify category ID](/documentation/web-api/concepts/spotify-uris-ids) for the category.
  ///@param country A country: an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Provide this parameter to ensure that the category exists for a particular country.
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/browse/categories/{category_id}/playlists')
  Future<chopper.Response<Object>> _browseCategoriesCategoryIdPlaylistsGet({
    @Path('category_id') required String? categoryId,
    @Query('country') String? country,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Get Playlist Cover Image
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  Future<chopper.Response<ArrayOfImages>> playlistsPlaylistIdImagesGet(
      {required String? playlistId}) {
    generatedMapping.putIfAbsent(
        ImageObject, () => ImageObject.fromJsonFactory);

    return _playlistsPlaylistIdImagesGet(playlistId: playlistId);
  }

  ///Get Playlist Cover Image
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  @Get(path: '/playlists/{playlist_id}/images')
  Future<chopper.Response<ArrayOfImages>> _playlistsPlaylistIdImagesGet(
      {@Path('playlist_id') required String? playlistId});

  ///Add Custom Playlist Cover Image
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  Future<chopper.Response> playlistsPlaylistIdImagesPut({
    required String? playlistId,
    required String? body,
  }) {
    return _playlistsPlaylistIdImagesPut(playlistId: playlistId, body: body);
  }

  ///Add Custom Playlist Cover Image
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  @Put(
    path: '/playlists/{playlist_id}/images',
    optionalBody: true,
  )
  Future<chopper.Response> _playlistsPlaylistIdImagesPut({
    @Path('playlist_id') required String? playlistId,
    @Body() required String? body,
  });

  ///Get New Releases
  ///
  ///@param country A country: an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Provide this parameter if you want the list of returned items to be relevant to a particular country. If omitted, the returned items will be relevant to all countries.
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<PagedAlbums>> browseNewReleasesGet({
    String? country,
    int? limit,
    int? offset,
  }) {
    generatedMapping.putIfAbsent(
        PagedAlbums, () => PagedAlbums.fromJsonFactory);

    return _browseNewReleasesGet(
        country: country, limit: limit, offset: offset);
  }

  ///Get New Releases
  ///
  ///@param country A country: an [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Provide this parameter if you want the list of returned items to be relevant to a particular country. If omitted, the returned items will be relevant to all countries.
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/browse/new-releases')
  Future<chopper.Response<PagedAlbums>> _browseNewReleasesGet({
    @Query('country') String? country,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Get Followed Artists
  ///
  ///@param type The ID type: currently only `artist` is supported.
  ///@param after The last artist ID retrieved from the previous request.
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  Future<chopper.Response<CursorPagedArtists>> meFollowingGet({
    required enums.MeFollowingGetType? type,
    String? after,
    int? limit,
  }) {
    generatedMapping.putIfAbsent(
        CursorPagedArtists, () => CursorPagedArtists.fromJsonFactory);

    return _meFollowingGet(
        type: type?.value?.toString(), after: after, limit: limit);
  }

  ///Get Followed Artists
  ///
  ///@param type The ID type: currently only `artist` is supported.
  ///@param after The last artist ID retrieved from the previous request.
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  @Get(path: '/me/following')
  Future<chopper.Response<CursorPagedArtists>> _meFollowingGet({
    @Query('type') required String? type,
    @Query('after') String? after,
    @Query('limit') int? limit,
  });

  ///Follow Artists or Users
  ///
  ///@param type The ID type.
  ///@param ids A comma-separated list of the artist or the user [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). A maximum of 50 IDs can be sent in one request.
  Future<chopper.Response> meFollowingPut({
    required enums.MeFollowingPutType? type,
    required String? ids,
    required MeFollowingPut$RequestBody? body,
  }) {
    return _meFollowingPut(type: type?.value?.toString(), ids: ids, body: body);
  }

  ///Follow Artists or Users
  ///
  ///@param type The ID type.
  ///@param ids A comma-separated list of the artist or the user [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). A maximum of 50 IDs can be sent in one request.
  @Put(
    path: '/me/following',
    optionalBody: true,
  )
  Future<chopper.Response> _meFollowingPut({
    @Query('type') required String? type,
    @Query('ids') required String? ids,
    @Body() required MeFollowingPut$RequestBody? body,
  });

  ///Unfollow Artists or Users
  ///
  ///@param type The ID type: either `artist` or `user`.
  ///@param ids A comma-separated list of the artist or the user [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=74ASZWbe4lXaubB36ztrGX,08td7MxkoHQkXnWAYD8d6Q`. A maximum of 50 IDs can be sent in one request.
  Future<chopper.Response> meFollowingDelete({
    required enums.MeFollowingDeleteType? type,
    required String? ids,
    required MeFollowingDelete$RequestBody? body,
  }) {
    return _meFollowingDelete(
        type: type?.value?.toString(), ids: ids, body: body);
  }

  ///Unfollow Artists or Users
  ///
  ///@param type The ID type: either `artist` or `user`.
  ///@param ids A comma-separated list of the artist or the user [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example: `ids=74ASZWbe4lXaubB36ztrGX,08td7MxkoHQkXnWAYD8d6Q`. A maximum of 50 IDs can be sent in one request.
  @Delete(path: '/me/following')
  Future<chopper.Response> _meFollowingDelete({
    @Query('type') required String? type,
    @Query('ids') required String? ids,
    @Body() required MeFollowingDelete$RequestBody? body,
  });

  ///Check If User Follows Artists or Users
  ///
  ///@param type The ID type: either `artist` or `user`.
  ///@param ids A comma-separated list of the artist or the user [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) to check. For example: `ids=74ASZWbe4lXaubB36ztrGX,08td7MxkoHQkXnWAYD8d6Q`. A maximum of 50 IDs can be sent in one request.
  Future<chopper.Response<ArrayOfBooleans>> meFollowingContainsGet({
    required enums.MeFollowingContainsGetType? type,
    required String? ids,
  }) {
    return _meFollowingContainsGet(type: type?.value?.toString(), ids: ids);
  }

  ///Check If User Follows Artists or Users
  ///
  ///@param type The ID type: either `artist` or `user`.
  ///@param ids A comma-separated list of the artist or the user [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) to check. For example: `ids=74ASZWbe4lXaubB36ztrGX,08td7MxkoHQkXnWAYD8d6Q`. A maximum of 50 IDs can be sent in one request.
  @Get(path: '/me/following/contains')
  Future<chopper.Response<ArrayOfBooleans>> _meFollowingContainsGet({
    @Query('type') required String? type,
    @Query('ids') required String? ids,
  });

  ///Check if Users Follow Playlist
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  ///@param ids A comma-separated list of [Spotify User IDs](/documentation/web-api/concepts/spotify-uris-ids) ; the ids of the users that you want to check to see if they follow the playlist. Maximum: 5 ids.
  Future<chopper.Response<ArrayOfBooleans>>
      playlistsPlaylistIdFollowersContainsGet({
    required String? playlistId,
    required String? ids,
  }) {
    return _playlistsPlaylistIdFollowersContainsGet(
        playlistId: playlistId, ids: ids);
  }

  ///Check if Users Follow Playlist
  ///
  ///@param playlist_id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) of the playlist.
  ///@param ids A comma-separated list of [Spotify User IDs](/documentation/web-api/concepts/spotify-uris-ids) ; the ids of the users that you want to check to see if they follow the playlist. Maximum: 5 ids.
  @Get(path: '/playlists/{playlist_id}/followers/contains')
  Future<chopper.Response<ArrayOfBooleans>>
      _playlistsPlaylistIdFollowersContainsGet({
    @Path('playlist_id') required String? playlistId,
    @Query('ids') required String? ids,
  });

  ///Get Tracks' Audio Features
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the tracks. Maximum: 100 IDs.
  Future<chopper.Response<ManyAudioFeatures>> audioFeaturesGet(
      {required String? ids}) {
    generatedMapping.putIfAbsent(
        ManyAudioFeatures, () => ManyAudioFeatures.fromJsonFactory);

    return _audioFeaturesGet(ids: ids);
  }

  ///Get Tracks' Audio Features
  ///
  ///@param ids A comma-separated list of the [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for the tracks. Maximum: 100 IDs.
  @Get(path: '/audio-features')
  Future<chopper.Response<ManyAudioFeatures>> _audioFeaturesGet(
      {@Query('ids') required String? ids});

  ///Get Track's Audio Features
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track.
  Future<chopper.Response<Object>> audioFeaturesIdGet({required String? id}) {
    return _audioFeaturesIdGet(id: id);
  }

  ///Get Track's Audio Features
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track.
  @Get(path: '/audio-features/{id}')
  Future<chopper.Response<Object>> _audioFeaturesIdGet(
      {@Path('id') required String? id});

  ///Get Track's Audio Analysis
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track.
  Future<chopper.Response<Object>> audioAnalysisIdGet({required String? id}) {
    return _audioAnalysisIdGet(id: id);
  }

  ///Get Track's Audio Analysis
  ///
  ///@param id The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track.
  @Get(path: '/audio-analysis/{id}')
  Future<chopper.Response<Object>> _audioAnalysisIdGet(
      {@Path('id') required String? id});

  ///Get Recommendations
  ///
  ///@param limit The target size of the list of recommended tracks. For seeds with unusually small pools or when highly restrictive filtering is applied, it may be impossible to generate the requested number of recommended tracks. Debugging information for such cases is available in the response. Default: 20\. Minimum: 1\. Maximum: 100.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param seed_artists A comma separated list of [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for seed artists.  Up to 5 seed values may be provided in any combination of `seed_artists`, `seed_tracks` and `seed_genres`.
  ///@param seed_genres A comma separated list of any genres in the set of [available genre seeds](#available-genre-seeds).  Up to 5 seed values may be provided in any combination of `seed_artists`, `seed_tracks` and `seed_genres`.
  ///@param seed_tracks A comma separated list of [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for a seed track.  Up to 5 seed values may be provided in any combination of `seed_artists`, `seed_tracks` and `seed_genres`.
  ///@param min_acousticness For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_acousticness For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_acousticness For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_danceability For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_danceability For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_danceability For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_duration_ms For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_duration_ms For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_duration_ms Target duration of the track (ms)
  ///@param min_energy For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_energy For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_energy For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_instrumentalness For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_instrumentalness For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_instrumentalness For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_key For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_key For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_key For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_liveness For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_liveness For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_liveness For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_loudness For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_loudness For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_loudness For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_mode For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_mode For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_mode For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_popularity For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_popularity For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_popularity For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_speechiness For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_speechiness For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_speechiness For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_tempo For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_tempo For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_tempo Target tempo (BPM)
  ///@param min_time_signature For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_time_signature For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_time_signature For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_valence For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_valence For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_valence For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  Future<chopper.Response<Object>> recommendationsGet({
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
    return _recommendationsGet(
        limit: limit,
        market: market,
        seedArtists: seedArtists,
        seedGenres: seedGenres,
        seedTracks: seedTracks,
        minAcousticness: minAcousticness,
        maxAcousticness: maxAcousticness,
        targetAcousticness: targetAcousticness,
        minDanceability: minDanceability,
        maxDanceability: maxDanceability,
        targetDanceability: targetDanceability,
        minDurationMs: minDurationMs,
        maxDurationMs: maxDurationMs,
        targetDurationMs: targetDurationMs,
        minEnergy: minEnergy,
        maxEnergy: maxEnergy,
        targetEnergy: targetEnergy,
        minInstrumentalness: minInstrumentalness,
        maxInstrumentalness: maxInstrumentalness,
        targetInstrumentalness: targetInstrumentalness,
        minKey: minKey,
        maxKey: maxKey,
        targetKey: targetKey,
        minLiveness: minLiveness,
        maxLiveness: maxLiveness,
        targetLiveness: targetLiveness,
        minLoudness: minLoudness,
        maxLoudness: maxLoudness,
        targetLoudness: targetLoudness,
        minMode: minMode,
        maxMode: maxMode,
        targetMode: targetMode,
        minPopularity: minPopularity,
        maxPopularity: maxPopularity,
        targetPopularity: targetPopularity,
        minSpeechiness: minSpeechiness,
        maxSpeechiness: maxSpeechiness,
        targetSpeechiness: targetSpeechiness,
        minTempo: minTempo,
        maxTempo: maxTempo,
        targetTempo: targetTempo,
        minTimeSignature: minTimeSignature,
        maxTimeSignature: maxTimeSignature,
        targetTimeSignature: targetTimeSignature,
        minValence: minValence,
        maxValence: maxValence,
        targetValence: targetValence);
  }

  ///Get Recommendations
  ///
  ///@param limit The target size of the list of recommended tracks. For seeds with unusually small pools or when highly restrictive filtering is applied, it may be impossible to generate the requested number of recommended tracks. Debugging information for such cases is available in the response. Default: 20\. Minimum: 1\. Maximum: 100.
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param seed_artists A comma separated list of [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for seed artists.  Up to 5 seed values may be provided in any combination of `seed_artists`, `seed_tracks` and `seed_genres`.
  ///@param seed_genres A comma separated list of any genres in the set of [available genre seeds](#available-genre-seeds).  Up to 5 seed values may be provided in any combination of `seed_artists`, `seed_tracks` and `seed_genres`.
  ///@param seed_tracks A comma separated list of [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids) for a seed track.  Up to 5 seed values may be provided in any combination of `seed_artists`, `seed_tracks` and `seed_genres`.
  ///@param min_acousticness For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_acousticness For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_acousticness For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_danceability For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_danceability For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_danceability For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_duration_ms For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_duration_ms For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_duration_ms Target duration of the track (ms)
  ///@param min_energy For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_energy For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_energy For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_instrumentalness For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_instrumentalness For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_instrumentalness For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_key For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_key For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_key For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_liveness For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_liveness For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_liveness For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_loudness For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_loudness For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_loudness For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_mode For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_mode For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_mode For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_popularity For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_popularity For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_popularity For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_speechiness For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_speechiness For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_speechiness For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_tempo For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_tempo For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_tempo Target tempo (BPM)
  ///@param min_time_signature For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_time_signature For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_time_signature For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  ///@param min_valence For each tunable track attribute, a hard floor on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `min_tempo=140` would restrict results to only those tracks with a tempo of greater than 140 beats per minute.
  ///@param max_valence For each tunable track attribute, a hard ceiling on the selected track attribute’s value can be provided. See tunable track attributes below for the list of available options. For example, `max_instrumentalness=0.35` would filter out most tracks that are likely to be instrumental.
  ///@param target_valence For each of the tunable track attributes (below) a target value may be provided. Tracks with the attribute values nearest to the target values will be preferred. For example, you might request `target_energy=0.6` and `target_danceability=0.8`. All target values will be weighed equally in ranking results.
  @Get(path: '/recommendations')
  Future<chopper.Response<Object>> _recommendationsGet({
    @Query('limit') int? limit,
    @Query('market') String? market,
    @Query('seed_artists') String? seedArtists,
    @Query('seed_genres') String? seedGenres,
    @Query('seed_tracks') String? seedTracks,
    @Query('min_acousticness') num? minAcousticness,
    @Query('max_acousticness') num? maxAcousticness,
    @Query('target_acousticness') num? targetAcousticness,
    @Query('min_danceability') num? minDanceability,
    @Query('max_danceability') num? maxDanceability,
    @Query('target_danceability') num? targetDanceability,
    @Query('min_duration_ms') int? minDurationMs,
    @Query('max_duration_ms') int? maxDurationMs,
    @Query('target_duration_ms') int? targetDurationMs,
    @Query('min_energy') num? minEnergy,
    @Query('max_energy') num? maxEnergy,
    @Query('target_energy') num? targetEnergy,
    @Query('min_instrumentalness') num? minInstrumentalness,
    @Query('max_instrumentalness') num? maxInstrumentalness,
    @Query('target_instrumentalness') num? targetInstrumentalness,
    @Query('min_key') int? minKey,
    @Query('max_key') int? maxKey,
    @Query('target_key') int? targetKey,
    @Query('min_liveness') num? minLiveness,
    @Query('max_liveness') num? maxLiveness,
    @Query('target_liveness') num? targetLiveness,
    @Query('min_loudness') num? minLoudness,
    @Query('max_loudness') num? maxLoudness,
    @Query('target_loudness') num? targetLoudness,
    @Query('min_mode') int? minMode,
    @Query('max_mode') int? maxMode,
    @Query('target_mode') int? targetMode,
    @Query('min_popularity') int? minPopularity,
    @Query('max_popularity') int? maxPopularity,
    @Query('target_popularity') int? targetPopularity,
    @Query('min_speechiness') num? minSpeechiness,
    @Query('max_speechiness') num? maxSpeechiness,
    @Query('target_speechiness') num? targetSpeechiness,
    @Query('min_tempo') num? minTempo,
    @Query('max_tempo') num? maxTempo,
    @Query('target_tempo') num? targetTempo,
    @Query('min_time_signature') int? minTimeSignature,
    @Query('max_time_signature') int? maxTimeSignature,
    @Query('target_time_signature') int? targetTimeSignature,
    @Query('min_valence') num? minValence,
    @Query('max_valence') num? maxValence,
    @Query('target_valence') num? targetValence,
  });

  ///Get Available Genre Seeds
  ///
  Future<chopper.Response<ManyGenres>> recommendationsAvailableGenreSeedsGet() {
    generatedMapping.putIfAbsent(ManyGenres, () => ManyGenres.fromJsonFactory);

    return _recommendationsAvailableGenreSeedsGet();
  }

  ///Get Available Genre Seeds
  ///
  @Get(path: '/recommendations/available-genre-seeds')
  Future<chopper.Response<ManyGenres>> _recommendationsAvailableGenreSeedsGet();

  ///Get Playback State
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param additional_types A comma-separated list of item types that your client supports besides the default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**: This parameter was introduced to allow existing clients to maintain their current behaviour and might be deprecated in the future._<br/> In addition to providing this parameter, make sure that your client properly handles cases of new types in the future by checking against the `type` field of each object.
  Future<chopper.Response<Object>> mePlayerGet({
    String? market,
    String? additionalTypes,
  }) {
    return _mePlayerGet(market: market, additionalTypes: additionalTypes);
  }

  ///Get Playback State
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param additional_types A comma-separated list of item types that your client supports besides the default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**: This parameter was introduced to allow existing clients to maintain their current behaviour and might be deprecated in the future._<br/> In addition to providing this parameter, make sure that your client properly handles cases of new types in the future by checking against the `type` field of each object.
  @Get(path: '/me/player')
  Future<chopper.Response<Object>> _mePlayerGet({
    @Query('market') String? market,
    @Query('additional_types') String? additionalTypes,
  });

  ///Transfer Playback
  ///
  Future<chopper.Response> mePlayerPut(
      {required MePlayerPut$RequestBody? body}) {
    return _mePlayerPut(body: body);
  }

  ///Transfer Playback
  ///
  @Put(
    path: '/me/player',
    optionalBody: true,
  )
  Future<chopper.Response> _mePlayerPut(
      {@Body() required MePlayerPut$RequestBody? body});

  ///Get Available Devices
  ///
  Future<chopper.Response<Object>> mePlayerDevicesGet() {
    return _mePlayerDevicesGet();
  }

  ///Get Available Devices
  ///
  @Get(path: '/me/player/devices')
  Future<chopper.Response<Object>> _mePlayerDevicesGet();

  ///Get Currently Playing Track
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param additional_types A comma-separated list of item types that your client supports besides the default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**: This parameter was introduced to allow existing clients to maintain their current behaviour and might be deprecated in the future._<br/> In addition to providing this parameter, make sure that your client properly handles cases of new types in the future by checking against the `type` field of each object.
  Future<chopper.Response<Object>> mePlayerCurrentlyPlayingGet({
    String? market,
    String? additionalTypes,
  }) {
    return _mePlayerCurrentlyPlayingGet(
        market: market, additionalTypes: additionalTypes);
  }

  ///Get Currently Playing Track
  ///
  ///@param market An [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).   If a country code is specified, only content that is available in that market will be returned.<br/>   If a valid user access token is specified in the request header, the country associated with   the user account will take priority over this parameter.<br/>   _**Note**: If neither market or user country are provided, the content is considered unavailable for the client._<br/>   Users can view the country that is associated with their account in the [account settings](https://www.spotify.com/se/account/overview/).
  ///@param additional_types A comma-separated list of item types that your client supports besides the default `track` type. Valid types are: `track` and `episode`.<br/> _**Note**: This parameter was introduced to allow existing clients to maintain their current behaviour and might be deprecated in the future._<br/> In addition to providing this parameter, make sure that your client properly handles cases of new types in the future by checking against the `type` field of each object.
  @Get(path: '/me/player/currently-playing')
  Future<chopper.Response<Object>> _mePlayerCurrentlyPlayingGet({
    @Query('market') String? market,
    @Query('additional_types') String? additionalTypes,
  });

  ///Start/Resume Playback
  ///
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  Future<chopper.Response> mePlayerPlayPut({
    String? deviceId,
    required MePlayerPlayPut$RequestBody? body,
  }) {
    return _mePlayerPlayPut(deviceId: deviceId, body: body);
  }

  ///Start/Resume Playback
  ///
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  @Put(
    path: '/me/player/play',
    optionalBody: true,
  )
  Future<chopper.Response> _mePlayerPlayPut({
    @Query('device_id') String? deviceId,
    @Body() required MePlayerPlayPut$RequestBody? body,
  });

  ///Pause Playback
  ///
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  Future<chopper.Response> mePlayerPausePut({String? deviceId}) {
    return _mePlayerPausePut(deviceId: deviceId);
  }

  ///Pause Playback
  ///
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  @Put(
    path: '/me/player/pause',
    optionalBody: true,
  )
  Future<chopper.Response> _mePlayerPausePut(
      {@Query('device_id') String? deviceId});

  ///Skip To Next
  ///
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  Future<chopper.Response> mePlayerNextPost({String? deviceId}) {
    return _mePlayerNextPost(deviceId: deviceId);
  }

  ///Skip To Next
  ///
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  @Post(
    path: '/me/player/next',
    optionalBody: true,
  )
  Future<chopper.Response> _mePlayerNextPost(
      {@Query('device_id') String? deviceId});

  ///Skip To Previous
  ///
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  Future<chopper.Response> mePlayerPreviousPost({String? deviceId}) {
    return _mePlayerPreviousPost(deviceId: deviceId);
  }

  ///Skip To Previous
  ///
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  @Post(
    path: '/me/player/previous',
    optionalBody: true,
  )
  Future<chopper.Response> _mePlayerPreviousPost(
      {@Query('device_id') String? deviceId});

  ///Seek To Position
  ///
  ///@param position_ms The position in milliseconds to seek to. Must be a positive number. Passing in a position that is greater than the length of the track will cause the player to start playing the next song.
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  Future<chopper.Response> mePlayerSeekPut({
    required int? positionMs,
    String? deviceId,
  }) {
    return _mePlayerSeekPut(positionMs: positionMs, deviceId: deviceId);
  }

  ///Seek To Position
  ///
  ///@param position_ms The position in milliseconds to seek to. Must be a positive number. Passing in a position that is greater than the length of the track will cause the player to start playing the next song.
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  @Put(
    path: '/me/player/seek',
    optionalBody: true,
  )
  Future<chopper.Response> _mePlayerSeekPut({
    @Query('position_ms') required int? positionMs,
    @Query('device_id') String? deviceId,
  });

  ///Set Repeat Mode
  ///
  ///@param state **track**, **context** or **off**.<br/> **track** will repeat the current track.<br/> **context** will repeat the current context.<br/> **off** will turn repeat off.
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  Future<chopper.Response> mePlayerRepeatPut({
    required String? state,
    String? deviceId,
  }) {
    return _mePlayerRepeatPut(state: state, deviceId: deviceId);
  }

  ///Set Repeat Mode
  ///
  ///@param state **track**, **context** or **off**.<br/> **track** will repeat the current track.<br/> **context** will repeat the current context.<br/> **off** will turn repeat off.
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  @Put(
    path: '/me/player/repeat',
    optionalBody: true,
  )
  Future<chopper.Response> _mePlayerRepeatPut({
    @Query('state') required String? state,
    @Query('device_id') String? deviceId,
  });

  ///Set Playback Volume
  ///
  ///@param volume_percent The volume to set. Must be a value from 0 to 100 inclusive.
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  Future<chopper.Response> mePlayerVolumePut({
    required int? volumePercent,
    String? deviceId,
  }) {
    return _mePlayerVolumePut(volumePercent: volumePercent, deviceId: deviceId);
  }

  ///Set Playback Volume
  ///
  ///@param volume_percent The volume to set. Must be a value from 0 to 100 inclusive.
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  @Put(
    path: '/me/player/volume',
    optionalBody: true,
  )
  Future<chopper.Response> _mePlayerVolumePut({
    @Query('volume_percent') required int? volumePercent,
    @Query('device_id') String? deviceId,
  });

  ///Toggle Playback Shuffle
  ///
  ///@param state **true** : Shuffle user's playback.<br/> **false** : Do not shuffle user's playback.
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  Future<chopper.Response> mePlayerShufflePut({
    required bool? state,
    String? deviceId,
  }) {
    return _mePlayerShufflePut(state: state, deviceId: deviceId);
  }

  ///Toggle Playback Shuffle
  ///
  ///@param state **true** : Shuffle user's playback.<br/> **false** : Do not shuffle user's playback.
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  @Put(
    path: '/me/player/shuffle',
    optionalBody: true,
  )
  Future<chopper.Response> _mePlayerShufflePut({
    @Query('state') required bool? state,
    @Query('device_id') String? deviceId,
  });

  ///Get Recently Played Tracks
  ///
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param after A Unix timestamp in milliseconds. Returns all items after (but not including) this cursor position. If `after` is specified, `before` must not be specified.
  ///@param before A Unix timestamp in milliseconds. Returns all items before (but not including) this cursor position. If `before` is specified, `after` must not be specified.
  Future<chopper.Response<Object>> mePlayerRecentlyPlayedGet({
    int? limit,
    int? after,
    int? before,
  }) {
    return _mePlayerRecentlyPlayedGet(
        limit: limit, after: after, before: before);
  }

  ///Get Recently Played Tracks
  ///
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param after A Unix timestamp in milliseconds. Returns all items after (but not including) this cursor position. If `after` is specified, `before` must not be specified.
  ///@param before A Unix timestamp in milliseconds. Returns all items before (but not including) this cursor position. If `before` is specified, `after` must not be specified.
  @Get(path: '/me/player/recently-played')
  Future<chopper.Response<Object>> _mePlayerRecentlyPlayedGet({
    @Query('limit') int? limit,
    @Query('after') int? after,
    @Query('before') int? before,
  });

  ///Get the User's Queue
  ///
  Future<chopper.Response<Object>> mePlayerQueueGet() {
    return _mePlayerQueueGet();
  }

  ///Get the User's Queue
  ///
  @Get(path: '/me/player/queue')
  Future<chopper.Response<Object>> _mePlayerQueueGet();

  ///Add Item to Playback Queue
  ///
  ///@param uri The uri of the item to add to the queue. Must be a track or an episode uri.
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  Future<chopper.Response> mePlayerQueuePost({
    required String? uri,
    String? deviceId,
  }) {
    return _mePlayerQueuePost(uri: uri, deviceId: deviceId);
  }

  ///Add Item to Playback Queue
  ///
  ///@param uri The uri of the item to add to the queue. Must be a track or an episode uri.
  ///@param device_id The id of the device this command is targeting. If not supplied, the user's currently active device is the target.
  @Post(
    path: '/me/player/queue',
    optionalBody: true,
  )
  Future<chopper.Response> _mePlayerQueuePost({
    @Query('uri') required String? uri,
    @Query('device_id') String? deviceId,
  });

  ///Get Available Markets
  ///
  Future<chopper.Response<Markets>> marketsGet() {
    generatedMapping.putIfAbsent(Markets, () => Markets.fromJsonFactory);

    return _marketsGet();
  }

  ///Get Available Markets
  ///
  @Get(path: '/markets')
  Future<chopper.Response<Markets>> _marketsGet();

  ///Get User's Top Artists
  ///
  ///@param time_range Over what time frame the affinities are computed. Valid values: `long_term` (calculated from several years of data and including all new data as it becomes available), `medium_term` (approximately last 6 months), `short_term` (approximately last 4 weeks). Default: `medium_term`
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<Object>> meTopArtistsGet({
    String? timeRange,
    int? limit,
    int? offset,
  }) {
    return _meTopArtistsGet(timeRange: timeRange, limit: limit, offset: offset);
  }

  ///Get User's Top Artists
  ///
  ///@param time_range Over what time frame the affinities are computed. Valid values: `long_term` (calculated from several years of data and including all new data as it becomes available), `medium_term` (approximately last 6 months), `short_term` (approximately last 4 weeks). Default: `medium_term`
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/me/top/artists')
  Future<chopper.Response<Object>> _meTopArtistsGet({
    @Query('time_range') String? timeRange,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  ///Get User's Top Tracks
  ///
  ///@param time_range Over what time frame the affinities are computed. Valid values: `long_term` (calculated from several years of data and including all new data as it becomes available), `medium_term` (approximately last 6 months), `short_term` (approximately last 4 weeks). Default: `medium_term`
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  Future<chopper.Response<Object>> meTopTracksGet({
    String? timeRange,
    int? limit,
    int? offset,
  }) {
    return _meTopTracksGet(timeRange: timeRange, limit: limit, offset: offset);
  }

  ///Get User's Top Tracks
  ///
  ///@param time_range Over what time frame the affinities are computed. Valid values: `long_term` (calculated from several years of data and including all new data as it becomes available), `medium_term` (approximately last 6 months), `short_term` (approximately last 4 weeks). Default: `medium_term`
  ///@param limit The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
  ///@param offset The index of the first item to return. Default: 0 (the first item). Use with limit to get the next set of items.
  @Get(path: '/me/top/tracks')
  Future<chopper.Response<Object>> _meTopTracksGet({
    @Query('time_range') String? timeRange,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });
}

@JsonSerializable(explicitToJson: true)
class LinkedTrackObject {
  LinkedTrackObject({
    this.externalUrls,
    this.href,
    this.id,
    this.type,
    this.uri,
  });

  factory LinkedTrackObject.fromJson(Map<String, dynamic> json) =>
      _$LinkedTrackObjectFromJson(json);

  static const toJsonFactory = _$LinkedTrackObjectToJson;
  Map<String, dynamic> toJson() => _$LinkedTrackObjectToJson(this);

  @JsonKey(name: 'external_urls')
  final ExternalUrlObject? externalUrls;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory = _$LinkedTrackObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LinkedTrackObject &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $LinkedTrackObjectExtension on LinkedTrackObject {
  LinkedTrackObject copyWith(
      {ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      String? type,
      String? uri}) {
    return LinkedTrackObject(
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        type: type ?? this.type,
        uri: uri ?? this.uri);
  }

  LinkedTrackObject copyWithWrapped(
      {Wrapped<ExternalUrlObject?>? externalUrls,
      Wrapped<String?>? href,
      Wrapped<String?>? id,
      Wrapped<String?>? type,
      Wrapped<String?>? uri}) {
    return LinkedTrackObject(
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class TrackRestrictionObject {
  TrackRestrictionObject({
    this.reason,
  });

  factory TrackRestrictionObject.fromJson(Map<String, dynamic> json) =>
      _$TrackRestrictionObjectFromJson(json);

  static const toJsonFactory = _$TrackRestrictionObjectToJson;
  Map<String, dynamic> toJson() => _$TrackRestrictionObjectToJson(this);

  @JsonKey(name: 'reason')
  final String? reason;
  static const fromJsonFactory = _$TrackRestrictionObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackRestrictionObject &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reason) ^ runtimeType.hashCode;
}

extension $TrackRestrictionObjectExtension on TrackRestrictionObject {
  TrackRestrictionObject copyWith({String? reason}) {
    return TrackRestrictionObject(reason: reason ?? this.reason);
  }

  TrackRestrictionObject copyWithWrapped({Wrapped<String?>? reason}) {
    return TrackRestrictionObject(
        reason: (reason != null ? reason.value : this.reason));
  }
}

@JsonSerializable(explicitToJson: true)
class AlbumRestrictionObject {
  AlbumRestrictionObject({
    this.reason,
  });

  factory AlbumRestrictionObject.fromJson(Map<String, dynamic> json) =>
      _$AlbumRestrictionObjectFromJson(json);

  static const toJsonFactory = _$AlbumRestrictionObjectToJson;
  Map<String, dynamic> toJson() => _$AlbumRestrictionObjectToJson(this);

  @JsonKey(
    name: 'reason',
    toJson: albumRestrictionObjectReasonToJson,
    fromJson: albumRestrictionObjectReasonFromJson,
  )
  final enums.AlbumRestrictionObjectReason? reason;
  static const fromJsonFactory = _$AlbumRestrictionObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AlbumRestrictionObject &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reason) ^ runtimeType.hashCode;
}

extension $AlbumRestrictionObjectExtension on AlbumRestrictionObject {
  AlbumRestrictionObject copyWith(
      {enums.AlbumRestrictionObjectReason? reason}) {
    return AlbumRestrictionObject(reason: reason ?? this.reason);
  }

  AlbumRestrictionObject copyWithWrapped(
      {Wrapped<enums.AlbumRestrictionObjectReason?>? reason}) {
    return AlbumRestrictionObject(
        reason: (reason != null ? reason.value : this.reason));
  }
}

@JsonSerializable(explicitToJson: true)
class EpisodeRestrictionObject {
  EpisodeRestrictionObject({
    this.reason,
  });

  factory EpisodeRestrictionObject.fromJson(Map<String, dynamic> json) =>
      _$EpisodeRestrictionObjectFromJson(json);

  static const toJsonFactory = _$EpisodeRestrictionObjectToJson;
  Map<String, dynamic> toJson() => _$EpisodeRestrictionObjectToJson(this);

  @JsonKey(name: 'reason')
  final String? reason;
  static const fromJsonFactory = _$EpisodeRestrictionObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpisodeRestrictionObject &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reason) ^ runtimeType.hashCode;
}

extension $EpisodeRestrictionObjectExtension on EpisodeRestrictionObject {
  EpisodeRestrictionObject copyWith({String? reason}) {
    return EpisodeRestrictionObject(reason: reason ?? this.reason);
  }

  EpisodeRestrictionObject copyWithWrapped({Wrapped<String?>? reason}) {
    return EpisodeRestrictionObject(
        reason: (reason != null ? reason.value : this.reason));
  }
}

@JsonSerializable(explicitToJson: true)
class ChapterRestrictionObject {
  ChapterRestrictionObject({
    this.reason,
  });

  factory ChapterRestrictionObject.fromJson(Map<String, dynamic> json) =>
      _$ChapterRestrictionObjectFromJson(json);

  static const toJsonFactory = _$ChapterRestrictionObjectToJson;
  Map<String, dynamic> toJson() => _$ChapterRestrictionObjectToJson(this);

  @JsonKey(name: 'reason')
  final String? reason;
  static const fromJsonFactory = _$ChapterRestrictionObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterRestrictionObject &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reason) ^ runtimeType.hashCode;
}

extension $ChapterRestrictionObjectExtension on ChapterRestrictionObject {
  ChapterRestrictionObject copyWith({String? reason}) {
    return ChapterRestrictionObject(reason: reason ?? this.reason);
  }

  ChapterRestrictionObject copyWithWrapped({Wrapped<String?>? reason}) {
    return ChapterRestrictionObject(
        reason: (reason != null ? reason.value : this.reason));
  }
}

@JsonSerializable(explicitToJson: true)
class ArtistObject {
  ArtistObject({
    this.externalUrls,
    this.followers,
    this.genres,
    this.href,
    this.id,
    this.images,
    this.name,
    this.popularity,
    this.type,
    this.uri,
  });

  factory ArtistObject.fromJson(Map<String, dynamic> json) =>
      _$ArtistObjectFromJson(json);

  static const toJsonFactory = _$ArtistObjectToJson;
  Map<String, dynamic> toJson() => _$ArtistObjectToJson(this);

  @JsonKey(name: 'external_urls')
  final ExternalUrlObject? externalUrls;
  @JsonKey(name: 'followers')
  final FollowersObject? followers;
  @JsonKey(name: 'genres', defaultValue: <String>[])
  final List<String>? genres;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject>? images;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'popularity')
  final int? popularity;
  @JsonKey(
    name: 'type',
    toJson: artistObjectTypeToJson,
    fromJson: artistObjectTypeFromJson,
  )
  final enums.ArtistObjectType? type;
  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory = _$ArtistObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ArtistObject &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $ArtistObjectExtension on ArtistObject {
  ArtistObject copyWith(
      {ExternalUrlObject? externalUrls,
      FollowersObject? followers,
      List<String>? genres,
      String? href,
      String? id,
      List<ImageObject>? images,
      String? name,
      int? popularity,
      enums.ArtistObjectType? type,
      String? uri}) {
    return ArtistObject(
        externalUrls: externalUrls ?? this.externalUrls,
        followers: followers ?? this.followers,
        genres: genres ?? this.genres,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        name: name ?? this.name,
        popularity: popularity ?? this.popularity,
        type: type ?? this.type,
        uri: uri ?? this.uri);
  }

  ArtistObject copyWithWrapped(
      {Wrapped<ExternalUrlObject?>? externalUrls,
      Wrapped<FollowersObject?>? followers,
      Wrapped<List<String>?>? genres,
      Wrapped<String?>? href,
      Wrapped<String?>? id,
      Wrapped<List<ImageObject>?>? images,
      Wrapped<String?>? name,
      Wrapped<int?>? popularity,
      Wrapped<enums.ArtistObjectType?>? type,
      Wrapped<String?>? uri}) {
    return ArtistObject(
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        followers: (followers != null ? followers.value : this.followers),
        genres: (genres != null ? genres.value : this.genres),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        name: (name != null ? name.value : this.name),
        popularity: (popularity != null ? popularity.value : this.popularity),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class SimplifiedArtistObject {
  SimplifiedArtistObject({
    this.externalUrls,
    this.href,
    this.id,
    this.name,
    this.type,
    this.uri,
  });

  factory SimplifiedArtistObject.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedArtistObjectFromJson(json);

  static const toJsonFactory = _$SimplifiedArtistObjectToJson;
  Map<String, dynamic> toJson() => _$SimplifiedArtistObjectToJson(this);

  @JsonKey(name: 'external_urls')
  final ExternalUrlObject? externalUrls;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(
    name: 'type',
    toJson: simplifiedArtistObjectTypeToJson,
    fromJson: simplifiedArtistObjectTypeFromJson,
  )
  final enums.SimplifiedArtistObjectType? type;
  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory = _$SimplifiedArtistObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SimplifiedArtistObject &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $SimplifiedArtistObjectExtension on SimplifiedArtistObject {
  SimplifiedArtistObject copyWith(
      {ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      String? name,
      enums.SimplifiedArtistObjectType? type,
      String? uri}) {
    return SimplifiedArtistObject(
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        uri: uri ?? this.uri);
  }

  SimplifiedArtistObject copyWithWrapped(
      {Wrapped<ExternalUrlObject?>? externalUrls,
      Wrapped<String?>? href,
      Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<enums.SimplifiedArtistObjectType?>? type,
      Wrapped<String?>? uri}) {
    return SimplifiedArtistObject(
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class PlayHistoryObject {
  PlayHistoryObject({
    this.track,
    this.playedAt,
    this.context,
  });

  factory PlayHistoryObject.fromJson(Map<String, dynamic> json) =>
      _$PlayHistoryObjectFromJson(json);

  static const toJsonFactory = _$PlayHistoryObjectToJson;
  Map<String, dynamic> toJson() => _$PlayHistoryObjectToJson(this);

  @JsonKey(name: 'track')
  final TrackObject? track;
  @JsonKey(name: 'played_at')
  final DateTime? playedAt;
  @JsonKey(name: 'context')
  final ContextObject? context;
  static const fromJsonFactory = _$PlayHistoryObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayHistoryObject &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)) &&
            (identical(other.playedAt, playedAt) ||
                const DeepCollectionEquality()
                    .equals(other.playedAt, playedAt)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(track) ^
      const DeepCollectionEquality().hash(playedAt) ^
      const DeepCollectionEquality().hash(context) ^
      runtimeType.hashCode;
}

extension $PlayHistoryObjectExtension on PlayHistoryObject {
  PlayHistoryObject copyWith(
      {TrackObject? track, DateTime? playedAt, ContextObject? context}) {
    return PlayHistoryObject(
        track: track ?? this.track,
        playedAt: playedAt ?? this.playedAt,
        context: context ?? this.context);
  }

  PlayHistoryObject copyWithWrapped(
      {Wrapped<TrackObject?>? track,
      Wrapped<DateTime?>? playedAt,
      Wrapped<ContextObject?>? context}) {
    return PlayHistoryObject(
        track: (track != null ? track.value : this.track),
        playedAt: (playedAt != null ? playedAt.value : this.playedAt),
        context: (context != null ? context.value : this.context));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaylistTrackObject {
  PlaylistTrackObject({
    this.addedAt,
    this.addedBy,
    this.isLocal,
    this.track,
  });

  factory PlaylistTrackObject.fromJson(Map<String, dynamic> json) =>
      _$PlaylistTrackObjectFromJson(json);

  static const toJsonFactory = _$PlaylistTrackObjectToJson;
  Map<String, dynamic> toJson() => _$PlaylistTrackObjectToJson(this);

  @JsonKey(name: 'added_at')
  final DateTime? addedAt;
  @JsonKey(name: 'added_by')
  final PlaylistUserObject? addedBy;
  @JsonKey(name: 'is_local')
  final bool? isLocal;
  @JsonKey(name: 'track')
  final dynamic track;
  static const fromJsonFactory = _$PlaylistTrackObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistTrackObject &&
            (identical(other.addedAt, addedAt) ||
                const DeepCollectionEquality()
                    .equals(other.addedAt, addedAt)) &&
            (identical(other.addedBy, addedBy) ||
                const DeepCollectionEquality()
                    .equals(other.addedBy, addedBy)) &&
            (identical(other.isLocal, isLocal) ||
                const DeepCollectionEquality()
                    .equals(other.isLocal, isLocal)) &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addedAt) ^
      const DeepCollectionEquality().hash(addedBy) ^
      const DeepCollectionEquality().hash(isLocal) ^
      const DeepCollectionEquality().hash(track) ^
      runtimeType.hashCode;
}

extension $PlaylistTrackObjectExtension on PlaylistTrackObject {
  PlaylistTrackObject copyWith(
      {DateTime? addedAt,
      PlaylistUserObject? addedBy,
      bool? isLocal,
      dynamic track}) {
    return PlaylistTrackObject(
        addedAt: addedAt ?? this.addedAt,
        addedBy: addedBy ?? this.addedBy,
        isLocal: isLocal ?? this.isLocal,
        track: track ?? this.track);
  }

  PlaylistTrackObject copyWithWrapped(
      {Wrapped<DateTime?>? addedAt,
      Wrapped<PlaylistUserObject?>? addedBy,
      Wrapped<bool?>? isLocal,
      Wrapped<dynamic>? track}) {
    return PlaylistTrackObject(
        addedAt: (addedAt != null ? addedAt.value : this.addedAt),
        addedBy: (addedBy != null ? addedBy.value : this.addedBy),
        isLocal: (isLocal != null ? isLocal.value : this.isLocal),
        track: (track != null ? track.value : this.track));
  }
}

@JsonSerializable(explicitToJson: true)
class CurrentlyPlayingObject {
  CurrentlyPlayingObject({
    this.context,
    this.timestamp,
    this.progressMs,
    this.isPlaying,
    this.item,
    this.currentlyPlayingType,
  });

  factory CurrentlyPlayingObject.fromJson(Map<String, dynamic> json) =>
      _$CurrentlyPlayingObjectFromJson(json);

  static const toJsonFactory = _$CurrentlyPlayingObjectToJson;
  Map<String, dynamic> toJson() => _$CurrentlyPlayingObjectToJson(this);

  @JsonKey(name: 'context')
  final ContextObject? context;
  @JsonKey(name: 'timestamp')
  final int? timestamp;
  @JsonKey(name: 'progress_ms')
  final int? progressMs;
  @JsonKey(name: 'is_playing')
  final bool? isPlaying;
  @JsonKey(name: 'item')
  final dynamic item;
  @JsonKey(name: 'currently_playing_type')
  final String? currentlyPlayingType;
  static const fromJsonFactory = _$CurrentlyPlayingObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CurrentlyPlayingObject &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.progressMs, progressMs) ||
                const DeepCollectionEquality()
                    .equals(other.progressMs, progressMs)) &&
            (identical(other.isPlaying, isPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isPlaying, isPlaying)) &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.currentlyPlayingType, currentlyPlayingType) ||
                const DeepCollectionEquality()
                    .equals(other.currentlyPlayingType, currentlyPlayingType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(progressMs) ^
      const DeepCollectionEquality().hash(isPlaying) ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(currentlyPlayingType) ^
      runtimeType.hashCode;
}

extension $CurrentlyPlayingObjectExtension on CurrentlyPlayingObject {
  CurrentlyPlayingObject copyWith(
      {ContextObject? context,
      int? timestamp,
      int? progressMs,
      bool? isPlaying,
      dynamic item,
      String? currentlyPlayingType}) {
    return CurrentlyPlayingObject(
        context: context ?? this.context,
        timestamp: timestamp ?? this.timestamp,
        progressMs: progressMs ?? this.progressMs,
        isPlaying: isPlaying ?? this.isPlaying,
        item: item ?? this.item,
        currentlyPlayingType:
            currentlyPlayingType ?? this.currentlyPlayingType);
  }

  CurrentlyPlayingObject copyWithWrapped(
      {Wrapped<ContextObject?>? context,
      Wrapped<int?>? timestamp,
      Wrapped<int?>? progressMs,
      Wrapped<bool?>? isPlaying,
      Wrapped<dynamic>? item,
      Wrapped<String?>? currentlyPlayingType}) {
    return CurrentlyPlayingObject(
        context: (context != null ? context.value : this.context),
        timestamp: (timestamp != null ? timestamp.value : this.timestamp),
        progressMs: (progressMs != null ? progressMs.value : this.progressMs),
        isPlaying: (isPlaying != null ? isPlaying.value : this.isPlaying),
        item: (item != null ? item.value : this.item),
        currentlyPlayingType: (currentlyPlayingType != null
            ? currentlyPlayingType.value
            : this.currentlyPlayingType));
  }
}

@JsonSerializable(explicitToJson: true)
class QueueObject {
  QueueObject({
    this.currentlyPlaying,
    this.queue,
  });

  factory QueueObject.fromJson(Map<String, dynamic> json) =>
      _$QueueObjectFromJson(json);

  static const toJsonFactory = _$QueueObjectToJson;
  Map<String, dynamic> toJson() => _$QueueObjectToJson(this);

  @JsonKey(name: 'currentlyPlaying')
  final dynamic currentlyPlaying;
  @JsonKey(name: 'queue', defaultValue: <Object>[])
  final List<Object>? queue;
  static const fromJsonFactory = _$QueueObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QueueObject &&
            (identical(other.currentlyPlaying, currentlyPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.currentlyPlaying, currentlyPlaying)) &&
            (identical(other.queue, queue) ||
                const DeepCollectionEquality().equals(other.queue, queue)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currentlyPlaying) ^
      const DeepCollectionEquality().hash(queue) ^
      runtimeType.hashCode;
}

extension $QueueObjectExtension on QueueObject {
  QueueObject copyWith({dynamic currentlyPlaying, List<Object>? queue}) {
    return QueueObject(
        currentlyPlaying: currentlyPlaying ?? this.currentlyPlaying,
        queue: queue ?? this.queue);
  }

  QueueObject copyWithWrapped(
      {Wrapped<dynamic>? currentlyPlaying, Wrapped<List<Object>?>? queue}) {
    return QueueObject(
        currentlyPlaying: (currentlyPlaying != null
            ? currentlyPlaying.value
            : this.currentlyPlaying),
        queue: (queue != null ? queue.value : this.queue));
  }
}

@JsonSerializable(explicitToJson: true)
class CurrentlyPlayingContextObject {
  CurrentlyPlayingContextObject({
    this.device,
    this.repeatState,
    this.shuffleState,
    this.context,
    this.timestamp,
    this.progressMs,
    this.isPlaying,
    this.item,
    this.currentlyPlayingType,
    this.actions,
  });

  factory CurrentlyPlayingContextObject.fromJson(Map<String, dynamic> json) =>
      _$CurrentlyPlayingContextObjectFromJson(json);

  static const toJsonFactory = _$CurrentlyPlayingContextObjectToJson;
  Map<String, dynamic> toJson() => _$CurrentlyPlayingContextObjectToJson(this);

  @JsonKey(name: 'device')
  final DeviceObject? device;
  @JsonKey(name: 'repeat_state')
  final String? repeatState;
  @JsonKey(name: 'shuffle_state')
  final bool? shuffleState;
  @JsonKey(name: 'context')
  final ContextObject? context;
  @JsonKey(name: 'timestamp')
  final int? timestamp;
  @JsonKey(name: 'progress_ms')
  final int? progressMs;
  @JsonKey(name: 'is_playing')
  final bool? isPlaying;
  @JsonKey(name: 'item')
  final dynamic item;
  @JsonKey(name: 'currently_playing_type')
  final String? currentlyPlayingType;
  @JsonKey(name: 'actions')
  final DisallowsObject? actions;
  static const fromJsonFactory = _$CurrentlyPlayingContextObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CurrentlyPlayingContextObject &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.repeatState, repeatState) ||
                const DeepCollectionEquality()
                    .equals(other.repeatState, repeatState)) &&
            (identical(other.shuffleState, shuffleState) ||
                const DeepCollectionEquality()
                    .equals(other.shuffleState, shuffleState)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.progressMs, progressMs) ||
                const DeepCollectionEquality()
                    .equals(other.progressMs, progressMs)) &&
            (identical(other.isPlaying, isPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isPlaying, isPlaying)) &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.currentlyPlayingType, currentlyPlayingType) ||
                const DeepCollectionEquality().equals(
                    other.currentlyPlayingType, currentlyPlayingType)) &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality().equals(other.actions, actions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(device) ^
      const DeepCollectionEquality().hash(repeatState) ^
      const DeepCollectionEquality().hash(shuffleState) ^
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(progressMs) ^
      const DeepCollectionEquality().hash(isPlaying) ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(currentlyPlayingType) ^
      const DeepCollectionEquality().hash(actions) ^
      runtimeType.hashCode;
}

extension $CurrentlyPlayingContextObjectExtension
    on CurrentlyPlayingContextObject {
  CurrentlyPlayingContextObject copyWith(
      {DeviceObject? device,
      String? repeatState,
      bool? shuffleState,
      ContextObject? context,
      int? timestamp,
      int? progressMs,
      bool? isPlaying,
      dynamic item,
      String? currentlyPlayingType,
      DisallowsObject? actions}) {
    return CurrentlyPlayingContextObject(
        device: device ?? this.device,
        repeatState: repeatState ?? this.repeatState,
        shuffleState: shuffleState ?? this.shuffleState,
        context: context ?? this.context,
        timestamp: timestamp ?? this.timestamp,
        progressMs: progressMs ?? this.progressMs,
        isPlaying: isPlaying ?? this.isPlaying,
        item: item ?? this.item,
        currentlyPlayingType: currentlyPlayingType ?? this.currentlyPlayingType,
        actions: actions ?? this.actions);
  }

  CurrentlyPlayingContextObject copyWithWrapped(
      {Wrapped<DeviceObject?>? device,
      Wrapped<String?>? repeatState,
      Wrapped<bool?>? shuffleState,
      Wrapped<ContextObject?>? context,
      Wrapped<int?>? timestamp,
      Wrapped<int?>? progressMs,
      Wrapped<bool?>? isPlaying,
      Wrapped<dynamic>? item,
      Wrapped<String?>? currentlyPlayingType,
      Wrapped<DisallowsObject?>? actions}) {
    return CurrentlyPlayingContextObject(
        device: (device != null ? device.value : this.device),
        repeatState:
            (repeatState != null ? repeatState.value : this.repeatState),
        shuffleState:
            (shuffleState != null ? shuffleState.value : this.shuffleState),
        context: (context != null ? context.value : this.context),
        timestamp: (timestamp != null ? timestamp.value : this.timestamp),
        progressMs: (progressMs != null ? progressMs.value : this.progressMs),
        isPlaying: (isPlaying != null ? isPlaying.value : this.isPlaying),
        item: (item != null ? item.value : this.item),
        currentlyPlayingType: (currentlyPlayingType != null
            ? currentlyPlayingType.value
            : this.currentlyPlayingType),
        actions: (actions != null ? actions.value : this.actions));
  }
}

@JsonSerializable(explicitToJson: true)
class DisallowsObject {
  DisallowsObject({
    this.interruptingPlayback,
    this.pausing,
    this.resuming,
    this.seeking,
    this.skippingNext,
    this.skippingPrev,
    this.togglingRepeatContext,
    this.togglingShuffle,
    this.togglingRepeatTrack,
    this.transferringPlayback,
  });

  factory DisallowsObject.fromJson(Map<String, dynamic> json) =>
      _$DisallowsObjectFromJson(json);

  static const toJsonFactory = _$DisallowsObjectToJson;
  Map<String, dynamic> toJson() => _$DisallowsObjectToJson(this);

  @JsonKey(name: 'interrupting_playback')
  final bool? interruptingPlayback;
  @JsonKey(name: 'pausing')
  final bool? pausing;
  @JsonKey(name: 'resuming')
  final bool? resuming;
  @JsonKey(name: 'seeking')
  final bool? seeking;
  @JsonKey(name: 'skipping_next')
  final bool? skippingNext;
  @JsonKey(name: 'skipping_prev')
  final bool? skippingPrev;
  @JsonKey(name: 'toggling_repeat_context')
  final bool? togglingRepeatContext;
  @JsonKey(name: 'toggling_shuffle')
  final bool? togglingShuffle;
  @JsonKey(name: 'toggling_repeat_track')
  final bool? togglingRepeatTrack;
  @JsonKey(name: 'transferring_playback')
  final bool? transferringPlayback;
  static const fromJsonFactory = _$DisallowsObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DisallowsObject &&
            (identical(other.interruptingPlayback, interruptingPlayback) ||
                const DeepCollectionEquality().equals(
                    other.interruptingPlayback, interruptingPlayback)) &&
            (identical(other.pausing, pausing) ||
                const DeepCollectionEquality()
                    .equals(other.pausing, pausing)) &&
            (identical(other.resuming, resuming) ||
                const DeepCollectionEquality()
                    .equals(other.resuming, resuming)) &&
            (identical(other.seeking, seeking) ||
                const DeepCollectionEquality()
                    .equals(other.seeking, seeking)) &&
            (identical(other.skippingNext, skippingNext) ||
                const DeepCollectionEquality()
                    .equals(other.skippingNext, skippingNext)) &&
            (identical(other.skippingPrev, skippingPrev) ||
                const DeepCollectionEquality()
                    .equals(other.skippingPrev, skippingPrev)) &&
            (identical(other.togglingRepeatContext, togglingRepeatContext) ||
                const DeepCollectionEquality().equals(
                    other.togglingRepeatContext, togglingRepeatContext)) &&
            (identical(other.togglingShuffle, togglingShuffle) ||
                const DeepCollectionEquality()
                    .equals(other.togglingShuffle, togglingShuffle)) &&
            (identical(other.togglingRepeatTrack, togglingRepeatTrack) ||
                const DeepCollectionEquality()
                    .equals(other.togglingRepeatTrack, togglingRepeatTrack)) &&
            (identical(other.transferringPlayback, transferringPlayback) ||
                const DeepCollectionEquality()
                    .equals(other.transferringPlayback, transferringPlayback)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(interruptingPlayback) ^
      const DeepCollectionEquality().hash(pausing) ^
      const DeepCollectionEquality().hash(resuming) ^
      const DeepCollectionEquality().hash(seeking) ^
      const DeepCollectionEquality().hash(skippingNext) ^
      const DeepCollectionEquality().hash(skippingPrev) ^
      const DeepCollectionEquality().hash(togglingRepeatContext) ^
      const DeepCollectionEquality().hash(togglingShuffle) ^
      const DeepCollectionEquality().hash(togglingRepeatTrack) ^
      const DeepCollectionEquality().hash(transferringPlayback) ^
      runtimeType.hashCode;
}

extension $DisallowsObjectExtension on DisallowsObject {
  DisallowsObject copyWith(
      {bool? interruptingPlayback,
      bool? pausing,
      bool? resuming,
      bool? seeking,
      bool? skippingNext,
      bool? skippingPrev,
      bool? togglingRepeatContext,
      bool? togglingShuffle,
      bool? togglingRepeatTrack,
      bool? transferringPlayback}) {
    return DisallowsObject(
        interruptingPlayback: interruptingPlayback ?? this.interruptingPlayback,
        pausing: pausing ?? this.pausing,
        resuming: resuming ?? this.resuming,
        seeking: seeking ?? this.seeking,
        skippingNext: skippingNext ?? this.skippingNext,
        skippingPrev: skippingPrev ?? this.skippingPrev,
        togglingRepeatContext:
            togglingRepeatContext ?? this.togglingRepeatContext,
        togglingShuffle: togglingShuffle ?? this.togglingShuffle,
        togglingRepeatTrack: togglingRepeatTrack ?? this.togglingRepeatTrack,
        transferringPlayback:
            transferringPlayback ?? this.transferringPlayback);
  }

  DisallowsObject copyWithWrapped(
      {Wrapped<bool?>? interruptingPlayback,
      Wrapped<bool?>? pausing,
      Wrapped<bool?>? resuming,
      Wrapped<bool?>? seeking,
      Wrapped<bool?>? skippingNext,
      Wrapped<bool?>? skippingPrev,
      Wrapped<bool?>? togglingRepeatContext,
      Wrapped<bool?>? togglingShuffle,
      Wrapped<bool?>? togglingRepeatTrack,
      Wrapped<bool?>? transferringPlayback}) {
    return DisallowsObject(
        interruptingPlayback: (interruptingPlayback != null
            ? interruptingPlayback.value
            : this.interruptingPlayback),
        pausing: (pausing != null ? pausing.value : this.pausing),
        resuming: (resuming != null ? resuming.value : this.resuming),
        seeking: (seeking != null ? seeking.value : this.seeking),
        skippingNext:
            (skippingNext != null ? skippingNext.value : this.skippingNext),
        skippingPrev:
            (skippingPrev != null ? skippingPrev.value : this.skippingPrev),
        togglingRepeatContext: (togglingRepeatContext != null
            ? togglingRepeatContext.value
            : this.togglingRepeatContext),
        togglingShuffle: (togglingShuffle != null
            ? togglingShuffle.value
            : this.togglingShuffle),
        togglingRepeatTrack: (togglingRepeatTrack != null
            ? togglingRepeatTrack.value
            : this.togglingRepeatTrack),
        transferringPlayback: (transferringPlayback != null
            ? transferringPlayback.value
            : this.transferringPlayback));
  }
}

@JsonSerializable(explicitToJson: true)
class ErrorObject {
  ErrorObject({
    required this.status,
    required this.message,
  });

  factory ErrorObject.fromJson(Map<String, dynamic> json) =>
      _$ErrorObjectFromJson(json);

  static const toJsonFactory = _$ErrorObjectToJson;
  Map<String, dynamic> toJson() => _$ErrorObjectToJson(this);

  @JsonKey(name: 'status')
  final int status;
  @JsonKey(name: 'message')
  final String message;
  static const fromJsonFactory = _$ErrorObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorObject &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ErrorObjectExtension on ErrorObject {
  ErrorObject copyWith({int? status, String? message}) {
    return ErrorObject(
        status: status ?? this.status, message: message ?? this.message);
  }

  ErrorObject copyWithWrapped(
      {Wrapped<int>? status, Wrapped<String>? message}) {
    return ErrorObject(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class PlayerErrorObject {
  PlayerErrorObject({
    this.status,
    this.message,
    this.reason,
  });

  factory PlayerErrorObject.fromJson(Map<String, dynamic> json) =>
      _$PlayerErrorObjectFromJson(json);

  static const toJsonFactory = _$PlayerErrorObjectToJson;
  Map<String, dynamic> toJson() => _$PlayerErrorObjectToJson(this);

  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(
    name: 'reason',
    toJson: playerErrorReasonsToJson,
    fromJson: playerErrorReasonsFromJson,
  )
  final enums.PlayerErrorReasons? reason;
  static const fromJsonFactory = _$PlayerErrorObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayerErrorObject &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(reason) ^
      runtimeType.hashCode;
}

extension $PlayerErrorObjectExtension on PlayerErrorObject {
  PlayerErrorObject copyWith(
      {int? status, String? message, enums.PlayerErrorReasons? reason}) {
    return PlayerErrorObject(
        status: status ?? this.status,
        message: message ?? this.message,
        reason: reason ?? this.reason);
  }

  PlayerErrorObject copyWithWrapped(
      {Wrapped<int?>? status,
      Wrapped<String?>? message,
      Wrapped<enums.PlayerErrorReasons?>? reason}) {
    return PlayerErrorObject(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        reason: (reason != null ? reason.value : this.reason));
  }
}

@JsonSerializable(explicitToJson: true)
class PrivateUserObject {
  PrivateUserObject({
    this.country,
    this.displayName,
    this.email,
    this.explicitContent,
    this.externalUrls,
    this.followers,
    this.href,
    this.id,
    this.images,
    this.product,
    this.type,
    this.uri,
  });

  factory PrivateUserObject.fromJson(Map<String, dynamic> json) =>
      _$PrivateUserObjectFromJson(json);

  static const toJsonFactory = _$PrivateUserObjectToJson;
  Map<String, dynamic> toJson() => _$PrivateUserObjectToJson(this);

  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'display_name')
  final String? displayName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'explicit_content')
  final ExplicitContentSettingsObject? explicitContent;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject? externalUrls;
  @JsonKey(name: 'followers')
  final FollowersObject? followers;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject>? images;
  @JsonKey(name: 'product')
  final String? product;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory = _$PrivateUserObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PrivateUserObject &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.explicitContent, explicitContent) ||
                const DeepCollectionEquality()
                    .equals(other.explicitContent, explicitContent)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(explicitContent) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $PrivateUserObjectExtension on PrivateUserObject {
  PrivateUserObject copyWith(
      {String? country,
      String? displayName,
      String? email,
      ExplicitContentSettingsObject? explicitContent,
      ExternalUrlObject? externalUrls,
      FollowersObject? followers,
      String? href,
      String? id,
      List<ImageObject>? images,
      String? product,
      String? type,
      String? uri}) {
    return PrivateUserObject(
        country: country ?? this.country,
        displayName: displayName ?? this.displayName,
        email: email ?? this.email,
        explicitContent: explicitContent ?? this.explicitContent,
        externalUrls: externalUrls ?? this.externalUrls,
        followers: followers ?? this.followers,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        product: product ?? this.product,
        type: type ?? this.type,
        uri: uri ?? this.uri);
  }

  PrivateUserObject copyWithWrapped(
      {Wrapped<String?>? country,
      Wrapped<String?>? displayName,
      Wrapped<String?>? email,
      Wrapped<ExplicitContentSettingsObject?>? explicitContent,
      Wrapped<ExternalUrlObject?>? externalUrls,
      Wrapped<FollowersObject?>? followers,
      Wrapped<String?>? href,
      Wrapped<String?>? id,
      Wrapped<List<ImageObject>?>? images,
      Wrapped<String?>? product,
      Wrapped<String?>? type,
      Wrapped<String?>? uri}) {
    return PrivateUserObject(
        country: (country != null ? country.value : this.country),
        displayName:
            (displayName != null ? displayName.value : this.displayName),
        email: (email != null ? email.value : this.email),
        explicitContent: (explicitContent != null
            ? explicitContent.value
            : this.explicitContent),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        followers: (followers != null ? followers.value : this.followers),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        product: (product != null ? product.value : this.product),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class PublicUserObject {
  PublicUserObject({
    this.displayName,
    this.externalUrls,
    this.followers,
    this.href,
    this.id,
    this.images,
    this.type,
    this.uri,
  });

  factory PublicUserObject.fromJson(Map<String, dynamic> json) =>
      _$PublicUserObjectFromJson(json);

  static const toJsonFactory = _$PublicUserObjectToJson;
  Map<String, dynamic> toJson() => _$PublicUserObjectToJson(this);

  @JsonKey(name: 'display_name')
  final String? displayName;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject? externalUrls;
  @JsonKey(name: 'followers')
  final FollowersObject? followers;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject>? images;
  @JsonKey(
    name: 'type',
    toJson: publicUserObjectTypeToJson,
    fromJson: publicUserObjectTypeFromJson,
  )
  final enums.PublicUserObjectType? type;
  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory = _$PublicUserObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PublicUserObject &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $PublicUserObjectExtension on PublicUserObject {
  PublicUserObject copyWith(
      {String? displayName,
      ExternalUrlObject? externalUrls,
      FollowersObject? followers,
      String? href,
      String? id,
      List<ImageObject>? images,
      enums.PublicUserObjectType? type,
      String? uri}) {
    return PublicUserObject(
        displayName: displayName ?? this.displayName,
        externalUrls: externalUrls ?? this.externalUrls,
        followers: followers ?? this.followers,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        type: type ?? this.type,
        uri: uri ?? this.uri);
  }

  PublicUserObject copyWithWrapped(
      {Wrapped<String?>? displayName,
      Wrapped<ExternalUrlObject?>? externalUrls,
      Wrapped<FollowersObject?>? followers,
      Wrapped<String?>? href,
      Wrapped<String?>? id,
      Wrapped<List<ImageObject>?>? images,
      Wrapped<enums.PublicUserObjectType?>? type,
      Wrapped<String?>? uri}) {
    return PublicUserObject(
        displayName:
            (displayName != null ? displayName.value : this.displayName),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        followers: (followers != null ? followers.value : this.followers),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class AudioAnalysisObject {
  AudioAnalysisObject({
    this.meta,
    this.track,
    this.bars,
    this.beats,
    this.sections,
    this.segments,
    this.tatums,
  });

  factory AudioAnalysisObject.fromJson(Map<String, dynamic> json) =>
      _$AudioAnalysisObjectFromJson(json);

  static const toJsonFactory = _$AudioAnalysisObjectToJson;
  Map<String, dynamic> toJson() => _$AudioAnalysisObjectToJson(this);

  @JsonKey(name: 'meta')
  final AudioAnalysisObject$Meta? meta;
  @JsonKey(name: 'track')
  final AudioAnalysisObject$Track? track;
  @JsonKey(name: 'bars', defaultValue: <TimeIntervalObject>[])
  final List<TimeIntervalObject>? bars;
  @JsonKey(name: 'beats', defaultValue: <TimeIntervalObject>[])
  final List<TimeIntervalObject>? beats;
  @JsonKey(name: 'sections', defaultValue: <SectionObject>[])
  final List<SectionObject>? sections;
  @JsonKey(name: 'segments', defaultValue: <SegmentObject>[])
  final List<SegmentObject>? segments;
  @JsonKey(name: 'tatums', defaultValue: <TimeIntervalObject>[])
  final List<TimeIntervalObject>? tatums;
  static const fromJsonFactory = _$AudioAnalysisObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AudioAnalysisObject &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)) &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)) &&
            (identical(other.bars, bars) ||
                const DeepCollectionEquality().equals(other.bars, bars)) &&
            (identical(other.beats, beats) ||
                const DeepCollectionEquality().equals(other.beats, beats)) &&
            (identical(other.sections, sections) ||
                const DeepCollectionEquality()
                    .equals(other.sections, sections)) &&
            (identical(other.segments, segments) ||
                const DeepCollectionEquality()
                    .equals(other.segments, segments)) &&
            (identical(other.tatums, tatums) ||
                const DeepCollectionEquality().equals(other.tatums, tatums)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(meta) ^
      const DeepCollectionEquality().hash(track) ^
      const DeepCollectionEquality().hash(bars) ^
      const DeepCollectionEquality().hash(beats) ^
      const DeepCollectionEquality().hash(sections) ^
      const DeepCollectionEquality().hash(segments) ^
      const DeepCollectionEquality().hash(tatums) ^
      runtimeType.hashCode;
}

extension $AudioAnalysisObjectExtension on AudioAnalysisObject {
  AudioAnalysisObject copyWith(
      {AudioAnalysisObject$Meta? meta,
      AudioAnalysisObject$Track? track,
      List<TimeIntervalObject>? bars,
      List<TimeIntervalObject>? beats,
      List<SectionObject>? sections,
      List<SegmentObject>? segments,
      List<TimeIntervalObject>? tatums}) {
    return AudioAnalysisObject(
        meta: meta ?? this.meta,
        track: track ?? this.track,
        bars: bars ?? this.bars,
        beats: beats ?? this.beats,
        sections: sections ?? this.sections,
        segments: segments ?? this.segments,
        tatums: tatums ?? this.tatums);
  }

  AudioAnalysisObject copyWithWrapped(
      {Wrapped<AudioAnalysisObject$Meta?>? meta,
      Wrapped<AudioAnalysisObject$Track?>? track,
      Wrapped<List<TimeIntervalObject>?>? bars,
      Wrapped<List<TimeIntervalObject>?>? beats,
      Wrapped<List<SectionObject>?>? sections,
      Wrapped<List<SegmentObject>?>? segments,
      Wrapped<List<TimeIntervalObject>?>? tatums}) {
    return AudioAnalysisObject(
        meta: (meta != null ? meta.value : this.meta),
        track: (track != null ? track.value : this.track),
        bars: (bars != null ? bars.value : this.bars),
        beats: (beats != null ? beats.value : this.beats),
        sections: (sections != null ? sections.value : this.sections),
        segments: (segments != null ? segments.value : this.segments),
        tatums: (tatums != null ? tatums.value : this.tatums));
  }
}

@JsonSerializable(explicitToJson: true)
class TimeIntervalObject {
  TimeIntervalObject({
    this.start,
    this.duration,
    this.confidence,
  });

  factory TimeIntervalObject.fromJson(Map<String, dynamic> json) =>
      _$TimeIntervalObjectFromJson(json);

  static const toJsonFactory = _$TimeIntervalObjectToJson;
  Map<String, dynamic> toJson() => _$TimeIntervalObjectToJson(this);

  @JsonKey(name: 'start')
  final double? start;
  @JsonKey(name: 'duration')
  final double? duration;
  @JsonKey(name: 'confidence')
  final double? confidence;
  static const fromJsonFactory = _$TimeIntervalObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeIntervalObject &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.confidence, confidence) ||
                const DeepCollectionEquality()
                    .equals(other.confidence, confidence)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(confidence) ^
      runtimeType.hashCode;
}

extension $TimeIntervalObjectExtension on TimeIntervalObject {
  TimeIntervalObject copyWith(
      {double? start, double? duration, double? confidence}) {
    return TimeIntervalObject(
        start: start ?? this.start,
        duration: duration ?? this.duration,
        confidence: confidence ?? this.confidence);
  }

  TimeIntervalObject copyWithWrapped(
      {Wrapped<double?>? start,
      Wrapped<double?>? duration,
      Wrapped<double?>? confidence}) {
    return TimeIntervalObject(
        start: (start != null ? start.value : this.start),
        duration: (duration != null ? duration.value : this.duration),
        confidence: (confidence != null ? confidence.value : this.confidence));
  }
}

@JsonSerializable(explicitToJson: true)
class SectionObject {
  SectionObject({
    this.start,
    this.duration,
    this.confidence,
    this.loudness,
    this.tempo,
    this.tempoConfidence,
    this.key,
    this.keyConfidence,
    this.mode,
    this.modeConfidence,
    this.timeSignature,
    this.timeSignatureConfidence,
  });

  factory SectionObject.fromJson(Map<String, dynamic> json) =>
      _$SectionObjectFromJson(json);

  static const toJsonFactory = _$SectionObjectToJson;
  Map<String, dynamic> toJson() => _$SectionObjectToJson(this);

  @JsonKey(name: 'start')
  final double? start;
  @JsonKey(name: 'duration')
  final double? duration;
  @JsonKey(name: 'confidence')
  final double? confidence;
  @JsonKey(name: 'loudness')
  final double? loudness;
  @JsonKey(name: 'tempo')
  final double? tempo;
  @JsonKey(name: 'tempo_confidence')
  final double? tempoConfidence;
  @JsonKey(name: 'key')
  final int? key;
  @JsonKey(name: 'key_confidence')
  final double? keyConfidence;
  @JsonKey(name: 'mode')
  final double? mode;
  @JsonKey(name: 'mode_confidence')
  final double? modeConfidence;
  @JsonKey(name: 'time_signature')
  final int? timeSignature;
  @JsonKey(name: 'time_signature_confidence')
  final double? timeSignatureConfidence;
  static const fromJsonFactory = _$SectionObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SectionObject &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.confidence, confidence) ||
                const DeepCollectionEquality()
                    .equals(other.confidence, confidence)) &&
            (identical(other.loudness, loudness) ||
                const DeepCollectionEquality()
                    .equals(other.loudness, loudness)) &&
            (identical(other.tempo, tempo) ||
                const DeepCollectionEquality().equals(other.tempo, tempo)) &&
            (identical(other.tempoConfidence, tempoConfidence) ||
                const DeepCollectionEquality()
                    .equals(other.tempoConfidence, tempoConfidence)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.keyConfidence, keyConfidence) ||
                const DeepCollectionEquality()
                    .equals(other.keyConfidence, keyConfidence)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.modeConfidence, modeConfidence) ||
                const DeepCollectionEquality()
                    .equals(other.modeConfidence, modeConfidence)) &&
            (identical(other.timeSignature, timeSignature) ||
                const DeepCollectionEquality()
                    .equals(other.timeSignature, timeSignature)) &&
            (identical(
                    other.timeSignatureConfidence, timeSignatureConfidence) ||
                const DeepCollectionEquality().equals(
                    other.timeSignatureConfidence, timeSignatureConfidence)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(confidence) ^
      const DeepCollectionEquality().hash(loudness) ^
      const DeepCollectionEquality().hash(tempo) ^
      const DeepCollectionEquality().hash(tempoConfidence) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(keyConfidence) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(modeConfidence) ^
      const DeepCollectionEquality().hash(timeSignature) ^
      const DeepCollectionEquality().hash(timeSignatureConfidence) ^
      runtimeType.hashCode;
}

extension $SectionObjectExtension on SectionObject {
  SectionObject copyWith(
      {double? start,
      double? duration,
      double? confidence,
      double? loudness,
      double? tempo,
      double? tempoConfidence,
      int? key,
      double? keyConfidence,
      double? mode,
      double? modeConfidence,
      int? timeSignature,
      double? timeSignatureConfidence}) {
    return SectionObject(
        start: start ?? this.start,
        duration: duration ?? this.duration,
        confidence: confidence ?? this.confidence,
        loudness: loudness ?? this.loudness,
        tempo: tempo ?? this.tempo,
        tempoConfidence: tempoConfidence ?? this.tempoConfidence,
        key: key ?? this.key,
        keyConfidence: keyConfidence ?? this.keyConfidence,
        mode: mode ?? this.mode,
        modeConfidence: modeConfidence ?? this.modeConfidence,
        timeSignature: timeSignature ?? this.timeSignature,
        timeSignatureConfidence:
            timeSignatureConfidence ?? this.timeSignatureConfidence);
  }

  SectionObject copyWithWrapped(
      {Wrapped<double?>? start,
      Wrapped<double?>? duration,
      Wrapped<double?>? confidence,
      Wrapped<double?>? loudness,
      Wrapped<double?>? tempo,
      Wrapped<double?>? tempoConfidence,
      Wrapped<int?>? key,
      Wrapped<double?>? keyConfidence,
      Wrapped<double?>? mode,
      Wrapped<double?>? modeConfidence,
      Wrapped<int?>? timeSignature,
      Wrapped<double?>? timeSignatureConfidence}) {
    return SectionObject(
        start: (start != null ? start.value : this.start),
        duration: (duration != null ? duration.value : this.duration),
        confidence: (confidence != null ? confidence.value : this.confidence),
        loudness: (loudness != null ? loudness.value : this.loudness),
        tempo: (tempo != null ? tempo.value : this.tempo),
        tempoConfidence: (tempoConfidence != null
            ? tempoConfidence.value
            : this.tempoConfidence),
        key: (key != null ? key.value : this.key),
        keyConfidence:
            (keyConfidence != null ? keyConfidence.value : this.keyConfidence),
        mode: (mode != null ? mode.value : this.mode),
        modeConfidence: (modeConfidence != null
            ? modeConfidence.value
            : this.modeConfidence),
        timeSignature:
            (timeSignature != null ? timeSignature.value : this.timeSignature),
        timeSignatureConfidence: (timeSignatureConfidence != null
            ? timeSignatureConfidence.value
            : this.timeSignatureConfidence));
  }
}

@JsonSerializable(explicitToJson: true)
class SegmentObject {
  SegmentObject({
    this.start,
    this.duration,
    this.confidence,
    this.loudnessStart,
    this.loudnessMax,
    this.loudnessMaxTime,
    this.loudnessEnd,
    this.pitches,
    this.timbre,
  });

  factory SegmentObject.fromJson(Map<String, dynamic> json) =>
      _$SegmentObjectFromJson(json);

  static const toJsonFactory = _$SegmentObjectToJson;
  Map<String, dynamic> toJson() => _$SegmentObjectToJson(this);

  @JsonKey(name: 'start')
  final double? start;
  @JsonKey(name: 'duration')
  final double? duration;
  @JsonKey(name: 'confidence')
  final double? confidence;
  @JsonKey(name: 'loudness_start')
  final double? loudnessStart;
  @JsonKey(name: 'loudness_max')
  final double? loudnessMax;
  @JsonKey(name: 'loudness_max_time')
  final double? loudnessMaxTime;
  @JsonKey(name: 'loudness_end')
  final double? loudnessEnd;
  @JsonKey(name: 'pitches', defaultValue: <double>[])
  final List<double>? pitches;
  @JsonKey(name: 'timbre', defaultValue: <double>[])
  final List<double>? timbre;
  static const fromJsonFactory = _$SegmentObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SegmentObject &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.confidence, confidence) ||
                const DeepCollectionEquality()
                    .equals(other.confidence, confidence)) &&
            (identical(other.loudnessStart, loudnessStart) ||
                const DeepCollectionEquality()
                    .equals(other.loudnessStart, loudnessStart)) &&
            (identical(other.loudnessMax, loudnessMax) ||
                const DeepCollectionEquality()
                    .equals(other.loudnessMax, loudnessMax)) &&
            (identical(other.loudnessMaxTime, loudnessMaxTime) ||
                const DeepCollectionEquality()
                    .equals(other.loudnessMaxTime, loudnessMaxTime)) &&
            (identical(other.loudnessEnd, loudnessEnd) ||
                const DeepCollectionEquality()
                    .equals(other.loudnessEnd, loudnessEnd)) &&
            (identical(other.pitches, pitches) ||
                const DeepCollectionEquality()
                    .equals(other.pitches, pitches)) &&
            (identical(other.timbre, timbre) ||
                const DeepCollectionEquality().equals(other.timbre, timbre)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(confidence) ^
      const DeepCollectionEquality().hash(loudnessStart) ^
      const DeepCollectionEquality().hash(loudnessMax) ^
      const DeepCollectionEquality().hash(loudnessMaxTime) ^
      const DeepCollectionEquality().hash(loudnessEnd) ^
      const DeepCollectionEquality().hash(pitches) ^
      const DeepCollectionEquality().hash(timbre) ^
      runtimeType.hashCode;
}

extension $SegmentObjectExtension on SegmentObject {
  SegmentObject copyWith(
      {double? start,
      double? duration,
      double? confidence,
      double? loudnessStart,
      double? loudnessMax,
      double? loudnessMaxTime,
      double? loudnessEnd,
      List<double>? pitches,
      List<double>? timbre}) {
    return SegmentObject(
        start: start ?? this.start,
        duration: duration ?? this.duration,
        confidence: confidence ?? this.confidence,
        loudnessStart: loudnessStart ?? this.loudnessStart,
        loudnessMax: loudnessMax ?? this.loudnessMax,
        loudnessMaxTime: loudnessMaxTime ?? this.loudnessMaxTime,
        loudnessEnd: loudnessEnd ?? this.loudnessEnd,
        pitches: pitches ?? this.pitches,
        timbre: timbre ?? this.timbre);
  }

  SegmentObject copyWithWrapped(
      {Wrapped<double?>? start,
      Wrapped<double?>? duration,
      Wrapped<double?>? confidence,
      Wrapped<double?>? loudnessStart,
      Wrapped<double?>? loudnessMax,
      Wrapped<double?>? loudnessMaxTime,
      Wrapped<double?>? loudnessEnd,
      Wrapped<List<double>?>? pitches,
      Wrapped<List<double>?>? timbre}) {
    return SegmentObject(
        start: (start != null ? start.value : this.start),
        duration: (duration != null ? duration.value : this.duration),
        confidence: (confidence != null ? confidence.value : this.confidence),
        loudnessStart:
            (loudnessStart != null ? loudnessStart.value : this.loudnessStart),
        loudnessMax:
            (loudnessMax != null ? loudnessMax.value : this.loudnessMax),
        loudnessMaxTime: (loudnessMaxTime != null
            ? loudnessMaxTime.value
            : this.loudnessMaxTime),
        loudnessEnd:
            (loudnessEnd != null ? loudnessEnd.value : this.loudnessEnd),
        pitches: (pitches != null ? pitches.value : this.pitches),
        timbre: (timbre != null ? timbre.value : this.timbre));
  }
}

@JsonSerializable(explicitToJson: true)
class Tempo {
  Tempo();

  factory Tempo.fromJson(Map<String, dynamic> json) => _$TempoFromJson(json);

  static const toJsonFactory = _$TempoToJson;
  Map<String, dynamic> toJson() => _$TempoToJson(this);

  static const fromJsonFactory = _$TempoFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class Loudness {
  Loudness();

  factory Loudness.fromJson(Map<String, dynamic> json) =>
      _$LoudnessFromJson(json);

  static const toJsonFactory = _$LoudnessToJson;
  Map<String, dynamic> toJson() => _$LoudnessToJson(this);

  static const fromJsonFactory = _$LoudnessFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class AudioFeaturesObject {
  AudioFeaturesObject({
    this.acousticness,
    this.analysisUrl,
    this.danceability,
    this.durationMs,
    this.energy,
    this.id,
    this.instrumentalness,
    this.key,
    this.liveness,
    this.loudness,
    this.mode,
    this.speechiness,
    this.tempo,
    this.timeSignature,
    this.trackHref,
    this.type,
    this.uri,
    this.valence,
  });

  factory AudioFeaturesObject.fromJson(Map<String, dynamic> json) =>
      _$AudioFeaturesObjectFromJson(json);

  static const toJsonFactory = _$AudioFeaturesObjectToJson;
  Map<String, dynamic> toJson() => _$AudioFeaturesObjectToJson(this);

  @JsonKey(name: 'acousticness')
  final double? acousticness;
  @JsonKey(name: 'analysis_url')
  final String? analysisUrl;
  @JsonKey(name: 'danceability')
  final double? danceability;
  @JsonKey(name: 'duration_ms')
  final int? durationMs;
  @JsonKey(name: 'energy')
  final double? energy;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'instrumentalness')
  final double? instrumentalness;
  @JsonKey(name: 'key')
  final int? key;
  @JsonKey(name: 'liveness')
  final double? liveness;
  @JsonKey(name: 'loudness')
  final num? loudness;
  @JsonKey(name: 'mode')
  final int? mode;
  @JsonKey(name: 'speechiness')
  final double? speechiness;
  @JsonKey(name: 'tempo')
  final num? tempo;
  @JsonKey(name: 'time_signature')
  final int? timeSignature;
  @JsonKey(name: 'track_href')
  final String? trackHref;
  @JsonKey(
    name: 'type',
    toJson: audioFeaturesObjectTypeToJson,
    fromJson: audioFeaturesObjectTypeFromJson,
  )
  final enums.AudioFeaturesObjectType? type;
  @JsonKey(name: 'uri')
  final String? uri;
  @JsonKey(name: 'valence')
  final double? valence;
  static const fromJsonFactory = _$AudioFeaturesObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AudioFeaturesObject &&
            (identical(other.acousticness, acousticness) ||
                const DeepCollectionEquality()
                    .equals(other.acousticness, acousticness)) &&
            (identical(other.analysisUrl, analysisUrl) ||
                const DeepCollectionEquality()
                    .equals(other.analysisUrl, analysisUrl)) &&
            (identical(other.danceability, danceability) ||
                const DeepCollectionEquality()
                    .equals(other.danceability, danceability)) &&
            (identical(other.durationMs, durationMs) ||
                const DeepCollectionEquality()
                    .equals(other.durationMs, durationMs)) &&
            (identical(other.energy, energy) ||
                const DeepCollectionEquality().equals(other.energy, energy)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.instrumentalness, instrumentalness) ||
                const DeepCollectionEquality()
                    .equals(other.instrumentalness, instrumentalness)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.liveness, liveness) ||
                const DeepCollectionEquality()
                    .equals(other.liveness, liveness)) &&
            (identical(other.loudness, loudness) ||
                const DeepCollectionEquality()
                    .equals(other.loudness, loudness)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.speechiness, speechiness) ||
                const DeepCollectionEquality()
                    .equals(other.speechiness, speechiness)) &&
            (identical(other.tempo, tempo) ||
                const DeepCollectionEquality().equals(other.tempo, tempo)) &&
            (identical(other.timeSignature, timeSignature) ||
                const DeepCollectionEquality()
                    .equals(other.timeSignature, timeSignature)) &&
            (identical(other.trackHref, trackHref) ||
                const DeepCollectionEquality()
                    .equals(other.trackHref, trackHref)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.valence, valence) ||
                const DeepCollectionEquality().equals(other.valence, valence)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(acousticness) ^
      const DeepCollectionEquality().hash(analysisUrl) ^
      const DeepCollectionEquality().hash(danceability) ^
      const DeepCollectionEquality().hash(durationMs) ^
      const DeepCollectionEquality().hash(energy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(instrumentalness) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(liveness) ^
      const DeepCollectionEquality().hash(loudness) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(speechiness) ^
      const DeepCollectionEquality().hash(tempo) ^
      const DeepCollectionEquality().hash(timeSignature) ^
      const DeepCollectionEquality().hash(trackHref) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(valence) ^
      runtimeType.hashCode;
}

extension $AudioFeaturesObjectExtension on AudioFeaturesObject {
  AudioFeaturesObject copyWith(
      {double? acousticness,
      String? analysisUrl,
      double? danceability,
      int? durationMs,
      double? energy,
      String? id,
      double? instrumentalness,
      int? key,
      double? liveness,
      num? loudness,
      int? mode,
      double? speechiness,
      num? tempo,
      int? timeSignature,
      String? trackHref,
      enums.AudioFeaturesObjectType? type,
      String? uri,
      double? valence}) {
    return AudioFeaturesObject(
        acousticness: acousticness ?? this.acousticness,
        analysisUrl: analysisUrl ?? this.analysisUrl,
        danceability: danceability ?? this.danceability,
        durationMs: durationMs ?? this.durationMs,
        energy: energy ?? this.energy,
        id: id ?? this.id,
        instrumentalness: instrumentalness ?? this.instrumentalness,
        key: key ?? this.key,
        liveness: liveness ?? this.liveness,
        loudness: loudness ?? this.loudness,
        mode: mode ?? this.mode,
        speechiness: speechiness ?? this.speechiness,
        tempo: tempo ?? this.tempo,
        timeSignature: timeSignature ?? this.timeSignature,
        trackHref: trackHref ?? this.trackHref,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        valence: valence ?? this.valence);
  }

  AudioFeaturesObject copyWithWrapped(
      {Wrapped<double?>? acousticness,
      Wrapped<String?>? analysisUrl,
      Wrapped<double?>? danceability,
      Wrapped<int?>? durationMs,
      Wrapped<double?>? energy,
      Wrapped<String?>? id,
      Wrapped<double?>? instrumentalness,
      Wrapped<int?>? key,
      Wrapped<double?>? liveness,
      Wrapped<num?>? loudness,
      Wrapped<int?>? mode,
      Wrapped<double?>? speechiness,
      Wrapped<num?>? tempo,
      Wrapped<int?>? timeSignature,
      Wrapped<String?>? trackHref,
      Wrapped<enums.AudioFeaturesObjectType?>? type,
      Wrapped<String?>? uri,
      Wrapped<double?>? valence}) {
    return AudioFeaturesObject(
        acousticness:
            (acousticness != null ? acousticness.value : this.acousticness),
        analysisUrl:
            (analysisUrl != null ? analysisUrl.value : this.analysisUrl),
        danceability:
            (danceability != null ? danceability.value : this.danceability),
        durationMs: (durationMs != null ? durationMs.value : this.durationMs),
        energy: (energy != null ? energy.value : this.energy),
        id: (id != null ? id.value : this.id),
        instrumentalness: (instrumentalness != null
            ? instrumentalness.value
            : this.instrumentalness),
        key: (key != null ? key.value : this.key),
        liveness: (liveness != null ? liveness.value : this.liveness),
        loudness: (loudness != null ? loudness.value : this.loudness),
        mode: (mode != null ? mode.value : this.mode),
        speechiness:
            (speechiness != null ? speechiness.value : this.speechiness),
        tempo: (tempo != null ? tempo.value : this.tempo),
        timeSignature:
            (timeSignature != null ? timeSignature.value : this.timeSignature),
        trackHref: (trackHref != null ? trackHref.value : this.trackHref),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        valence: (valence != null ? valence.value : this.valence));
  }
}

@JsonSerializable(explicitToJson: true)
class SimplifiedTrackObject {
  SimplifiedTrackObject({
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.externalUrls,
    this.href,
    this.id,
    this.isPlayable,
    this.linkedFrom,
    this.restrictions,
    this.name,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
    this.isLocal,
  });

  factory SimplifiedTrackObject.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedTrackObjectFromJson(json);

  static const toJsonFactory = _$SimplifiedTrackObjectToJson;
  Map<String, dynamic> toJson() => _$SimplifiedTrackObjectToJson(this);

  @JsonKey(name: 'artists', defaultValue: <SimplifiedArtistObject>[])
  final List<SimplifiedArtistObject>? artists;
  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String>? availableMarkets;
  @JsonKey(name: 'disc_number')
  final int? discNumber;
  @JsonKey(name: 'duration_ms')
  final int? durationMs;
  @JsonKey(name: 'explicit')
  final bool? explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject? externalUrls;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'is_playable')
  final bool? isPlayable;
  @JsonKey(name: 'linked_from')
  final LinkedTrackObject? linkedFrom;
  @JsonKey(name: 'restrictions')
  final TrackRestrictionObject? restrictions;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'preview_url')
  final String? previewUrl;
  @JsonKey(name: 'track_number')
  final int? trackNumber;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'uri')
  final String? uri;
  @JsonKey(name: 'is_local')
  final bool? isLocal;
  static const fromJsonFactory = _$SimplifiedTrackObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SimplifiedTrackObject &&
            (identical(other.artists, artists) ||
                const DeepCollectionEquality()
                    .equals(other.artists, artists)) &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.discNumber, discNumber) ||
                const DeepCollectionEquality()
                    .equals(other.discNumber, discNumber)) &&
            (identical(other.durationMs, durationMs) ||
                const DeepCollectionEquality()
                    .equals(other.durationMs, durationMs)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isPlayable, isPlayable) ||
                const DeepCollectionEquality()
                    .equals(other.isPlayable, isPlayable)) &&
            (identical(other.linkedFrom, linkedFrom) ||
                const DeepCollectionEquality()
                    .equals(other.linkedFrom, linkedFrom)) &&
            (identical(other.restrictions, restrictions) ||
                const DeepCollectionEquality()
                    .equals(other.restrictions, restrictions)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previewUrl, previewUrl)) &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.isLocal, isLocal) ||
                const DeepCollectionEquality().equals(other.isLocal, isLocal)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(artists) ^
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(discNumber) ^
      const DeepCollectionEquality().hash(durationMs) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isPlayable) ^
      const DeepCollectionEquality().hash(linkedFrom) ^
      const DeepCollectionEquality().hash(restrictions) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(trackNumber) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(isLocal) ^
      runtimeType.hashCode;
}

extension $SimplifiedTrackObjectExtension on SimplifiedTrackObject {
  SimplifiedTrackObject copyWith(
      {List<SimplifiedArtistObject>? artists,
      List<String>? availableMarkets,
      int? discNumber,
      int? durationMs,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      bool? isPlayable,
      LinkedTrackObject? linkedFrom,
      TrackRestrictionObject? restrictions,
      String? name,
      String? previewUrl,
      int? trackNumber,
      String? type,
      String? uri,
      bool? isLocal}) {
    return SimplifiedTrackObject(
        artists: artists ?? this.artists,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        discNumber: discNumber ?? this.discNumber,
        durationMs: durationMs ?? this.durationMs,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        isPlayable: isPlayable ?? this.isPlayable,
        linkedFrom: linkedFrom ?? this.linkedFrom,
        restrictions: restrictions ?? this.restrictions,
        name: name ?? this.name,
        previewUrl: previewUrl ?? this.previewUrl,
        trackNumber: trackNumber ?? this.trackNumber,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        isLocal: isLocal ?? this.isLocal);
  }

  SimplifiedTrackObject copyWithWrapped(
      {Wrapped<List<SimplifiedArtistObject>?>? artists,
      Wrapped<List<String>?>? availableMarkets,
      Wrapped<int?>? discNumber,
      Wrapped<int?>? durationMs,
      Wrapped<bool?>? explicit,
      Wrapped<ExternalUrlObject?>? externalUrls,
      Wrapped<String?>? href,
      Wrapped<String?>? id,
      Wrapped<bool?>? isPlayable,
      Wrapped<LinkedTrackObject?>? linkedFrom,
      Wrapped<TrackRestrictionObject?>? restrictions,
      Wrapped<String?>? name,
      Wrapped<String?>? previewUrl,
      Wrapped<int?>? trackNumber,
      Wrapped<String?>? type,
      Wrapped<String?>? uri,
      Wrapped<bool?>? isLocal}) {
    return SimplifiedTrackObject(
        artists: (artists != null ? artists.value : this.artists),
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        discNumber: (discNumber != null ? discNumber.value : this.discNumber),
        durationMs: (durationMs != null ? durationMs.value : this.durationMs),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        isPlayable: (isPlayable != null ? isPlayable.value : this.isPlayable),
        linkedFrom: (linkedFrom != null ? linkedFrom.value : this.linkedFrom),
        restrictions:
            (restrictions != null ? restrictions.value : this.restrictions),
        name: (name != null ? name.value : this.name),
        previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
        trackNumber:
            (trackNumber != null ? trackNumber.value : this.trackNumber),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        isLocal: (isLocal != null ? isLocal.value : this.isLocal));
  }
}

@JsonSerializable(explicitToJson: true)
class DevicesObject {
  DevicesObject({
    this.devices,
  });

  factory DevicesObject.fromJson(Map<String, dynamic> json) =>
      _$DevicesObjectFromJson(json);

  static const toJsonFactory = _$DevicesObjectToJson;
  Map<String, dynamic> toJson() => _$DevicesObjectToJson(this);

  @JsonKey(name: 'devices', defaultValue: <DeviceObject>[])
  final List<DeviceObject>? devices;
  static const fromJsonFactory = _$DevicesObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DevicesObject &&
            (identical(other.devices, devices) ||
                const DeepCollectionEquality().equals(other.devices, devices)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(devices) ^ runtimeType.hashCode;
}

extension $DevicesObjectExtension on DevicesObject {
  DevicesObject copyWith({List<DeviceObject>? devices}) {
    return DevicesObject(devices: devices ?? this.devices);
  }

  DevicesObject copyWithWrapped({Wrapped<List<DeviceObject>?>? devices}) {
    return DevicesObject(
        devices: (devices != null ? devices.value : this.devices));
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceObject {
  DeviceObject({
    this.id,
    this.isActive,
    this.isPrivateSession,
    this.isRestricted,
    this.name,
    this.type,
    this.volumePercent,
  });

  factory DeviceObject.fromJson(Map<String, dynamic> json) =>
      _$DeviceObjectFromJson(json);

  static const toJsonFactory = _$DeviceObjectToJson;
  Map<String, dynamic> toJson() => _$DeviceObjectToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @JsonKey(name: 'is_private_session')
  final bool? isPrivateSession;
  @JsonKey(name: 'is_restricted')
  final bool? isRestricted;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'volume_percent')
  final int? volumePercent;
  static const fromJsonFactory = _$DeviceObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceObject &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.isPrivateSession, isPrivateSession) ||
                const DeepCollectionEquality()
                    .equals(other.isPrivateSession, isPrivateSession)) &&
            (identical(other.isRestricted, isRestricted) ||
                const DeepCollectionEquality()
                    .equals(other.isRestricted, isRestricted)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.volumePercent, volumePercent) ||
                const DeepCollectionEquality()
                    .equals(other.volumePercent, volumePercent)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(isPrivateSession) ^
      const DeepCollectionEquality().hash(isRestricted) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(volumePercent) ^
      runtimeType.hashCode;
}

extension $DeviceObjectExtension on DeviceObject {
  DeviceObject copyWith(
      {String? id,
      bool? isActive,
      bool? isPrivateSession,
      bool? isRestricted,
      String? name,
      String? type,
      int? volumePercent}) {
    return DeviceObject(
        id: id ?? this.id,
        isActive: isActive ?? this.isActive,
        isPrivateSession: isPrivateSession ?? this.isPrivateSession,
        isRestricted: isRestricted ?? this.isRestricted,
        name: name ?? this.name,
        type: type ?? this.type,
        volumePercent: volumePercent ?? this.volumePercent);
  }

  DeviceObject copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<bool?>? isActive,
      Wrapped<bool?>? isPrivateSession,
      Wrapped<bool?>? isRestricted,
      Wrapped<String?>? name,
      Wrapped<String?>? type,
      Wrapped<int?>? volumePercent}) {
    return DeviceObject(
        id: (id != null ? id.value : this.id),
        isActive: (isActive != null ? isActive.value : this.isActive),
        isPrivateSession: (isPrivateSession != null
            ? isPrivateSession.value
            : this.isPrivateSession),
        isRestricted:
            (isRestricted != null ? isRestricted.value : this.isRestricted),
        name: (name != null ? name.value : this.name),
        type: (type != null ? type.value : this.type),
        volumePercent:
            (volumePercent != null ? volumePercent.value : this.volumePercent));
  }
}

@JsonSerializable(explicitToJson: true)
class CursorObject {
  CursorObject({
    this.after,
    this.before,
  });

  factory CursorObject.fromJson(Map<String, dynamic> json) =>
      _$CursorObjectFromJson(json);

  static const toJsonFactory = _$CursorObjectToJson;
  Map<String, dynamic> toJson() => _$CursorObjectToJson(this);

  @JsonKey(name: 'after')
  final String? after;
  @JsonKey(name: 'before')
  final String? before;
  static const fromJsonFactory = _$CursorObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CursorObject &&
            (identical(other.after, after) ||
                const DeepCollectionEquality().equals(other.after, after)) &&
            (identical(other.before, before) ||
                const DeepCollectionEquality().equals(other.before, before)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(after) ^
      const DeepCollectionEquality().hash(before) ^
      runtimeType.hashCode;
}

extension $CursorObjectExtension on CursorObject {
  CursorObject copyWith({String? after, String? before}) {
    return CursorObject(
        after: after ?? this.after, before: before ?? this.before);
  }

  CursorObject copyWithWrapped(
      {Wrapped<String?>? after, Wrapped<String?>? before}) {
    return CursorObject(
        after: (after != null ? after.value : this.after),
        before: (before != null ? before.value : this.before));
  }
}

@JsonSerializable(explicitToJson: true)
class CursorPagingObject {
  CursorPagingObject({
    this.href,
    this.limit,
    this.next,
    this.cursors,
    this.total,
  });

  factory CursorPagingObject.fromJson(Map<String, dynamic> json) =>
      _$CursorPagingObjectFromJson(json);

  static const toJsonFactory = _$CursorPagingObjectToJson;
  Map<String, dynamic> toJson() => _$CursorPagingObjectToJson(this);

  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'limit')
  final int? limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'cursors')
  final CursorObject? cursors;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$CursorPagingObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CursorPagingObject &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.cursors, cursors) ||
                const DeepCollectionEquality()
                    .equals(other.cursors, cursors)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(cursors) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $CursorPagingObjectExtension on CursorPagingObject {
  CursorPagingObject copyWith(
      {String? href,
      int? limit,
      String? next,
      CursorObject? cursors,
      int? total}) {
    return CursorPagingObject(
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        cursors: cursors ?? this.cursors,
        total: total ?? this.total);
  }

  CursorPagingObject copyWithWrapped(
      {Wrapped<String?>? href,
      Wrapped<int?>? limit,
      Wrapped<String?>? next,
      Wrapped<CursorObject?>? cursors,
      Wrapped<int?>? total}) {
    return CursorPagingObject(
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        cursors: (cursors != null ? cursors.value : this.cursors),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class CursorPagingPlayHistoryObject {
  CursorPagingPlayHistoryObject({
    this.items,
    this.href,
    this.limit,
    this.next,
    this.cursors,
    this.total,
  });

  factory CursorPagingPlayHistoryObject.fromJson(Map<String, dynamic> json) =>
      _$CursorPagingPlayHistoryObjectFromJson(json);

  static const toJsonFactory = _$CursorPagingPlayHistoryObjectToJson;
  Map<String, dynamic> toJson() => _$CursorPagingPlayHistoryObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <PlayHistoryObject>[])
  final List<PlayHistoryObject>? items;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'limit')
  final int? limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'cursors')
  final CursorObject? cursors;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$CursorPagingPlayHistoryObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CursorPagingPlayHistoryObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.cursors, cursors) ||
                const DeepCollectionEquality()
                    .equals(other.cursors, cursors)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(cursors) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $CursorPagingPlayHistoryObjectExtension
    on CursorPagingPlayHistoryObject {
  CursorPagingPlayHistoryObject copyWith(
      {List<PlayHistoryObject>? items,
      String? href,
      int? limit,
      String? next,
      CursorObject? cursors,
      int? total}) {
    return CursorPagingPlayHistoryObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        cursors: cursors ?? this.cursors,
        total: total ?? this.total);
  }

  CursorPagingPlayHistoryObject copyWithWrapped(
      {Wrapped<List<PlayHistoryObject>?>? items,
      Wrapped<String?>? href,
      Wrapped<int?>? limit,
      Wrapped<String?>? next,
      Wrapped<CursorObject?>? cursors,
      Wrapped<int?>? total}) {
    return CursorPagingPlayHistoryObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        cursors: (cursors != null ? cursors.value : this.cursors),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class CursorPagingSimplifiedArtistObject {
  CursorPagingSimplifiedArtistObject({
    this.items,
    this.href,
    this.limit,
    this.next,
    this.cursors,
    this.total,
  });

  factory CursorPagingSimplifiedArtistObject.fromJson(
          Map<String, dynamic> json) =>
      _$CursorPagingSimplifiedArtistObjectFromJson(json);

  static const toJsonFactory = _$CursorPagingSimplifiedArtistObjectToJson;
  Map<String, dynamic> toJson() =>
      _$CursorPagingSimplifiedArtistObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <ArtistObject>[])
  final List<ArtistObject>? items;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'limit')
  final int? limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'cursors')
  final CursorObject? cursors;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$CursorPagingSimplifiedArtistObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CursorPagingSimplifiedArtistObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.cursors, cursors) ||
                const DeepCollectionEquality()
                    .equals(other.cursors, cursors)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(cursors) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $CursorPagingSimplifiedArtistObjectExtension
    on CursorPagingSimplifiedArtistObject {
  CursorPagingSimplifiedArtistObject copyWith(
      {List<ArtistObject>? items,
      String? href,
      int? limit,
      String? next,
      CursorObject? cursors,
      int? total}) {
    return CursorPagingSimplifiedArtistObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        cursors: cursors ?? this.cursors,
        total: total ?? this.total);
  }

  CursorPagingSimplifiedArtistObject copyWithWrapped(
      {Wrapped<List<ArtistObject>?>? items,
      Wrapped<String?>? href,
      Wrapped<int?>? limit,
      Wrapped<String?>? next,
      Wrapped<CursorObject?>? cursors,
      Wrapped<int?>? total}) {
    return CursorPagingSimplifiedArtistObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        cursors: (cursors != null ? cursors.value : this.cursors),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingObject {
  PagingObject({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingObject.fromJson(Map<String, dynamic> json) =>
      _$PagingObjectFromJson(json);

  static const toJsonFactory = _$PagingObjectToJson;
  Map<String, dynamic> toJson() => _$PagingObjectToJson(this);

  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingObject &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingObjectExtension on PagingObject {
  PagingObject copyWith(
      {String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingObject(
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingObject copyWithWrapped(
      {Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingObject(
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingPlaylistObject {
  PagingPlaylistObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingPlaylistObject.fromJson(Map<String, dynamic> json) =>
      _$PagingPlaylistObjectFromJson(json);

  static const toJsonFactory = _$PagingPlaylistObjectToJson;
  Map<String, dynamic> toJson() => _$PagingPlaylistObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SimplifiedPlaylistObject>[])
  final List<SimplifiedPlaylistObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingPlaylistObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingPlaylistObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingPlaylistObjectExtension on PagingPlaylistObject {
  PagingPlaylistObject copyWith(
      {List<SimplifiedPlaylistObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingPlaylistObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingPlaylistObject copyWithWrapped(
      {Wrapped<List<SimplifiedPlaylistObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingPlaylistObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingFeaturedPlaylistObject {
  PagingFeaturedPlaylistObject({
    this.message,
    this.playlists,
  });

  factory PagingFeaturedPlaylistObject.fromJson(Map<String, dynamic> json) =>
      _$PagingFeaturedPlaylistObjectFromJson(json);

  static const toJsonFactory = _$PagingFeaturedPlaylistObjectToJson;
  Map<String, dynamic> toJson() => _$PagingFeaturedPlaylistObjectToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'playlists')
  final PagingPlaylistObject? playlists;
  static const fromJsonFactory = _$PagingFeaturedPlaylistObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingFeaturedPlaylistObject &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.playlists, playlists) ||
                const DeepCollectionEquality()
                    .equals(other.playlists, playlists)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(playlists) ^
      runtimeType.hashCode;
}

extension $PagingFeaturedPlaylistObjectExtension
    on PagingFeaturedPlaylistObject {
  PagingFeaturedPlaylistObject copyWith(
      {String? message, PagingPlaylistObject? playlists}) {
    return PagingFeaturedPlaylistObject(
        message: message ?? this.message,
        playlists: playlists ?? this.playlists);
  }

  PagingFeaturedPlaylistObject copyWithWrapped(
      {Wrapped<String?>? message, Wrapped<PagingPlaylistObject?>? playlists}) {
    return PagingFeaturedPlaylistObject(
        message: (message != null ? message.value : this.message),
        playlists: (playlists != null ? playlists.value : this.playlists));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingSimplifiedAlbumObject {
  PagingSimplifiedAlbumObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingSimplifiedAlbumObject.fromJson(Map<String, dynamic> json) =>
      _$PagingSimplifiedAlbumObjectFromJson(json);

  static const toJsonFactory = _$PagingSimplifiedAlbumObjectToJson;
  Map<String, dynamic> toJson() => _$PagingSimplifiedAlbumObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SimplifiedAlbumObject>[])
  final List<SimplifiedAlbumObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingSimplifiedAlbumObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingSimplifiedAlbumObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingSimplifiedAlbumObjectExtension on PagingSimplifiedAlbumObject {
  PagingSimplifiedAlbumObject copyWith(
      {List<SimplifiedAlbumObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingSimplifiedAlbumObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingSimplifiedAlbumObject copyWithWrapped(
      {Wrapped<List<SimplifiedAlbumObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingSimplifiedAlbumObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingSavedAlbumObject {
  PagingSavedAlbumObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingSavedAlbumObject.fromJson(Map<String, dynamic> json) =>
      _$PagingSavedAlbumObjectFromJson(json);

  static const toJsonFactory = _$PagingSavedAlbumObjectToJson;
  Map<String, dynamic> toJson() => _$PagingSavedAlbumObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SavedAlbumObject>[])
  final List<SavedAlbumObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingSavedAlbumObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingSavedAlbumObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingSavedAlbumObjectExtension on PagingSavedAlbumObject {
  PagingSavedAlbumObject copyWith(
      {List<SavedAlbumObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingSavedAlbumObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingSavedAlbumObject copyWithWrapped(
      {Wrapped<List<SavedAlbumObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingSavedAlbumObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingSimplifiedTrackObject {
  PagingSimplifiedTrackObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingSimplifiedTrackObject.fromJson(Map<String, dynamic> json) =>
      _$PagingSimplifiedTrackObjectFromJson(json);

  static const toJsonFactory = _$PagingSimplifiedTrackObjectToJson;
  Map<String, dynamic> toJson() => _$PagingSimplifiedTrackObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SimplifiedTrackObject>[])
  final List<SimplifiedTrackObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingSimplifiedTrackObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingSimplifiedTrackObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingSimplifiedTrackObjectExtension on PagingSimplifiedTrackObject {
  PagingSimplifiedTrackObject copyWith(
      {List<SimplifiedTrackObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingSimplifiedTrackObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingSimplifiedTrackObject copyWithWrapped(
      {Wrapped<List<SimplifiedTrackObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingSimplifiedTrackObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingSavedTrackObject {
  PagingSavedTrackObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingSavedTrackObject.fromJson(Map<String, dynamic> json) =>
      _$PagingSavedTrackObjectFromJson(json);

  static const toJsonFactory = _$PagingSavedTrackObjectToJson;
  Map<String, dynamic> toJson() => _$PagingSavedTrackObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SavedTrackObject>[])
  final List<SavedTrackObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingSavedTrackObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingSavedTrackObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingSavedTrackObjectExtension on PagingSavedTrackObject {
  PagingSavedTrackObject copyWith(
      {List<SavedTrackObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingSavedTrackObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingSavedTrackObject copyWithWrapped(
      {Wrapped<List<SavedTrackObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingSavedTrackObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingTrackObject {
  PagingTrackObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingTrackObject.fromJson(Map<String, dynamic> json) =>
      _$PagingTrackObjectFromJson(json);

  static const toJsonFactory = _$PagingTrackObjectToJson;
  Map<String, dynamic> toJson() => _$PagingTrackObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <TrackObject>[])
  final List<TrackObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingTrackObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingTrackObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingTrackObjectExtension on PagingTrackObject {
  PagingTrackObject copyWith(
      {List<TrackObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingTrackObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingTrackObject copyWithWrapped(
      {Wrapped<List<TrackObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingTrackObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingPlaylistTrackObject {
  PagingPlaylistTrackObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingPlaylistTrackObject.fromJson(Map<String, dynamic> json) =>
      _$PagingPlaylistTrackObjectFromJson(json);

  static const toJsonFactory = _$PagingPlaylistTrackObjectToJson;
  Map<String, dynamic> toJson() => _$PagingPlaylistTrackObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <PlaylistTrackObject>[])
  final List<PlaylistTrackObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingPlaylistTrackObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingPlaylistTrackObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingPlaylistTrackObjectExtension on PagingPlaylistTrackObject {
  PagingPlaylistTrackObject copyWith(
      {List<PlaylistTrackObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingPlaylistTrackObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingPlaylistTrackObject copyWithWrapped(
      {Wrapped<List<PlaylistTrackObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingPlaylistTrackObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingSimplifiedShowObject {
  PagingSimplifiedShowObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingSimplifiedShowObject.fromJson(Map<String, dynamic> json) =>
      _$PagingSimplifiedShowObjectFromJson(json);

  static const toJsonFactory = _$PagingSimplifiedShowObjectToJson;
  Map<String, dynamic> toJson() => _$PagingSimplifiedShowObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SimplifiedShowObject>[])
  final List<SimplifiedShowObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingSimplifiedShowObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingSimplifiedShowObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingSimplifiedShowObjectExtension on PagingSimplifiedShowObject {
  PagingSimplifiedShowObject copyWith(
      {List<SimplifiedShowObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingSimplifiedShowObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingSimplifiedShowObject copyWithWrapped(
      {Wrapped<List<SimplifiedShowObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingSimplifiedShowObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingSavedShowObject {
  PagingSavedShowObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingSavedShowObject.fromJson(Map<String, dynamic> json) =>
      _$PagingSavedShowObjectFromJson(json);

  static const toJsonFactory = _$PagingSavedShowObjectToJson;
  Map<String, dynamic> toJson() => _$PagingSavedShowObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SavedShowObject>[])
  final List<SavedShowObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingSavedShowObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingSavedShowObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingSavedShowObjectExtension on PagingSavedShowObject {
  PagingSavedShowObject copyWith(
      {List<SavedShowObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingSavedShowObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingSavedShowObject copyWithWrapped(
      {Wrapped<List<SavedShowObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingSavedShowObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingSimplifiedEpisodeObject {
  PagingSimplifiedEpisodeObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingSimplifiedEpisodeObject.fromJson(Map<String, dynamic> json) =>
      _$PagingSimplifiedEpisodeObjectFromJson(json);

  static const toJsonFactory = _$PagingSimplifiedEpisodeObjectToJson;
  Map<String, dynamic> toJson() => _$PagingSimplifiedEpisodeObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SimplifiedEpisodeObject>[])
  final List<SimplifiedEpisodeObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingSimplifiedEpisodeObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingSimplifiedEpisodeObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingSimplifiedEpisodeObjectExtension
    on PagingSimplifiedEpisodeObject {
  PagingSimplifiedEpisodeObject copyWith(
      {List<SimplifiedEpisodeObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingSimplifiedEpisodeObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingSimplifiedEpisodeObject copyWithWrapped(
      {Wrapped<List<SimplifiedEpisodeObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingSimplifiedEpisodeObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingSavedEpisodeObject {
  PagingSavedEpisodeObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingSavedEpisodeObject.fromJson(Map<String, dynamic> json) =>
      _$PagingSavedEpisodeObjectFromJson(json);

  static const toJsonFactory = _$PagingSavedEpisodeObjectToJson;
  Map<String, dynamic> toJson() => _$PagingSavedEpisodeObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SavedEpisodeObject>[])
  final List<SavedEpisodeObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingSavedEpisodeObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingSavedEpisodeObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingSavedEpisodeObjectExtension on PagingSavedEpisodeObject {
  PagingSavedEpisodeObject copyWith(
      {List<SavedEpisodeObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingSavedEpisodeObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingSavedEpisodeObject copyWithWrapped(
      {Wrapped<List<SavedEpisodeObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingSavedEpisodeObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingSimplifiedAudiobookObject {
  PagingSimplifiedAudiobookObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingSimplifiedAudiobookObject.fromJson(Map<String, dynamic> json) =>
      _$PagingSimplifiedAudiobookObjectFromJson(json);

  static const toJsonFactory = _$PagingSimplifiedAudiobookObjectToJson;
  Map<String, dynamic> toJson() =>
      _$PagingSimplifiedAudiobookObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SimplifiedAudiobookObject>[])
  final List<SimplifiedAudiobookObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingSimplifiedAudiobookObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingSimplifiedAudiobookObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingSimplifiedAudiobookObjectExtension
    on PagingSimplifiedAudiobookObject {
  PagingSimplifiedAudiobookObject copyWith(
      {List<SimplifiedAudiobookObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingSimplifiedAudiobookObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingSimplifiedAudiobookObject copyWithWrapped(
      {Wrapped<List<SimplifiedAudiobookObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingSimplifiedAudiobookObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingSimplifiedArtistObject {
  PagingSimplifiedArtistObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingSimplifiedArtistObject.fromJson(Map<String, dynamic> json) =>
      _$PagingSimplifiedArtistObjectFromJson(json);

  static const toJsonFactory = _$PagingSimplifiedArtistObjectToJson;
  Map<String, dynamic> toJson() => _$PagingSimplifiedArtistObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SimplifiedArtistObject>[])
  final List<SimplifiedArtistObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingSimplifiedArtistObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingSimplifiedArtistObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingSimplifiedArtistObjectExtension
    on PagingSimplifiedArtistObject {
  PagingSimplifiedArtistObject copyWith(
      {List<SimplifiedArtistObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingSimplifiedArtistObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingSimplifiedArtistObject copyWithWrapped(
      {Wrapped<List<SimplifiedArtistObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingSimplifiedArtistObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingArtistObject {
  PagingArtistObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingArtistObject.fromJson(Map<String, dynamic> json) =>
      _$PagingArtistObjectFromJson(json);

  static const toJsonFactory = _$PagingArtistObjectToJson;
  Map<String, dynamic> toJson() => _$PagingArtistObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <ArtistObject>[])
  final List<ArtistObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingArtistObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingArtistObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingArtistObjectExtension on PagingArtistObject {
  PagingArtistObject copyWith(
      {List<ArtistObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingArtistObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingArtistObject copyWithWrapped(
      {Wrapped<List<ArtistObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingArtistObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingSimplifiedChapterObject {
  PagingSimplifiedChapterObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingSimplifiedChapterObject.fromJson(Map<String, dynamic> json) =>
      _$PagingSimplifiedChapterObjectFromJson(json);

  static const toJsonFactory = _$PagingSimplifiedChapterObjectToJson;
  Map<String, dynamic> toJson() => _$PagingSimplifiedChapterObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SimplifiedChapterObject>[])
  final List<SimplifiedChapterObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingSimplifiedChapterObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingSimplifiedChapterObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingSimplifiedChapterObjectExtension
    on PagingSimplifiedChapterObject {
  PagingSimplifiedChapterObject copyWith(
      {List<SimplifiedChapterObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingSimplifiedChapterObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingSimplifiedChapterObject copyWithWrapped(
      {Wrapped<List<SimplifiedChapterObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingSimplifiedChapterObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendationsObject {
  RecommendationsObject({
    required this.seeds,
    required this.tracks,
  });

  factory RecommendationsObject.fromJson(Map<String, dynamic> json) =>
      _$RecommendationsObjectFromJson(json);

  static const toJsonFactory = _$RecommendationsObjectToJson;
  Map<String, dynamic> toJson() => _$RecommendationsObjectToJson(this);

  @JsonKey(name: 'seeds', defaultValue: <RecommendationSeedObject>[])
  final List<RecommendationSeedObject> seeds;
  @JsonKey(name: 'tracks', defaultValue: <TrackObject>[])
  final List<TrackObject> tracks;
  static const fromJsonFactory = _$RecommendationsObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecommendationsObject &&
            (identical(other.seeds, seeds) ||
                const DeepCollectionEquality().equals(other.seeds, seeds)) &&
            (identical(other.tracks, tracks) ||
                const DeepCollectionEquality().equals(other.tracks, tracks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(seeds) ^
      const DeepCollectionEquality().hash(tracks) ^
      runtimeType.hashCode;
}

extension $RecommendationsObjectExtension on RecommendationsObject {
  RecommendationsObject copyWith(
      {List<RecommendationSeedObject>? seeds, List<TrackObject>? tracks}) {
    return RecommendationsObject(
        seeds: seeds ?? this.seeds, tracks: tracks ?? this.tracks);
  }

  RecommendationsObject copyWithWrapped(
      {Wrapped<List<RecommendationSeedObject>>? seeds,
      Wrapped<List<TrackObject>>? tracks}) {
    return RecommendationsObject(
        seeds: (seeds != null ? seeds.value : this.seeds),
        tracks: (tracks != null ? tracks.value : this.tracks));
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendationSeedObject {
  RecommendationSeedObject({
    this.afterFilteringSize,
    this.afterRelinkingSize,
    this.href,
    this.id,
    this.initialPoolSize,
    this.type,
  });

  factory RecommendationSeedObject.fromJson(Map<String, dynamic> json) =>
      _$RecommendationSeedObjectFromJson(json);

  static const toJsonFactory = _$RecommendationSeedObjectToJson;
  Map<String, dynamic> toJson() => _$RecommendationSeedObjectToJson(this);

  @JsonKey(name: 'afterFilteringSize')
  final int? afterFilteringSize;
  @JsonKey(name: 'afterRelinkingSize')
  final int? afterRelinkingSize;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'initialPoolSize')
  final int? initialPoolSize;
  @JsonKey(name: 'type')
  final String? type;
  static const fromJsonFactory = _$RecommendationSeedObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecommendationSeedObject &&
            (identical(other.afterFilteringSize, afterFilteringSize) ||
                const DeepCollectionEquality()
                    .equals(other.afterFilteringSize, afterFilteringSize)) &&
            (identical(other.afterRelinkingSize, afterRelinkingSize) ||
                const DeepCollectionEquality()
                    .equals(other.afterRelinkingSize, afterRelinkingSize)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.initialPoolSize, initialPoolSize) ||
                const DeepCollectionEquality()
                    .equals(other.initialPoolSize, initialPoolSize)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(afterFilteringSize) ^
      const DeepCollectionEquality().hash(afterRelinkingSize) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(initialPoolSize) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $RecommendationSeedObjectExtension on RecommendationSeedObject {
  RecommendationSeedObject copyWith(
      {int? afterFilteringSize,
      int? afterRelinkingSize,
      String? href,
      String? id,
      int? initialPoolSize,
      String? type}) {
    return RecommendationSeedObject(
        afterFilteringSize: afterFilteringSize ?? this.afterFilteringSize,
        afterRelinkingSize: afterRelinkingSize ?? this.afterRelinkingSize,
        href: href ?? this.href,
        id: id ?? this.id,
        initialPoolSize: initialPoolSize ?? this.initialPoolSize,
        type: type ?? this.type);
  }

  RecommendationSeedObject copyWithWrapped(
      {Wrapped<int?>? afterFilteringSize,
      Wrapped<int?>? afterRelinkingSize,
      Wrapped<String?>? href,
      Wrapped<String?>? id,
      Wrapped<int?>? initialPoolSize,
      Wrapped<String?>? type}) {
    return RecommendationSeedObject(
        afterFilteringSize: (afterFilteringSize != null
            ? afterFilteringSize.value
            : this.afterFilteringSize),
        afterRelinkingSize: (afterRelinkingSize != null
            ? afterRelinkingSize.value
            : this.afterRelinkingSize),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        initialPoolSize: (initialPoolSize != null
            ? initialPoolSize.value
            : this.initialPoolSize),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class SavedAlbumObject {
  SavedAlbumObject({
    this.addedAt,
    this.album,
  });

  factory SavedAlbumObject.fromJson(Map<String, dynamic> json) =>
      _$SavedAlbumObjectFromJson(json);

  static const toJsonFactory = _$SavedAlbumObjectToJson;
  Map<String, dynamic> toJson() => _$SavedAlbumObjectToJson(this);

  @JsonKey(name: 'added_at')
  final DateTime? addedAt;
  @JsonKey(name: 'album')
  final AlbumObject? album;
  static const fromJsonFactory = _$SavedAlbumObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SavedAlbumObject &&
            (identical(other.addedAt, addedAt) ||
                const DeepCollectionEquality()
                    .equals(other.addedAt, addedAt)) &&
            (identical(other.album, album) ||
                const DeepCollectionEquality().equals(other.album, album)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addedAt) ^
      const DeepCollectionEquality().hash(album) ^
      runtimeType.hashCode;
}

extension $SavedAlbumObjectExtension on SavedAlbumObject {
  SavedAlbumObject copyWith({DateTime? addedAt, AlbumObject? album}) {
    return SavedAlbumObject(
        addedAt: addedAt ?? this.addedAt, album: album ?? this.album);
  }

  SavedAlbumObject copyWithWrapped(
      {Wrapped<DateTime?>? addedAt, Wrapped<AlbumObject?>? album}) {
    return SavedAlbumObject(
        addedAt: (addedAt != null ? addedAt.value : this.addedAt),
        album: (album != null ? album.value : this.album));
  }
}

@JsonSerializable(explicitToJson: true)
class SavedTrackObject {
  SavedTrackObject({
    this.addedAt,
    this.track,
  });

  factory SavedTrackObject.fromJson(Map<String, dynamic> json) =>
      _$SavedTrackObjectFromJson(json);

  static const toJsonFactory = _$SavedTrackObjectToJson;
  Map<String, dynamic> toJson() => _$SavedTrackObjectToJson(this);

  @JsonKey(name: 'added_at')
  final DateTime? addedAt;
  @JsonKey(name: 'track')
  final TrackObject? track;
  static const fromJsonFactory = _$SavedTrackObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SavedTrackObject &&
            (identical(other.addedAt, addedAt) ||
                const DeepCollectionEquality()
                    .equals(other.addedAt, addedAt)) &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addedAt) ^
      const DeepCollectionEquality().hash(track) ^
      runtimeType.hashCode;
}

extension $SavedTrackObjectExtension on SavedTrackObject {
  SavedTrackObject copyWith({DateTime? addedAt, TrackObject? track}) {
    return SavedTrackObject(
        addedAt: addedAt ?? this.addedAt, track: track ?? this.track);
  }

  SavedTrackObject copyWithWrapped(
      {Wrapped<DateTime?>? addedAt, Wrapped<TrackObject?>? track}) {
    return SavedTrackObject(
        addedAt: (addedAt != null ? addedAt.value : this.addedAt),
        track: (track != null ? track.value : this.track));
  }
}

@JsonSerializable(explicitToJson: true)
class SavedEpisodeObject {
  SavedEpisodeObject({
    this.addedAt,
    this.episode,
  });

  factory SavedEpisodeObject.fromJson(Map<String, dynamic> json) =>
      _$SavedEpisodeObjectFromJson(json);

  static const toJsonFactory = _$SavedEpisodeObjectToJson;
  Map<String, dynamic> toJson() => _$SavedEpisodeObjectToJson(this);

  @JsonKey(name: 'added_at')
  final DateTime? addedAt;
  @JsonKey(name: 'episode')
  final EpisodeObject? episode;
  static const fromJsonFactory = _$SavedEpisodeObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SavedEpisodeObject &&
            (identical(other.addedAt, addedAt) ||
                const DeepCollectionEquality()
                    .equals(other.addedAt, addedAt)) &&
            (identical(other.episode, episode) ||
                const DeepCollectionEquality().equals(other.episode, episode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addedAt) ^
      const DeepCollectionEquality().hash(episode) ^
      runtimeType.hashCode;
}

extension $SavedEpisodeObjectExtension on SavedEpisodeObject {
  SavedEpisodeObject copyWith({DateTime? addedAt, EpisodeObject? episode}) {
    return SavedEpisodeObject(
        addedAt: addedAt ?? this.addedAt, episode: episode ?? this.episode);
  }

  SavedEpisodeObject copyWithWrapped(
      {Wrapped<DateTime?>? addedAt, Wrapped<EpisodeObject?>? episode}) {
    return SavedEpisodeObject(
        addedAt: (addedAt != null ? addedAt.value : this.addedAt),
        episode: (episode != null ? episode.value : this.episode));
  }
}

@JsonSerializable(explicitToJson: true)
class SavedShowObject {
  SavedShowObject({
    this.addedAt,
    this.show,
  });

  factory SavedShowObject.fromJson(Map<String, dynamic> json) =>
      _$SavedShowObjectFromJson(json);

  static const toJsonFactory = _$SavedShowObjectToJson;
  Map<String, dynamic> toJson() => _$SavedShowObjectToJson(this);

  @JsonKey(name: 'added_at')
  final DateTime? addedAt;
  @JsonKey(name: 'show')
  final SimplifiedShowObject? show;
  static const fromJsonFactory = _$SavedShowObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SavedShowObject &&
            (identical(other.addedAt, addedAt) ||
                const DeepCollectionEquality()
                    .equals(other.addedAt, addedAt)) &&
            (identical(other.show, show) ||
                const DeepCollectionEquality().equals(other.show, show)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addedAt) ^
      const DeepCollectionEquality().hash(show) ^
      runtimeType.hashCode;
}

extension $SavedShowObjectExtension on SavedShowObject {
  SavedShowObject copyWith({DateTime? addedAt, SimplifiedShowObject? show}) {
    return SavedShowObject(
        addedAt: addedAt ?? this.addedAt, show: show ?? this.show);
  }

  SavedShowObject copyWithWrapped(
      {Wrapped<DateTime?>? addedAt, Wrapped<SimplifiedShowObject?>? show}) {
    return SavedShowObject(
        addedAt: (addedAt != null ? addedAt.value : this.addedAt),
        show: (show != null ? show.value : this.show));
  }
}

@JsonSerializable(explicitToJson: true)
class TuneableTrackObject {
  TuneableTrackObject({
    this.acousticness,
    this.danceability,
    this.durationMs,
    this.energy,
    this.instrumentalness,
    this.key,
    this.liveness,
    this.loudness,
    this.mode,
    this.popularity,
    this.speechiness,
    this.tempo,
    this.timeSignature,
    this.valence,
  });

  factory TuneableTrackObject.fromJson(Map<String, dynamic> json) =>
      _$TuneableTrackObjectFromJson(json);

  static const toJsonFactory = _$TuneableTrackObjectToJson;
  Map<String, dynamic> toJson() => _$TuneableTrackObjectToJson(this);

  @JsonKey(name: 'acousticness')
  final double? acousticness;
  @JsonKey(name: 'danceability')
  final double? danceability;
  @JsonKey(name: 'duration_ms')
  final int? durationMs;
  @JsonKey(name: 'energy')
  final double? energy;
  @JsonKey(name: 'instrumentalness')
  final double? instrumentalness;
  @JsonKey(name: 'key')
  final int? key;
  @JsonKey(name: 'liveness')
  final double? liveness;
  @JsonKey(name: 'loudness')
  final num? loudness;
  @JsonKey(name: 'mode')
  final int? mode;
  @JsonKey(name: 'popularity')
  final double? popularity;
  @JsonKey(name: 'speechiness')
  final double? speechiness;
  @JsonKey(name: 'tempo')
  final num? tempo;
  @JsonKey(name: 'time_signature')
  final int? timeSignature;
  @JsonKey(name: 'valence')
  final double? valence;
  static const fromJsonFactory = _$TuneableTrackObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TuneableTrackObject &&
            (identical(other.acousticness, acousticness) ||
                const DeepCollectionEquality()
                    .equals(other.acousticness, acousticness)) &&
            (identical(other.danceability, danceability) ||
                const DeepCollectionEquality()
                    .equals(other.danceability, danceability)) &&
            (identical(other.durationMs, durationMs) ||
                const DeepCollectionEquality()
                    .equals(other.durationMs, durationMs)) &&
            (identical(other.energy, energy) ||
                const DeepCollectionEquality().equals(other.energy, energy)) &&
            (identical(other.instrumentalness, instrumentalness) ||
                const DeepCollectionEquality()
                    .equals(other.instrumentalness, instrumentalness)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.liveness, liveness) ||
                const DeepCollectionEquality()
                    .equals(other.liveness, liveness)) &&
            (identical(other.loudness, loudness) ||
                const DeepCollectionEquality()
                    .equals(other.loudness, loudness)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.speechiness, speechiness) ||
                const DeepCollectionEquality()
                    .equals(other.speechiness, speechiness)) &&
            (identical(other.tempo, tempo) ||
                const DeepCollectionEquality().equals(other.tempo, tempo)) &&
            (identical(other.timeSignature, timeSignature) ||
                const DeepCollectionEquality()
                    .equals(other.timeSignature, timeSignature)) &&
            (identical(other.valence, valence) ||
                const DeepCollectionEquality().equals(other.valence, valence)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(acousticness) ^
      const DeepCollectionEquality().hash(danceability) ^
      const DeepCollectionEquality().hash(durationMs) ^
      const DeepCollectionEquality().hash(energy) ^
      const DeepCollectionEquality().hash(instrumentalness) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(liveness) ^
      const DeepCollectionEquality().hash(loudness) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(speechiness) ^
      const DeepCollectionEquality().hash(tempo) ^
      const DeepCollectionEquality().hash(timeSignature) ^
      const DeepCollectionEquality().hash(valence) ^
      runtimeType.hashCode;
}

extension $TuneableTrackObjectExtension on TuneableTrackObject {
  TuneableTrackObject copyWith(
      {double? acousticness,
      double? danceability,
      int? durationMs,
      double? energy,
      double? instrumentalness,
      int? key,
      double? liveness,
      num? loudness,
      int? mode,
      double? popularity,
      double? speechiness,
      num? tempo,
      int? timeSignature,
      double? valence}) {
    return TuneableTrackObject(
        acousticness: acousticness ?? this.acousticness,
        danceability: danceability ?? this.danceability,
        durationMs: durationMs ?? this.durationMs,
        energy: energy ?? this.energy,
        instrumentalness: instrumentalness ?? this.instrumentalness,
        key: key ?? this.key,
        liveness: liveness ?? this.liveness,
        loudness: loudness ?? this.loudness,
        mode: mode ?? this.mode,
        popularity: popularity ?? this.popularity,
        speechiness: speechiness ?? this.speechiness,
        tempo: tempo ?? this.tempo,
        timeSignature: timeSignature ?? this.timeSignature,
        valence: valence ?? this.valence);
  }

  TuneableTrackObject copyWithWrapped(
      {Wrapped<double?>? acousticness,
      Wrapped<double?>? danceability,
      Wrapped<int?>? durationMs,
      Wrapped<double?>? energy,
      Wrapped<double?>? instrumentalness,
      Wrapped<int?>? key,
      Wrapped<double?>? liveness,
      Wrapped<num?>? loudness,
      Wrapped<int?>? mode,
      Wrapped<double?>? popularity,
      Wrapped<double?>? speechiness,
      Wrapped<num?>? tempo,
      Wrapped<int?>? timeSignature,
      Wrapped<double?>? valence}) {
    return TuneableTrackObject(
        acousticness:
            (acousticness != null ? acousticness.value : this.acousticness),
        danceability:
            (danceability != null ? danceability.value : this.danceability),
        durationMs: (durationMs != null ? durationMs.value : this.durationMs),
        energy: (energy != null ? energy.value : this.energy),
        instrumentalness: (instrumentalness != null
            ? instrumentalness.value
            : this.instrumentalness),
        key: (key != null ? key.value : this.key),
        liveness: (liveness != null ? liveness.value : this.liveness),
        loudness: (loudness != null ? loudness.value : this.loudness),
        mode: (mode != null ? mode.value : this.mode),
        popularity: (popularity != null ? popularity.value : this.popularity),
        speechiness:
            (speechiness != null ? speechiness.value : this.speechiness),
        tempo: (tempo != null ? tempo.value : this.tempo),
        timeSignature:
            (timeSignature != null ? timeSignature.value : this.timeSignature),
        valence: (valence != null ? valence.value : this.valence));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaylistObject {
  PlaylistObject({
    this.collaborative,
    this.description,
    this.externalUrls,
    this.followers,
    this.href,
    this.id,
    this.images,
    this.name,
    this.owner,
    this.public,
    this.snapshotId,
    this.tracks,
    this.type,
    this.uri,
  });

  factory PlaylistObject.fromJson(Map<String, dynamic> json) =>
      _$PlaylistObjectFromJson(json);

  static const toJsonFactory = _$PlaylistObjectToJson;
  Map<String, dynamic> toJson() => _$PlaylistObjectToJson(this);

  @JsonKey(name: 'collaborative')
  final bool? collaborative;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject? externalUrls;
  @JsonKey(name: 'followers')
  final FollowersObject? followers;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject>? images;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'owner')
  final PlaylistOwnerObject? owner;
  @JsonKey(name: 'public')
  final bool? public;
  @JsonKey(name: 'snapshot_id')
  final String? snapshotId;
  @JsonKey(name: 'tracks')
  final Object? tracks;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory = _$PlaylistObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistObject &&
            (identical(other.collaborative, collaborative) ||
                const DeepCollectionEquality()
                    .equals(other.collaborative, collaborative)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.public, public) ||
                const DeepCollectionEquality().equals(other.public, public)) &&
            (identical(other.snapshotId, snapshotId) ||
                const DeepCollectionEquality()
                    .equals(other.snapshotId, snapshotId)) &&
            (identical(other.tracks, tracks) ||
                const DeepCollectionEquality().equals(other.tracks, tracks)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(collaborative) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(public) ^
      const DeepCollectionEquality().hash(snapshotId) ^
      const DeepCollectionEquality().hash(tracks) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $PlaylistObjectExtension on PlaylistObject {
  PlaylistObject copyWith(
      {bool? collaborative,
      String? description,
      ExternalUrlObject? externalUrls,
      FollowersObject? followers,
      String? href,
      String? id,
      List<ImageObject>? images,
      String? name,
      PlaylistOwnerObject? owner,
      bool? public,
      String? snapshotId,
      Object? tracks,
      String? type,
      String? uri}) {
    return PlaylistObject(
        collaborative: collaborative ?? this.collaborative,
        description: description ?? this.description,
        externalUrls: externalUrls ?? this.externalUrls,
        followers: followers ?? this.followers,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        name: name ?? this.name,
        owner: owner ?? this.owner,
        public: public ?? this.public,
        snapshotId: snapshotId ?? this.snapshotId,
        tracks: tracks ?? this.tracks,
        type: type ?? this.type,
        uri: uri ?? this.uri);
  }

  PlaylistObject copyWithWrapped(
      {Wrapped<bool?>? collaborative,
      Wrapped<String?>? description,
      Wrapped<ExternalUrlObject?>? externalUrls,
      Wrapped<FollowersObject?>? followers,
      Wrapped<String?>? href,
      Wrapped<String?>? id,
      Wrapped<List<ImageObject>?>? images,
      Wrapped<String?>? name,
      Wrapped<PlaylistOwnerObject?>? owner,
      Wrapped<bool?>? public,
      Wrapped<String?>? snapshotId,
      Wrapped<Object?>? tracks,
      Wrapped<String?>? type,
      Wrapped<String?>? uri}) {
    return PlaylistObject(
        collaborative:
            (collaborative != null ? collaborative.value : this.collaborative),
        description:
            (description != null ? description.value : this.description),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        followers: (followers != null ? followers.value : this.followers),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        name: (name != null ? name.value : this.name),
        owner: (owner != null ? owner.value : this.owner),
        public: (public != null ? public.value : this.public),
        snapshotId: (snapshotId != null ? snapshotId.value : this.snapshotId),
        tracks: (tracks != null ? tracks.value : this.tracks),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class SimplifiedPlaylistObject {
  SimplifiedPlaylistObject({
    this.collaborative,
    this.description,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.owner,
    this.public,
    this.snapshotId,
    this.tracks,
    this.type,
    this.uri,
  });

  factory SimplifiedPlaylistObject.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedPlaylistObjectFromJson(json);

  static const toJsonFactory = _$SimplifiedPlaylistObjectToJson;
  Map<String, dynamic> toJson() => _$SimplifiedPlaylistObjectToJson(this);

  @JsonKey(name: 'collaborative')
  final bool? collaborative;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject? externalUrls;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject>? images;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'owner')
  final PlaylistOwnerObject? owner;
  @JsonKey(name: 'public')
  final bool? public;
  @JsonKey(name: 'snapshot_id')
  final String? snapshotId;
  @JsonKey(name: 'tracks')
  final PlaylistTracksRefObject? tracks;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory = _$SimplifiedPlaylistObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SimplifiedPlaylistObject &&
            (identical(other.collaborative, collaborative) ||
                const DeepCollectionEquality()
                    .equals(other.collaborative, collaborative)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.public, public) ||
                const DeepCollectionEquality().equals(other.public, public)) &&
            (identical(other.snapshotId, snapshotId) ||
                const DeepCollectionEquality()
                    .equals(other.snapshotId, snapshotId)) &&
            (identical(other.tracks, tracks) ||
                const DeepCollectionEquality().equals(other.tracks, tracks)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(collaborative) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(public) ^
      const DeepCollectionEquality().hash(snapshotId) ^
      const DeepCollectionEquality().hash(tracks) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $SimplifiedPlaylistObjectExtension on SimplifiedPlaylistObject {
  SimplifiedPlaylistObject copyWith(
      {bool? collaborative,
      String? description,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      String? name,
      PlaylistOwnerObject? owner,
      bool? public,
      String? snapshotId,
      PlaylistTracksRefObject? tracks,
      String? type,
      String? uri}) {
    return SimplifiedPlaylistObject(
        collaborative: collaborative ?? this.collaborative,
        description: description ?? this.description,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        name: name ?? this.name,
        owner: owner ?? this.owner,
        public: public ?? this.public,
        snapshotId: snapshotId ?? this.snapshotId,
        tracks: tracks ?? this.tracks,
        type: type ?? this.type,
        uri: uri ?? this.uri);
  }

  SimplifiedPlaylistObject copyWithWrapped(
      {Wrapped<bool?>? collaborative,
      Wrapped<String?>? description,
      Wrapped<ExternalUrlObject?>? externalUrls,
      Wrapped<String?>? href,
      Wrapped<String?>? id,
      Wrapped<List<ImageObject>?>? images,
      Wrapped<String?>? name,
      Wrapped<PlaylistOwnerObject?>? owner,
      Wrapped<bool?>? public,
      Wrapped<String?>? snapshotId,
      Wrapped<PlaylistTracksRefObject?>? tracks,
      Wrapped<String?>? type,
      Wrapped<String?>? uri}) {
    return SimplifiedPlaylistObject(
        collaborative:
            (collaborative != null ? collaborative.value : this.collaborative),
        description:
            (description != null ? description.value : this.description),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        name: (name != null ? name.value : this.name),
        owner: (owner != null ? owner.value : this.owner),
        public: (public != null ? public.value : this.public),
        snapshotId: (snapshotId != null ? snapshotId.value : this.snapshotId),
        tracks: (tracks != null ? tracks.value : this.tracks),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaylistTracksRefObject {
  PlaylistTracksRefObject({
    this.href,
    this.total,
  });

  factory PlaylistTracksRefObject.fromJson(Map<String, dynamic> json) =>
      _$PlaylistTracksRefObjectFromJson(json);

  static const toJsonFactory = _$PlaylistTracksRefObjectToJson;
  Map<String, dynamic> toJson() => _$PlaylistTracksRefObjectToJson(this);

  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$PlaylistTracksRefObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistTracksRefObject &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PlaylistTracksRefObjectExtension on PlaylistTracksRefObject {
  PlaylistTracksRefObject copyWith({String? href, int? total}) {
    return PlaylistTracksRefObject(
        href: href ?? this.href, total: total ?? this.total);
  }

  PlaylistTracksRefObject copyWithWrapped(
      {Wrapped<String?>? href, Wrapped<int?>? total}) {
    return PlaylistTracksRefObject(
        href: (href != null ? href.value : this.href),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaylistUserObject {
  PlaylistUserObject({
    this.externalUrls,
    this.followers,
    this.href,
    this.id,
    this.type,
    this.uri,
  });

  factory PlaylistUserObject.fromJson(Map<String, dynamic> json) =>
      _$PlaylistUserObjectFromJson(json);

  static const toJsonFactory = _$PlaylistUserObjectToJson;
  Map<String, dynamic> toJson() => _$PlaylistUserObjectToJson(this);

  @JsonKey(name: 'external_urls')
  final ExternalUrlObject? externalUrls;
  @JsonKey(name: 'followers')
  final FollowersObject? followers;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'type',
    toJson: playlistUserObjectTypeToJson,
    fromJson: playlistUserObjectTypeFromJson,
  )
  final enums.PlaylistUserObjectType? type;
  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory = _$PlaylistUserObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistUserObject &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $PlaylistUserObjectExtension on PlaylistUserObject {
  PlaylistUserObject copyWith(
      {ExternalUrlObject? externalUrls,
      FollowersObject? followers,
      String? href,
      String? id,
      enums.PlaylistUserObjectType? type,
      String? uri}) {
    return PlaylistUserObject(
        externalUrls: externalUrls ?? this.externalUrls,
        followers: followers ?? this.followers,
        href: href ?? this.href,
        id: id ?? this.id,
        type: type ?? this.type,
        uri: uri ?? this.uri);
  }

  PlaylistUserObject copyWithWrapped(
      {Wrapped<ExternalUrlObject?>? externalUrls,
      Wrapped<FollowersObject?>? followers,
      Wrapped<String?>? href,
      Wrapped<String?>? id,
      Wrapped<enums.PlaylistUserObjectType?>? type,
      Wrapped<String?>? uri}) {
    return PlaylistUserObject(
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        followers: (followers != null ? followers.value : this.followers),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaylistOwnerObject {
  PlaylistOwnerObject({
    this.displayName,
    this.externalUrls,
    this.followers,
    this.href,
    this.id,
    this.type,
    this.uri,
  });

  factory PlaylistOwnerObject.fromJson(Map<String, dynamic> json) =>
      _$PlaylistOwnerObjectFromJson(json);

  static const toJsonFactory = _$PlaylistOwnerObjectToJson;
  Map<String, dynamic> toJson() => _$PlaylistOwnerObjectToJson(this);

  @JsonKey(name: 'display_name')
  final String? displayName;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject? externalUrls;
  @JsonKey(name: 'followers')
  final FollowersObject? followers;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'type',
    toJson: playlistOwnerObjectTypeToJson,
    fromJson: playlistOwnerObjectTypeFromJson,
  )
  final enums.PlaylistOwnerObjectType? type;
  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory = _$PlaylistOwnerObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistOwnerObject &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $PlaylistOwnerObjectExtension on PlaylistOwnerObject {
  PlaylistOwnerObject copyWith(
      {String? displayName,
      ExternalUrlObject? externalUrls,
      FollowersObject? followers,
      String? href,
      String? id,
      enums.PlaylistOwnerObjectType? type,
      String? uri}) {
    return PlaylistOwnerObject(
        displayName: displayName ?? this.displayName,
        externalUrls: externalUrls ?? this.externalUrls,
        followers: followers ?? this.followers,
        href: href ?? this.href,
        id: id ?? this.id,
        type: type ?? this.type,
        uri: uri ?? this.uri);
  }

  PlaylistOwnerObject copyWithWrapped(
      {Wrapped<String?>? displayName,
      Wrapped<ExternalUrlObject?>? externalUrls,
      Wrapped<FollowersObject?>? followers,
      Wrapped<String?>? href,
      Wrapped<String?>? id,
      Wrapped<enums.PlaylistOwnerObjectType?>? type,
      Wrapped<String?>? uri}) {
    return PlaylistOwnerObject(
        displayName:
            (displayName != null ? displayName.value : this.displayName),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        followers: (followers != null ? followers.value : this.followers),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryObject {
  CategoryObject({
    required this.href,
    required this.icons,
    required this.id,
    required this.name,
  });

  factory CategoryObject.fromJson(Map<String, dynamic> json) =>
      _$CategoryObjectFromJson(json);

  static const toJsonFactory = _$CategoryObjectToJson;
  Map<String, dynamic> toJson() => _$CategoryObjectToJson(this);

  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'icons', defaultValue: <ImageObject>[])
  final List<ImageObject> icons;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$CategoryObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryObject &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.icons, icons) ||
                const DeepCollectionEquality().equals(other.icons, icons)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(icons) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $CategoryObjectExtension on CategoryObject {
  CategoryObject copyWith(
      {String? href, List<ImageObject>? icons, String? id, String? name}) {
    return CategoryObject(
        href: href ?? this.href,
        icons: icons ?? this.icons,
        id: id ?? this.id,
        name: name ?? this.name);
  }

  CategoryObject copyWithWrapped(
      {Wrapped<String>? href,
      Wrapped<List<ImageObject>>? icons,
      Wrapped<String>? id,
      Wrapped<String>? name}) {
    return CategoryObject(
        href: (href != null ? href.value : this.href),
        icons: (icons != null ? icons.value : this.icons),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class TrackObject {
  TrackObject({
    this.album,
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.externalIds,
    this.externalUrls,
    this.href,
    this.id,
    this.isPlayable,
    this.linkedFrom,
    this.restrictions,
    this.name,
    this.popularity,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
    this.isLocal,
  });

  factory TrackObject.fromJson(Map<String, dynamic> json) =>
      _$TrackObjectFromJson(json);

  static const toJsonFactory = _$TrackObjectToJson;
  Map<String, dynamic> toJson() => _$TrackObjectToJson(this);

  @JsonKey(name: 'album')
  final SimplifiedAlbumObject? album;
  @JsonKey(name: 'artists', defaultValue: <ArtistObject>[])
  final List<ArtistObject>? artists;
  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String>? availableMarkets;
  @JsonKey(name: 'disc_number')
  final int? discNumber;
  @JsonKey(name: 'duration_ms')
  final int? durationMs;
  @JsonKey(name: 'explicit')
  final bool? explicit;
  @JsonKey(name: 'external_ids')
  final ExternalIdObject? externalIds;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject? externalUrls;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'is_playable')
  final bool? isPlayable;
  @JsonKey(name: 'linked_from')
  final LinkedTrackObject? linkedFrom;
  @JsonKey(name: 'restrictions')
  final TrackRestrictionObject? restrictions;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'popularity')
  final int? popularity;
  @JsonKey(name: 'preview_url')
  final String? previewUrl;
  @JsonKey(name: 'track_number')
  final int? trackNumber;
  @JsonKey(
    name: 'type',
    toJson: trackObjectTypeToJson,
    fromJson: trackObjectTypeFromJson,
  )
  final enums.TrackObjectType? type;
  @JsonKey(name: 'uri')
  final String? uri;
  @JsonKey(name: 'is_local')
  final bool? isLocal;
  static const fromJsonFactory = _$TrackObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackObject &&
            (identical(other.album, album) ||
                const DeepCollectionEquality().equals(other.album, album)) &&
            (identical(other.artists, artists) ||
                const DeepCollectionEquality()
                    .equals(other.artists, artists)) &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.discNumber, discNumber) ||
                const DeepCollectionEquality()
                    .equals(other.discNumber, discNumber)) &&
            (identical(other.durationMs, durationMs) ||
                const DeepCollectionEquality()
                    .equals(other.durationMs, durationMs)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalIds, externalIds) ||
                const DeepCollectionEquality()
                    .equals(other.externalIds, externalIds)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isPlayable, isPlayable) ||
                const DeepCollectionEquality()
                    .equals(other.isPlayable, isPlayable)) &&
            (identical(other.linkedFrom, linkedFrom) ||
                const DeepCollectionEquality()
                    .equals(other.linkedFrom, linkedFrom)) &&
            (identical(other.restrictions, restrictions) ||
                const DeepCollectionEquality()
                    .equals(other.restrictions, restrictions)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previewUrl, previewUrl)) &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.isLocal, isLocal) ||
                const DeepCollectionEquality().equals(other.isLocal, isLocal)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(album) ^
      const DeepCollectionEquality().hash(artists) ^
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(discNumber) ^
      const DeepCollectionEquality().hash(durationMs) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalIds) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isPlayable) ^
      const DeepCollectionEquality().hash(linkedFrom) ^
      const DeepCollectionEquality().hash(restrictions) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(trackNumber) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(isLocal) ^
      runtimeType.hashCode;
}

extension $TrackObjectExtension on TrackObject {
  TrackObject copyWith(
      {SimplifiedAlbumObject? album,
      List<ArtistObject>? artists,
      List<String>? availableMarkets,
      int? discNumber,
      int? durationMs,
      bool? explicit,
      ExternalIdObject? externalIds,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      bool? isPlayable,
      LinkedTrackObject? linkedFrom,
      TrackRestrictionObject? restrictions,
      String? name,
      int? popularity,
      String? previewUrl,
      int? trackNumber,
      enums.TrackObjectType? type,
      String? uri,
      bool? isLocal}) {
    return TrackObject(
        album: album ?? this.album,
        artists: artists ?? this.artists,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        discNumber: discNumber ?? this.discNumber,
        durationMs: durationMs ?? this.durationMs,
        explicit: explicit ?? this.explicit,
        externalIds: externalIds ?? this.externalIds,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        isPlayable: isPlayable ?? this.isPlayable,
        linkedFrom: linkedFrom ?? this.linkedFrom,
        restrictions: restrictions ?? this.restrictions,
        name: name ?? this.name,
        popularity: popularity ?? this.popularity,
        previewUrl: previewUrl ?? this.previewUrl,
        trackNumber: trackNumber ?? this.trackNumber,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        isLocal: isLocal ?? this.isLocal);
  }

  TrackObject copyWithWrapped(
      {Wrapped<SimplifiedAlbumObject?>? album,
      Wrapped<List<ArtistObject>?>? artists,
      Wrapped<List<String>?>? availableMarkets,
      Wrapped<int?>? discNumber,
      Wrapped<int?>? durationMs,
      Wrapped<bool?>? explicit,
      Wrapped<ExternalIdObject?>? externalIds,
      Wrapped<ExternalUrlObject?>? externalUrls,
      Wrapped<String?>? href,
      Wrapped<String?>? id,
      Wrapped<bool?>? isPlayable,
      Wrapped<LinkedTrackObject?>? linkedFrom,
      Wrapped<TrackRestrictionObject?>? restrictions,
      Wrapped<String?>? name,
      Wrapped<int?>? popularity,
      Wrapped<String?>? previewUrl,
      Wrapped<int?>? trackNumber,
      Wrapped<enums.TrackObjectType?>? type,
      Wrapped<String?>? uri,
      Wrapped<bool?>? isLocal}) {
    return TrackObject(
        album: (album != null ? album.value : this.album),
        artists: (artists != null ? artists.value : this.artists),
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        discNumber: (discNumber != null ? discNumber.value : this.discNumber),
        durationMs: (durationMs != null ? durationMs.value : this.durationMs),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalIds:
            (externalIds != null ? externalIds.value : this.externalIds),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        isPlayable: (isPlayable != null ? isPlayable.value : this.isPlayable),
        linkedFrom: (linkedFrom != null ? linkedFrom.value : this.linkedFrom),
        restrictions:
            (restrictions != null ? restrictions.value : this.restrictions),
        name: (name != null ? name.value : this.name),
        popularity: (popularity != null ? popularity.value : this.popularity),
        previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
        trackNumber:
            (trackNumber != null ? trackNumber.value : this.trackNumber),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        isLocal: (isLocal != null ? isLocal.value : this.isLocal));
  }
}

@JsonSerializable(explicitToJson: true)
class EpisodeObject {
  EpisodeObject({
    required this.show,
    required this.audioPreviewUrl,
    required this.description,
    required this.htmlDescription,
    required this.durationMs,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.isExternallyHosted,
    required this.isPlayable,
    this.language,
    required this.languages,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    required this.resumePoint,
    required this.type,
    required this.uri,
    this.restrictions,
  });

  factory EpisodeObject.fromJson(Map<String, dynamic> json) =>
      _$EpisodeObjectFromJson(json);

  static const toJsonFactory = _$EpisodeObjectToJson;
  Map<String, dynamic> toJson() => _$EpisodeObjectToJson(this);

  @JsonKey(name: 'show')
  final SimplifiedShowObject show;
  @JsonKey(name: 'audio_preview_url')
  final String audioPreviewUrl;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'html_description')
  final String htmlDescription;
  @JsonKey(name: 'duration_ms')
  final int durationMs;
  @JsonKey(name: 'explicit')
  final bool explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'is_externally_hosted')
  final bool isExternallyHosted;
  @JsonKey(name: 'is_playable')
  final bool isPlayable;
  @JsonKey(name: 'language')
  final String? language;
  @JsonKey(name: 'languages', defaultValue: <String>[])
  final List<String> languages;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(
    name: 'release_date_precision',
    toJson: episodeObjectReleaseDatePrecisionToJson,
    fromJson: episodeObjectReleaseDatePrecisionFromJson,
  )
  final enums.EpisodeObjectReleaseDatePrecision releaseDatePrecision;
  @JsonKey(name: 'resume_point')
  final ResumePointObject resumePoint;
  @JsonKey(
    name: 'type',
    toJson: episodeObjectTypeToJson,
    fromJson: episodeObjectTypeFromJson,
  )
  final enums.EpisodeObjectType type;
  @JsonKey(name: 'uri')
  final String uri;
  @JsonKey(name: 'restrictions')
  final EpisodeRestrictionObject? restrictions;
  static const fromJsonFactory = _$EpisodeObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpisodeObject &&
            (identical(other.show, show) ||
                const DeepCollectionEquality().equals(other.show, show)) &&
            (identical(other.audioPreviewUrl, audioPreviewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.audioPreviewUrl, audioPreviewUrl)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.htmlDescription, htmlDescription) ||
                const DeepCollectionEquality()
                    .equals(other.htmlDescription, htmlDescription)) &&
            (identical(other.durationMs, durationMs) ||
                const DeepCollectionEquality()
                    .equals(other.durationMs, durationMs)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.isExternallyHosted, isExternallyHosted) ||
                const DeepCollectionEquality()
                    .equals(other.isExternallyHosted, isExternallyHosted)) &&
            (identical(other.isPlayable, isPlayable) ||
                const DeepCollectionEquality()
                    .equals(other.isPlayable, isPlayable)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                const DeepCollectionEquality().equals(
                    other.releaseDatePrecision, releaseDatePrecision)) &&
            (identical(other.resumePoint, resumePoint) ||
                const DeepCollectionEquality()
                    .equals(other.resumePoint, resumePoint)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.restrictions, restrictions) ||
                const DeepCollectionEquality()
                    .equals(other.restrictions, restrictions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(show) ^
      const DeepCollectionEquality().hash(audioPreviewUrl) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(htmlDescription) ^
      const DeepCollectionEquality().hash(durationMs) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(isExternallyHosted) ^
      const DeepCollectionEquality().hash(isPlayable) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(releaseDatePrecision) ^
      const DeepCollectionEquality().hash(resumePoint) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(restrictions) ^
      runtimeType.hashCode;
}

extension $EpisodeObjectExtension on EpisodeObject {
  EpisodeObject copyWith(
      {SimplifiedShowObject? show,
      String? audioPreviewUrl,
      String? description,
      String? htmlDescription,
      int? durationMs,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      bool? isExternallyHosted,
      bool? isPlayable,
      String? language,
      List<String>? languages,
      String? name,
      String? releaseDate,
      enums.EpisodeObjectReleaseDatePrecision? releaseDatePrecision,
      ResumePointObject? resumePoint,
      enums.EpisodeObjectType? type,
      String? uri,
      EpisodeRestrictionObject? restrictions}) {
    return EpisodeObject(
        show: show ?? this.show,
        audioPreviewUrl: audioPreviewUrl ?? this.audioPreviewUrl,
        description: description ?? this.description,
        htmlDescription: htmlDescription ?? this.htmlDescription,
        durationMs: durationMs ?? this.durationMs,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        isExternallyHosted: isExternallyHosted ?? this.isExternallyHosted,
        isPlayable: isPlayable ?? this.isPlayable,
        language: language ?? this.language,
        languages: languages ?? this.languages,
        name: name ?? this.name,
        releaseDate: releaseDate ?? this.releaseDate,
        releaseDatePrecision: releaseDatePrecision ?? this.releaseDatePrecision,
        resumePoint: resumePoint ?? this.resumePoint,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        restrictions: restrictions ?? this.restrictions);
  }

  EpisodeObject copyWithWrapped(
      {Wrapped<SimplifiedShowObject>? show,
      Wrapped<String>? audioPreviewUrl,
      Wrapped<String>? description,
      Wrapped<String>? htmlDescription,
      Wrapped<int>? durationMs,
      Wrapped<bool>? explicit,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<bool>? isExternallyHosted,
      Wrapped<bool>? isPlayable,
      Wrapped<String?>? language,
      Wrapped<List<String>>? languages,
      Wrapped<String>? name,
      Wrapped<String>? releaseDate,
      Wrapped<enums.EpisodeObjectReleaseDatePrecision>? releaseDatePrecision,
      Wrapped<ResumePointObject>? resumePoint,
      Wrapped<enums.EpisodeObjectType>? type,
      Wrapped<String>? uri,
      Wrapped<EpisodeRestrictionObject?>? restrictions}) {
    return EpisodeObject(
        show: (show != null ? show.value : this.show),
        audioPreviewUrl: (audioPreviewUrl != null
            ? audioPreviewUrl.value
            : this.audioPreviewUrl),
        description:
            (description != null ? description.value : this.description),
        htmlDescription: (htmlDescription != null
            ? htmlDescription.value
            : this.htmlDescription),
        durationMs: (durationMs != null ? durationMs.value : this.durationMs),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        isExternallyHosted: (isExternallyHosted != null
            ? isExternallyHosted.value
            : this.isExternallyHosted),
        isPlayable: (isPlayable != null ? isPlayable.value : this.isPlayable),
        language: (language != null ? language.value : this.language),
        languages: (languages != null ? languages.value : this.languages),
        name: (name != null ? name.value : this.name),
        releaseDate:
            (releaseDate != null ? releaseDate.value : this.releaseDate),
        releaseDatePrecision: (releaseDatePrecision != null
            ? releaseDatePrecision.value
            : this.releaseDatePrecision),
        resumePoint:
            (resumePoint != null ? resumePoint.value : this.resumePoint),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        restrictions:
            (restrictions != null ? restrictions.value : this.restrictions));
  }
}

@JsonSerializable(explicitToJson: true)
class SimplifiedEpisodeObject {
  SimplifiedEpisodeObject({
    required this.audioPreviewUrl,
    required this.description,
    required this.htmlDescription,
    required this.durationMs,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.isExternallyHosted,
    required this.isPlayable,
    this.language,
    required this.languages,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    required this.resumePoint,
    required this.type,
    required this.uri,
    this.restrictions,
  });

  factory SimplifiedEpisodeObject.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedEpisodeObjectFromJson(json);

  static const toJsonFactory = _$SimplifiedEpisodeObjectToJson;
  Map<String, dynamic> toJson() => _$SimplifiedEpisodeObjectToJson(this);

  @JsonKey(name: 'audio_preview_url')
  final String audioPreviewUrl;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'html_description')
  final String htmlDescription;
  @JsonKey(name: 'duration_ms')
  final int durationMs;
  @JsonKey(name: 'explicit')
  final bool explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'is_externally_hosted')
  final bool isExternallyHosted;
  @JsonKey(name: 'is_playable')
  final bool isPlayable;
  @JsonKey(name: 'language')
  final String? language;
  @JsonKey(name: 'languages', defaultValue: <String>[])
  final List<String> languages;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(
    name: 'release_date_precision',
    toJson: simplifiedEpisodeObjectReleaseDatePrecisionToJson,
    fromJson: simplifiedEpisodeObjectReleaseDatePrecisionFromJson,
  )
  final enums.SimplifiedEpisodeObjectReleaseDatePrecision releaseDatePrecision;
  @JsonKey(name: 'resume_point')
  final ResumePointObject resumePoint;
  @JsonKey(
    name: 'type',
    toJson: simplifiedEpisodeObjectTypeToJson,
    fromJson: simplifiedEpisodeObjectTypeFromJson,
  )
  final enums.SimplifiedEpisodeObjectType type;
  @JsonKey(name: 'uri')
  final String uri;
  @JsonKey(name: 'restrictions')
  final EpisodeRestrictionObject? restrictions;
  static const fromJsonFactory = _$SimplifiedEpisodeObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SimplifiedEpisodeObject &&
            (identical(other.audioPreviewUrl, audioPreviewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.audioPreviewUrl, audioPreviewUrl)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.htmlDescription, htmlDescription) ||
                const DeepCollectionEquality()
                    .equals(other.htmlDescription, htmlDescription)) &&
            (identical(other.durationMs, durationMs) ||
                const DeepCollectionEquality()
                    .equals(other.durationMs, durationMs)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.isExternallyHosted, isExternallyHosted) ||
                const DeepCollectionEquality()
                    .equals(other.isExternallyHosted, isExternallyHosted)) &&
            (identical(other.isPlayable, isPlayable) ||
                const DeepCollectionEquality()
                    .equals(other.isPlayable, isPlayable)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                const DeepCollectionEquality().equals(
                    other.releaseDatePrecision, releaseDatePrecision)) &&
            (identical(other.resumePoint, resumePoint) ||
                const DeepCollectionEquality()
                    .equals(other.resumePoint, resumePoint)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.restrictions, restrictions) ||
                const DeepCollectionEquality()
                    .equals(other.restrictions, restrictions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(audioPreviewUrl) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(htmlDescription) ^
      const DeepCollectionEquality().hash(durationMs) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(isExternallyHosted) ^
      const DeepCollectionEquality().hash(isPlayable) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(releaseDatePrecision) ^
      const DeepCollectionEquality().hash(resumePoint) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(restrictions) ^
      runtimeType.hashCode;
}

extension $SimplifiedEpisodeObjectExtension on SimplifiedEpisodeObject {
  SimplifiedEpisodeObject copyWith(
      {String? audioPreviewUrl,
      String? description,
      String? htmlDescription,
      int? durationMs,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      bool? isExternallyHosted,
      bool? isPlayable,
      String? language,
      List<String>? languages,
      String? name,
      String? releaseDate,
      enums.SimplifiedEpisodeObjectReleaseDatePrecision? releaseDatePrecision,
      ResumePointObject? resumePoint,
      enums.SimplifiedEpisodeObjectType? type,
      String? uri,
      EpisodeRestrictionObject? restrictions}) {
    return SimplifiedEpisodeObject(
        audioPreviewUrl: audioPreviewUrl ?? this.audioPreviewUrl,
        description: description ?? this.description,
        htmlDescription: htmlDescription ?? this.htmlDescription,
        durationMs: durationMs ?? this.durationMs,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        isExternallyHosted: isExternallyHosted ?? this.isExternallyHosted,
        isPlayable: isPlayable ?? this.isPlayable,
        language: language ?? this.language,
        languages: languages ?? this.languages,
        name: name ?? this.name,
        releaseDate: releaseDate ?? this.releaseDate,
        releaseDatePrecision: releaseDatePrecision ?? this.releaseDatePrecision,
        resumePoint: resumePoint ?? this.resumePoint,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        restrictions: restrictions ?? this.restrictions);
  }

  SimplifiedEpisodeObject copyWithWrapped(
      {Wrapped<String>? audioPreviewUrl,
      Wrapped<String>? description,
      Wrapped<String>? htmlDescription,
      Wrapped<int>? durationMs,
      Wrapped<bool>? explicit,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<bool>? isExternallyHosted,
      Wrapped<bool>? isPlayable,
      Wrapped<String?>? language,
      Wrapped<List<String>>? languages,
      Wrapped<String>? name,
      Wrapped<String>? releaseDate,
      Wrapped<enums.SimplifiedEpisodeObjectReleaseDatePrecision>?
          releaseDatePrecision,
      Wrapped<ResumePointObject>? resumePoint,
      Wrapped<enums.SimplifiedEpisodeObjectType>? type,
      Wrapped<String>? uri,
      Wrapped<EpisodeRestrictionObject?>? restrictions}) {
    return SimplifiedEpisodeObject(
        audioPreviewUrl: (audioPreviewUrl != null
            ? audioPreviewUrl.value
            : this.audioPreviewUrl),
        description:
            (description != null ? description.value : this.description),
        htmlDescription: (htmlDescription != null
            ? htmlDescription.value
            : this.htmlDescription),
        durationMs: (durationMs != null ? durationMs.value : this.durationMs),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        isExternallyHosted: (isExternallyHosted != null
            ? isExternallyHosted.value
            : this.isExternallyHosted),
        isPlayable: (isPlayable != null ? isPlayable.value : this.isPlayable),
        language: (language != null ? language.value : this.language),
        languages: (languages != null ? languages.value : this.languages),
        name: (name != null ? name.value : this.name),
        releaseDate:
            (releaseDate != null ? releaseDate.value : this.releaseDate),
        releaseDatePrecision: (releaseDatePrecision != null
            ? releaseDatePrecision.value
            : this.releaseDatePrecision),
        resumePoint:
            (resumePoint != null ? resumePoint.value : this.resumePoint),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        restrictions:
            (restrictions != null ? restrictions.value : this.restrictions));
  }
}

@JsonSerializable(explicitToJson: true)
class EpisodeBase {
  EpisodeBase({
    required this.audioPreviewUrl,
    required this.description,
    required this.htmlDescription,
    required this.durationMs,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.isExternallyHosted,
    required this.isPlayable,
    this.language,
    required this.languages,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    required this.resumePoint,
    required this.type,
    required this.uri,
    this.restrictions,
  });

  factory EpisodeBase.fromJson(Map<String, dynamic> json) =>
      _$EpisodeBaseFromJson(json);

  static const toJsonFactory = _$EpisodeBaseToJson;
  Map<String, dynamic> toJson() => _$EpisodeBaseToJson(this);

  @JsonKey(name: 'audio_preview_url')
  final String audioPreviewUrl;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'html_description')
  final String htmlDescription;
  @JsonKey(name: 'duration_ms')
  final int durationMs;
  @JsonKey(name: 'explicit')
  final bool explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'is_externally_hosted')
  final bool isExternallyHosted;
  @JsonKey(name: 'is_playable')
  final bool isPlayable;
  @JsonKey(name: 'language')
  final String? language;
  @JsonKey(name: 'languages', defaultValue: <String>[])
  final List<String> languages;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(
    name: 'release_date_precision',
    toJson: episodeBaseReleaseDatePrecisionToJson,
    fromJson: episodeBaseReleaseDatePrecisionFromJson,
  )
  final enums.EpisodeBaseReleaseDatePrecision releaseDatePrecision;
  @JsonKey(name: 'resume_point')
  final ResumePointObject resumePoint;
  @JsonKey(
    name: 'type',
    toJson: episodeBaseTypeToJson,
    fromJson: episodeBaseTypeFromJson,
  )
  final enums.EpisodeBaseType type;
  @JsonKey(name: 'uri')
  final String uri;
  @JsonKey(name: 'restrictions')
  final EpisodeRestrictionObject? restrictions;
  static const fromJsonFactory = _$EpisodeBaseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpisodeBase &&
            (identical(other.audioPreviewUrl, audioPreviewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.audioPreviewUrl, audioPreviewUrl)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.htmlDescription, htmlDescription) ||
                const DeepCollectionEquality()
                    .equals(other.htmlDescription, htmlDescription)) &&
            (identical(other.durationMs, durationMs) ||
                const DeepCollectionEquality()
                    .equals(other.durationMs, durationMs)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.isExternallyHosted, isExternallyHosted) ||
                const DeepCollectionEquality()
                    .equals(other.isExternallyHosted, isExternallyHosted)) &&
            (identical(other.isPlayable, isPlayable) ||
                const DeepCollectionEquality()
                    .equals(other.isPlayable, isPlayable)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                const DeepCollectionEquality().equals(
                    other.releaseDatePrecision, releaseDatePrecision)) &&
            (identical(other.resumePoint, resumePoint) ||
                const DeepCollectionEquality()
                    .equals(other.resumePoint, resumePoint)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.restrictions, restrictions) ||
                const DeepCollectionEquality()
                    .equals(other.restrictions, restrictions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(audioPreviewUrl) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(htmlDescription) ^
      const DeepCollectionEquality().hash(durationMs) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(isExternallyHosted) ^
      const DeepCollectionEquality().hash(isPlayable) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(releaseDatePrecision) ^
      const DeepCollectionEquality().hash(resumePoint) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(restrictions) ^
      runtimeType.hashCode;
}

extension $EpisodeBaseExtension on EpisodeBase {
  EpisodeBase copyWith(
      {String? audioPreviewUrl,
      String? description,
      String? htmlDescription,
      int? durationMs,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      bool? isExternallyHosted,
      bool? isPlayable,
      String? language,
      List<String>? languages,
      String? name,
      String? releaseDate,
      enums.EpisodeBaseReleaseDatePrecision? releaseDatePrecision,
      ResumePointObject? resumePoint,
      enums.EpisodeBaseType? type,
      String? uri,
      EpisodeRestrictionObject? restrictions}) {
    return EpisodeBase(
        audioPreviewUrl: audioPreviewUrl ?? this.audioPreviewUrl,
        description: description ?? this.description,
        htmlDescription: htmlDescription ?? this.htmlDescription,
        durationMs: durationMs ?? this.durationMs,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        isExternallyHosted: isExternallyHosted ?? this.isExternallyHosted,
        isPlayable: isPlayable ?? this.isPlayable,
        language: language ?? this.language,
        languages: languages ?? this.languages,
        name: name ?? this.name,
        releaseDate: releaseDate ?? this.releaseDate,
        releaseDatePrecision: releaseDatePrecision ?? this.releaseDatePrecision,
        resumePoint: resumePoint ?? this.resumePoint,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        restrictions: restrictions ?? this.restrictions);
  }

  EpisodeBase copyWithWrapped(
      {Wrapped<String>? audioPreviewUrl,
      Wrapped<String>? description,
      Wrapped<String>? htmlDescription,
      Wrapped<int>? durationMs,
      Wrapped<bool>? explicit,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<bool>? isExternallyHosted,
      Wrapped<bool>? isPlayable,
      Wrapped<String?>? language,
      Wrapped<List<String>>? languages,
      Wrapped<String>? name,
      Wrapped<String>? releaseDate,
      Wrapped<enums.EpisodeBaseReleaseDatePrecision>? releaseDatePrecision,
      Wrapped<ResumePointObject>? resumePoint,
      Wrapped<enums.EpisodeBaseType>? type,
      Wrapped<String>? uri,
      Wrapped<EpisodeRestrictionObject?>? restrictions}) {
    return EpisodeBase(
        audioPreviewUrl: (audioPreviewUrl != null
            ? audioPreviewUrl.value
            : this.audioPreviewUrl),
        description:
            (description != null ? description.value : this.description),
        htmlDescription: (htmlDescription != null
            ? htmlDescription.value
            : this.htmlDescription),
        durationMs: (durationMs != null ? durationMs.value : this.durationMs),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        isExternallyHosted: (isExternallyHosted != null
            ? isExternallyHosted.value
            : this.isExternallyHosted),
        isPlayable: (isPlayable != null ? isPlayable.value : this.isPlayable),
        language: (language != null ? language.value : this.language),
        languages: (languages != null ? languages.value : this.languages),
        name: (name != null ? name.value : this.name),
        releaseDate:
            (releaseDate != null ? releaseDate.value : this.releaseDate),
        releaseDatePrecision: (releaseDatePrecision != null
            ? releaseDatePrecision.value
            : this.releaseDatePrecision),
        resumePoint:
            (resumePoint != null ? resumePoint.value : this.resumePoint),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        restrictions:
            (restrictions != null ? restrictions.value : this.restrictions));
  }
}

@JsonSerializable(explicitToJson: true)
class ResumePointObject {
  ResumePointObject({
    this.fullyPlayed,
    this.resumePositionMs,
  });

  factory ResumePointObject.fromJson(Map<String, dynamic> json) =>
      _$ResumePointObjectFromJson(json);

  static const toJsonFactory = _$ResumePointObjectToJson;
  Map<String, dynamic> toJson() => _$ResumePointObjectToJson(this);

  @JsonKey(name: 'fully_played')
  final bool? fullyPlayed;
  @JsonKey(name: 'resume_position_ms')
  final int? resumePositionMs;
  static const fromJsonFactory = _$ResumePointObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResumePointObject &&
            (identical(other.fullyPlayed, fullyPlayed) ||
                const DeepCollectionEquality()
                    .equals(other.fullyPlayed, fullyPlayed)) &&
            (identical(other.resumePositionMs, resumePositionMs) ||
                const DeepCollectionEquality()
                    .equals(other.resumePositionMs, resumePositionMs)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fullyPlayed) ^
      const DeepCollectionEquality().hash(resumePositionMs) ^
      runtimeType.hashCode;
}

extension $ResumePointObjectExtension on ResumePointObject {
  ResumePointObject copyWith({bool? fullyPlayed, int? resumePositionMs}) {
    return ResumePointObject(
        fullyPlayed: fullyPlayed ?? this.fullyPlayed,
        resumePositionMs: resumePositionMs ?? this.resumePositionMs);
  }

  ResumePointObject copyWithWrapped(
      {Wrapped<bool?>? fullyPlayed, Wrapped<int?>? resumePositionMs}) {
    return ResumePointObject(
        fullyPlayed:
            (fullyPlayed != null ? fullyPlayed.value : this.fullyPlayed),
        resumePositionMs: (resumePositionMs != null
            ? resumePositionMs.value
            : this.resumePositionMs));
  }
}

@JsonSerializable(explicitToJson: true)
class ShowBase {
  ShowBase({
    required this.availableMarkets,
    required this.copyrights,
    required this.description,
    required this.htmlDescription,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.isExternallyHosted,
    required this.languages,
    required this.mediaType,
    required this.name,
    required this.publisher,
    required this.type,
    required this.uri,
    required this.totalEpisodes,
  });

  factory ShowBase.fromJson(Map<String, dynamic> json) =>
      _$ShowBaseFromJson(json);

  static const toJsonFactory = _$ShowBaseToJson;
  Map<String, dynamic> toJson() => _$ShowBaseToJson(this);

  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String> availableMarkets;
  @JsonKey(name: 'copyrights', defaultValue: <CopyrightObject>[])
  final List<CopyrightObject> copyrights;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'html_description')
  final String htmlDescription;
  @JsonKey(name: 'explicit')
  final bool explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'is_externally_hosted')
  final bool isExternallyHosted;
  @JsonKey(name: 'languages', defaultValue: <String>[])
  final List<String> languages;
  @JsonKey(name: 'media_type')
  final String mediaType;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'publisher')
  final String publisher;
  @JsonKey(
    name: 'type',
    toJson: showBaseTypeToJson,
    fromJson: showBaseTypeFromJson,
  )
  final enums.ShowBaseType type;
  @JsonKey(name: 'uri')
  final String uri;
  @JsonKey(name: 'total_episodes')
  final int totalEpisodes;
  static const fromJsonFactory = _$ShowBaseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowBase &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.htmlDescription, htmlDescription) ||
                const DeepCollectionEquality()
                    .equals(other.htmlDescription, htmlDescription)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.isExternallyHosted, isExternallyHosted) ||
                const DeepCollectionEquality()
                    .equals(other.isExternallyHosted, isExternallyHosted)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.totalEpisodes, totalEpisodes) ||
                const DeepCollectionEquality()
                    .equals(other.totalEpisodes, totalEpisodes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(htmlDescription) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(isExternallyHosted) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(totalEpisodes) ^
      runtimeType.hashCode;
}

extension $ShowBaseExtension on ShowBase {
  ShowBase copyWith(
      {List<String>? availableMarkets,
      List<CopyrightObject>? copyrights,
      String? description,
      String? htmlDescription,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      bool? isExternallyHosted,
      List<String>? languages,
      String? mediaType,
      String? name,
      String? publisher,
      enums.ShowBaseType? type,
      String? uri,
      int? totalEpisodes}) {
    return ShowBase(
        availableMarkets: availableMarkets ?? this.availableMarkets,
        copyrights: copyrights ?? this.copyrights,
        description: description ?? this.description,
        htmlDescription: htmlDescription ?? this.htmlDescription,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        isExternallyHosted: isExternallyHosted ?? this.isExternallyHosted,
        languages: languages ?? this.languages,
        mediaType: mediaType ?? this.mediaType,
        name: name ?? this.name,
        publisher: publisher ?? this.publisher,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        totalEpisodes: totalEpisodes ?? this.totalEpisodes);
  }

  ShowBase copyWithWrapped(
      {Wrapped<List<String>>? availableMarkets,
      Wrapped<List<CopyrightObject>>? copyrights,
      Wrapped<String>? description,
      Wrapped<String>? htmlDescription,
      Wrapped<bool>? explicit,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<bool>? isExternallyHosted,
      Wrapped<List<String>>? languages,
      Wrapped<String>? mediaType,
      Wrapped<String>? name,
      Wrapped<String>? publisher,
      Wrapped<enums.ShowBaseType>? type,
      Wrapped<String>? uri,
      Wrapped<int>? totalEpisodes}) {
    return ShowBase(
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        copyrights: (copyrights != null ? copyrights.value : this.copyrights),
        description:
            (description != null ? description.value : this.description),
        htmlDescription: (htmlDescription != null
            ? htmlDescription.value
            : this.htmlDescription),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        isExternallyHosted: (isExternallyHosted != null
            ? isExternallyHosted.value
            : this.isExternallyHosted),
        languages: (languages != null ? languages.value : this.languages),
        mediaType: (mediaType != null ? mediaType.value : this.mediaType),
        name: (name != null ? name.value : this.name),
        publisher: (publisher != null ? publisher.value : this.publisher),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        totalEpisodes:
            (totalEpisodes != null ? totalEpisodes.value : this.totalEpisodes));
  }
}

@JsonSerializable(explicitToJson: true)
class ShowObject {
  ShowObject({
    required this.episodes,
    required this.availableMarkets,
    required this.copyrights,
    required this.description,
    required this.htmlDescription,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.isExternallyHosted,
    required this.languages,
    required this.mediaType,
    required this.name,
    required this.publisher,
    required this.type,
    required this.uri,
    required this.totalEpisodes,
  });

  factory ShowObject.fromJson(Map<String, dynamic> json) =>
      _$ShowObjectFromJson(json);

  static const toJsonFactory = _$ShowObjectToJson;
  Map<String, dynamic> toJson() => _$ShowObjectToJson(this);

  @JsonKey(name: 'episodes')
  final Object episodes;
  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String> availableMarkets;
  @JsonKey(name: 'copyrights', defaultValue: <CopyrightObject>[])
  final List<CopyrightObject> copyrights;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'html_description')
  final String htmlDescription;
  @JsonKey(name: 'explicit')
  final bool explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'is_externally_hosted')
  final bool isExternallyHosted;
  @JsonKey(name: 'languages', defaultValue: <String>[])
  final List<String> languages;
  @JsonKey(name: 'media_type')
  final String mediaType;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'publisher')
  final String publisher;
  @JsonKey(
    name: 'type',
    toJson: showObjectTypeToJson,
    fromJson: showObjectTypeFromJson,
  )
  final enums.ShowObjectType type;
  @JsonKey(name: 'uri')
  final String uri;
  @JsonKey(name: 'total_episodes')
  final int totalEpisodes;
  static const fromJsonFactory = _$ShowObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowObject &&
            (identical(other.episodes, episodes) ||
                const DeepCollectionEquality()
                    .equals(other.episodes, episodes)) &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.htmlDescription, htmlDescription) ||
                const DeepCollectionEquality()
                    .equals(other.htmlDescription, htmlDescription)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.isExternallyHosted, isExternallyHosted) ||
                const DeepCollectionEquality()
                    .equals(other.isExternallyHosted, isExternallyHosted)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.totalEpisodes, totalEpisodes) ||
                const DeepCollectionEquality()
                    .equals(other.totalEpisodes, totalEpisodes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(episodes) ^
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(htmlDescription) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(isExternallyHosted) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(totalEpisodes) ^
      runtimeType.hashCode;
}

extension $ShowObjectExtension on ShowObject {
  ShowObject copyWith(
      {Object? episodes,
      List<String>? availableMarkets,
      List<CopyrightObject>? copyrights,
      String? description,
      String? htmlDescription,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      bool? isExternallyHosted,
      List<String>? languages,
      String? mediaType,
      String? name,
      String? publisher,
      enums.ShowObjectType? type,
      String? uri,
      int? totalEpisodes}) {
    return ShowObject(
        episodes: episodes ?? this.episodes,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        copyrights: copyrights ?? this.copyrights,
        description: description ?? this.description,
        htmlDescription: htmlDescription ?? this.htmlDescription,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        isExternallyHosted: isExternallyHosted ?? this.isExternallyHosted,
        languages: languages ?? this.languages,
        mediaType: mediaType ?? this.mediaType,
        name: name ?? this.name,
        publisher: publisher ?? this.publisher,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        totalEpisodes: totalEpisodes ?? this.totalEpisodes);
  }

  ShowObject copyWithWrapped(
      {Wrapped<Object>? episodes,
      Wrapped<List<String>>? availableMarkets,
      Wrapped<List<CopyrightObject>>? copyrights,
      Wrapped<String>? description,
      Wrapped<String>? htmlDescription,
      Wrapped<bool>? explicit,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<bool>? isExternallyHosted,
      Wrapped<List<String>>? languages,
      Wrapped<String>? mediaType,
      Wrapped<String>? name,
      Wrapped<String>? publisher,
      Wrapped<enums.ShowObjectType>? type,
      Wrapped<String>? uri,
      Wrapped<int>? totalEpisodes}) {
    return ShowObject(
        episodes: (episodes != null ? episodes.value : this.episodes),
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        copyrights: (copyrights != null ? copyrights.value : this.copyrights),
        description:
            (description != null ? description.value : this.description),
        htmlDescription: (htmlDescription != null
            ? htmlDescription.value
            : this.htmlDescription),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        isExternallyHosted: (isExternallyHosted != null
            ? isExternallyHosted.value
            : this.isExternallyHosted),
        languages: (languages != null ? languages.value : this.languages),
        mediaType: (mediaType != null ? mediaType.value : this.mediaType),
        name: (name != null ? name.value : this.name),
        publisher: (publisher != null ? publisher.value : this.publisher),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        totalEpisodes:
            (totalEpisodes != null ? totalEpisodes.value : this.totalEpisodes));
  }
}

@JsonSerializable(explicitToJson: true)
class SimplifiedShowObject {
  SimplifiedShowObject({
    required this.availableMarkets,
    required this.copyrights,
    required this.description,
    required this.htmlDescription,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.isExternallyHosted,
    required this.languages,
    required this.mediaType,
    required this.name,
    required this.publisher,
    required this.type,
    required this.uri,
    required this.totalEpisodes,
  });

  factory SimplifiedShowObject.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedShowObjectFromJson(json);

  static const toJsonFactory = _$SimplifiedShowObjectToJson;
  Map<String, dynamic> toJson() => _$SimplifiedShowObjectToJson(this);

  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String> availableMarkets;
  @JsonKey(name: 'copyrights', defaultValue: <CopyrightObject>[])
  final List<CopyrightObject> copyrights;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'html_description')
  final String htmlDescription;
  @JsonKey(name: 'explicit')
  final bool explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'is_externally_hosted')
  final bool isExternallyHosted;
  @JsonKey(name: 'languages', defaultValue: <String>[])
  final List<String> languages;
  @JsonKey(name: 'media_type')
  final String mediaType;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'publisher')
  final String publisher;
  @JsonKey(
    name: 'type',
    toJson: simplifiedShowObjectTypeToJson,
    fromJson: simplifiedShowObjectTypeFromJson,
  )
  final enums.SimplifiedShowObjectType type;
  @JsonKey(name: 'uri')
  final String uri;
  @JsonKey(name: 'total_episodes')
  final int totalEpisodes;
  static const fromJsonFactory = _$SimplifiedShowObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SimplifiedShowObject &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.htmlDescription, htmlDescription) ||
                const DeepCollectionEquality()
                    .equals(other.htmlDescription, htmlDescription)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.isExternallyHosted, isExternallyHosted) ||
                const DeepCollectionEquality()
                    .equals(other.isExternallyHosted, isExternallyHosted)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.totalEpisodes, totalEpisodes) ||
                const DeepCollectionEquality()
                    .equals(other.totalEpisodes, totalEpisodes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(htmlDescription) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(isExternallyHosted) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(totalEpisodes) ^
      runtimeType.hashCode;
}

extension $SimplifiedShowObjectExtension on SimplifiedShowObject {
  SimplifiedShowObject copyWith(
      {List<String>? availableMarkets,
      List<CopyrightObject>? copyrights,
      String? description,
      String? htmlDescription,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      bool? isExternallyHosted,
      List<String>? languages,
      String? mediaType,
      String? name,
      String? publisher,
      enums.SimplifiedShowObjectType? type,
      String? uri,
      int? totalEpisodes}) {
    return SimplifiedShowObject(
        availableMarkets: availableMarkets ?? this.availableMarkets,
        copyrights: copyrights ?? this.copyrights,
        description: description ?? this.description,
        htmlDescription: htmlDescription ?? this.htmlDescription,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        isExternallyHosted: isExternallyHosted ?? this.isExternallyHosted,
        languages: languages ?? this.languages,
        mediaType: mediaType ?? this.mediaType,
        name: name ?? this.name,
        publisher: publisher ?? this.publisher,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        totalEpisodes: totalEpisodes ?? this.totalEpisodes);
  }

  SimplifiedShowObject copyWithWrapped(
      {Wrapped<List<String>>? availableMarkets,
      Wrapped<List<CopyrightObject>>? copyrights,
      Wrapped<String>? description,
      Wrapped<String>? htmlDescription,
      Wrapped<bool>? explicit,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<bool>? isExternallyHosted,
      Wrapped<List<String>>? languages,
      Wrapped<String>? mediaType,
      Wrapped<String>? name,
      Wrapped<String>? publisher,
      Wrapped<enums.SimplifiedShowObjectType>? type,
      Wrapped<String>? uri,
      Wrapped<int>? totalEpisodes}) {
    return SimplifiedShowObject(
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        copyrights: (copyrights != null ? copyrights.value : this.copyrights),
        description:
            (description != null ? description.value : this.description),
        htmlDescription: (htmlDescription != null
            ? htmlDescription.value
            : this.htmlDescription),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        isExternallyHosted: (isExternallyHosted != null
            ? isExternallyHosted.value
            : this.isExternallyHosted),
        languages: (languages != null ? languages.value : this.languages),
        mediaType: (mediaType != null ? mediaType.value : this.mediaType),
        name: (name != null ? name.value : this.name),
        publisher: (publisher != null ? publisher.value : this.publisher),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        totalEpisodes:
            (totalEpisodes != null ? totalEpisodes.value : this.totalEpisodes));
  }
}

@JsonSerializable(explicitToJson: true)
class AudiobookBase {
  AudiobookBase({
    required this.authors,
    required this.availableMarkets,
    required this.copyrights,
    required this.description,
    required this.htmlDescription,
    this.edition,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.languages,
    required this.mediaType,
    required this.name,
    required this.narrators,
    required this.publisher,
    required this.type,
    required this.uri,
    required this.totalChapters,
  });

  factory AudiobookBase.fromJson(Map<String, dynamic> json) =>
      _$AudiobookBaseFromJson(json);

  static const toJsonFactory = _$AudiobookBaseToJson;
  Map<String, dynamic> toJson() => _$AudiobookBaseToJson(this);

  @JsonKey(name: 'authors', defaultValue: <AuthorObject>[])
  final List<AuthorObject> authors;
  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String> availableMarkets;
  @JsonKey(name: 'copyrights', defaultValue: <CopyrightObject>[])
  final List<CopyrightObject> copyrights;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'html_description')
  final String htmlDescription;
  @JsonKey(name: 'edition')
  final String? edition;
  @JsonKey(name: 'explicit')
  final bool explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'languages', defaultValue: <String>[])
  final List<String> languages;
  @JsonKey(name: 'media_type')
  final String mediaType;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'narrators', defaultValue: <NarratorObject>[])
  final List<NarratorObject> narrators;
  @JsonKey(name: 'publisher')
  final String publisher;
  @JsonKey(
    name: 'type',
    toJson: audiobookBaseTypeToJson,
    fromJson: audiobookBaseTypeFromJson,
  )
  final enums.AudiobookBaseType type;
  @JsonKey(name: 'uri')
  final String uri;
  @JsonKey(name: 'total_chapters')
  final int totalChapters;
  static const fromJsonFactory = _$AudiobookBaseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AudiobookBase &&
            (identical(other.authors, authors) ||
                const DeepCollectionEquality()
                    .equals(other.authors, authors)) &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.htmlDescription, htmlDescription) ||
                const DeepCollectionEquality()
                    .equals(other.htmlDescription, htmlDescription)) &&
            (identical(other.edition, edition) ||
                const DeepCollectionEquality()
                    .equals(other.edition, edition)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.narrators, narrators) ||
                const DeepCollectionEquality()
                    .equals(other.narrators, narrators)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.totalChapters, totalChapters) ||
                const DeepCollectionEquality()
                    .equals(other.totalChapters, totalChapters)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(authors) ^
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(htmlDescription) ^
      const DeepCollectionEquality().hash(edition) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(narrators) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(totalChapters) ^
      runtimeType.hashCode;
}

extension $AudiobookBaseExtension on AudiobookBase {
  AudiobookBase copyWith(
      {List<AuthorObject>? authors,
      List<String>? availableMarkets,
      List<CopyrightObject>? copyrights,
      String? description,
      String? htmlDescription,
      String? edition,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      List<String>? languages,
      String? mediaType,
      String? name,
      List<NarratorObject>? narrators,
      String? publisher,
      enums.AudiobookBaseType? type,
      String? uri,
      int? totalChapters}) {
    return AudiobookBase(
        authors: authors ?? this.authors,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        copyrights: copyrights ?? this.copyrights,
        description: description ?? this.description,
        htmlDescription: htmlDescription ?? this.htmlDescription,
        edition: edition ?? this.edition,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        languages: languages ?? this.languages,
        mediaType: mediaType ?? this.mediaType,
        name: name ?? this.name,
        narrators: narrators ?? this.narrators,
        publisher: publisher ?? this.publisher,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        totalChapters: totalChapters ?? this.totalChapters);
  }

  AudiobookBase copyWithWrapped(
      {Wrapped<List<AuthorObject>>? authors,
      Wrapped<List<String>>? availableMarkets,
      Wrapped<List<CopyrightObject>>? copyrights,
      Wrapped<String>? description,
      Wrapped<String>? htmlDescription,
      Wrapped<String?>? edition,
      Wrapped<bool>? explicit,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<List<String>>? languages,
      Wrapped<String>? mediaType,
      Wrapped<String>? name,
      Wrapped<List<NarratorObject>>? narrators,
      Wrapped<String>? publisher,
      Wrapped<enums.AudiobookBaseType>? type,
      Wrapped<String>? uri,
      Wrapped<int>? totalChapters}) {
    return AudiobookBase(
        authors: (authors != null ? authors.value : this.authors),
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        copyrights: (copyrights != null ? copyrights.value : this.copyrights),
        description:
            (description != null ? description.value : this.description),
        htmlDescription: (htmlDescription != null
            ? htmlDescription.value
            : this.htmlDescription),
        edition: (edition != null ? edition.value : this.edition),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        languages: (languages != null ? languages.value : this.languages),
        mediaType: (mediaType != null ? mediaType.value : this.mediaType),
        name: (name != null ? name.value : this.name),
        narrators: (narrators != null ? narrators.value : this.narrators),
        publisher: (publisher != null ? publisher.value : this.publisher),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        totalChapters:
            (totalChapters != null ? totalChapters.value : this.totalChapters));
  }
}

@JsonSerializable(explicitToJson: true)
class AudiobookObject {
  AudiobookObject({
    required this.chapters,
    required this.authors,
    required this.availableMarkets,
    required this.copyrights,
    required this.description,
    required this.htmlDescription,
    this.edition,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.languages,
    required this.mediaType,
    required this.name,
    required this.narrators,
    required this.publisher,
    required this.type,
    required this.uri,
    required this.totalChapters,
  });

  factory AudiobookObject.fromJson(Map<String, dynamic> json) =>
      _$AudiobookObjectFromJson(json);

  static const toJsonFactory = _$AudiobookObjectToJson;
  Map<String, dynamic> toJson() => _$AudiobookObjectToJson(this);

  @JsonKey(name: 'chapters')
  final Object chapters;
  @JsonKey(name: 'authors', defaultValue: <AuthorObject>[])
  final List<AuthorObject> authors;
  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String> availableMarkets;
  @JsonKey(name: 'copyrights', defaultValue: <CopyrightObject>[])
  final List<CopyrightObject> copyrights;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'html_description')
  final String htmlDescription;
  @JsonKey(name: 'edition')
  final String? edition;
  @JsonKey(name: 'explicit')
  final bool explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'languages', defaultValue: <String>[])
  final List<String> languages;
  @JsonKey(name: 'media_type')
  final String mediaType;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'narrators', defaultValue: <NarratorObject>[])
  final List<NarratorObject> narrators;
  @JsonKey(name: 'publisher')
  final String publisher;
  @JsonKey(
    name: 'type',
    toJson: audiobookObjectTypeToJson,
    fromJson: audiobookObjectTypeFromJson,
  )
  final enums.AudiobookObjectType type;
  @JsonKey(name: 'uri')
  final String uri;
  @JsonKey(name: 'total_chapters')
  final int totalChapters;
  static const fromJsonFactory = _$AudiobookObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AudiobookObject &&
            (identical(other.chapters, chapters) ||
                const DeepCollectionEquality()
                    .equals(other.chapters, chapters)) &&
            (identical(other.authors, authors) ||
                const DeepCollectionEquality()
                    .equals(other.authors, authors)) &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.htmlDescription, htmlDescription) ||
                const DeepCollectionEquality()
                    .equals(other.htmlDescription, htmlDescription)) &&
            (identical(other.edition, edition) ||
                const DeepCollectionEquality()
                    .equals(other.edition, edition)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.narrators, narrators) ||
                const DeepCollectionEquality()
                    .equals(other.narrators, narrators)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.totalChapters, totalChapters) ||
                const DeepCollectionEquality()
                    .equals(other.totalChapters, totalChapters)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chapters) ^
      const DeepCollectionEquality().hash(authors) ^
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(htmlDescription) ^
      const DeepCollectionEquality().hash(edition) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(narrators) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(totalChapters) ^
      runtimeType.hashCode;
}

extension $AudiobookObjectExtension on AudiobookObject {
  AudiobookObject copyWith(
      {Object? chapters,
      List<AuthorObject>? authors,
      List<String>? availableMarkets,
      List<CopyrightObject>? copyrights,
      String? description,
      String? htmlDescription,
      String? edition,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      List<String>? languages,
      String? mediaType,
      String? name,
      List<NarratorObject>? narrators,
      String? publisher,
      enums.AudiobookObjectType? type,
      String? uri,
      int? totalChapters}) {
    return AudiobookObject(
        chapters: chapters ?? this.chapters,
        authors: authors ?? this.authors,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        copyrights: copyrights ?? this.copyrights,
        description: description ?? this.description,
        htmlDescription: htmlDescription ?? this.htmlDescription,
        edition: edition ?? this.edition,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        languages: languages ?? this.languages,
        mediaType: mediaType ?? this.mediaType,
        name: name ?? this.name,
        narrators: narrators ?? this.narrators,
        publisher: publisher ?? this.publisher,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        totalChapters: totalChapters ?? this.totalChapters);
  }

  AudiobookObject copyWithWrapped(
      {Wrapped<Object>? chapters,
      Wrapped<List<AuthorObject>>? authors,
      Wrapped<List<String>>? availableMarkets,
      Wrapped<List<CopyrightObject>>? copyrights,
      Wrapped<String>? description,
      Wrapped<String>? htmlDescription,
      Wrapped<String?>? edition,
      Wrapped<bool>? explicit,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<List<String>>? languages,
      Wrapped<String>? mediaType,
      Wrapped<String>? name,
      Wrapped<List<NarratorObject>>? narrators,
      Wrapped<String>? publisher,
      Wrapped<enums.AudiobookObjectType>? type,
      Wrapped<String>? uri,
      Wrapped<int>? totalChapters}) {
    return AudiobookObject(
        chapters: (chapters != null ? chapters.value : this.chapters),
        authors: (authors != null ? authors.value : this.authors),
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        copyrights: (copyrights != null ? copyrights.value : this.copyrights),
        description:
            (description != null ? description.value : this.description),
        htmlDescription: (htmlDescription != null
            ? htmlDescription.value
            : this.htmlDescription),
        edition: (edition != null ? edition.value : this.edition),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        languages: (languages != null ? languages.value : this.languages),
        mediaType: (mediaType != null ? mediaType.value : this.mediaType),
        name: (name != null ? name.value : this.name),
        narrators: (narrators != null ? narrators.value : this.narrators),
        publisher: (publisher != null ? publisher.value : this.publisher),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        totalChapters:
            (totalChapters != null ? totalChapters.value : this.totalChapters));
  }
}

@JsonSerializable(explicitToJson: true)
class SimplifiedAudiobookObject {
  SimplifiedAudiobookObject({
    required this.authors,
    required this.availableMarkets,
    required this.copyrights,
    required this.description,
    required this.htmlDescription,
    this.edition,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.languages,
    required this.mediaType,
    required this.name,
    required this.narrators,
    required this.publisher,
    required this.type,
    required this.uri,
    required this.totalChapters,
  });

  factory SimplifiedAudiobookObject.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedAudiobookObjectFromJson(json);

  static const toJsonFactory = _$SimplifiedAudiobookObjectToJson;
  Map<String, dynamic> toJson() => _$SimplifiedAudiobookObjectToJson(this);

  @JsonKey(name: 'authors', defaultValue: <AuthorObject>[])
  final List<AuthorObject> authors;
  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String> availableMarkets;
  @JsonKey(name: 'copyrights', defaultValue: <CopyrightObject>[])
  final List<CopyrightObject> copyrights;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'html_description')
  final String htmlDescription;
  @JsonKey(name: 'edition')
  final String? edition;
  @JsonKey(name: 'explicit')
  final bool explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'languages', defaultValue: <String>[])
  final List<String> languages;
  @JsonKey(name: 'media_type')
  final String mediaType;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'narrators', defaultValue: <NarratorObject>[])
  final List<NarratorObject> narrators;
  @JsonKey(name: 'publisher')
  final String publisher;
  @JsonKey(
    name: 'type',
    toJson: simplifiedAudiobookObjectTypeToJson,
    fromJson: simplifiedAudiobookObjectTypeFromJson,
  )
  final enums.SimplifiedAudiobookObjectType type;
  @JsonKey(name: 'uri')
  final String uri;
  @JsonKey(name: 'total_chapters')
  final int totalChapters;
  static const fromJsonFactory = _$SimplifiedAudiobookObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SimplifiedAudiobookObject &&
            (identical(other.authors, authors) ||
                const DeepCollectionEquality()
                    .equals(other.authors, authors)) &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.htmlDescription, htmlDescription) ||
                const DeepCollectionEquality()
                    .equals(other.htmlDescription, htmlDescription)) &&
            (identical(other.edition, edition) ||
                const DeepCollectionEquality()
                    .equals(other.edition, edition)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.narrators, narrators) ||
                const DeepCollectionEquality()
                    .equals(other.narrators, narrators)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.totalChapters, totalChapters) ||
                const DeepCollectionEquality()
                    .equals(other.totalChapters, totalChapters)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(authors) ^
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(htmlDescription) ^
      const DeepCollectionEquality().hash(edition) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(narrators) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(totalChapters) ^
      runtimeType.hashCode;
}

extension $SimplifiedAudiobookObjectExtension on SimplifiedAudiobookObject {
  SimplifiedAudiobookObject copyWith(
      {List<AuthorObject>? authors,
      List<String>? availableMarkets,
      List<CopyrightObject>? copyrights,
      String? description,
      String? htmlDescription,
      String? edition,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      List<String>? languages,
      String? mediaType,
      String? name,
      List<NarratorObject>? narrators,
      String? publisher,
      enums.SimplifiedAudiobookObjectType? type,
      String? uri,
      int? totalChapters}) {
    return SimplifiedAudiobookObject(
        authors: authors ?? this.authors,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        copyrights: copyrights ?? this.copyrights,
        description: description ?? this.description,
        htmlDescription: htmlDescription ?? this.htmlDescription,
        edition: edition ?? this.edition,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        languages: languages ?? this.languages,
        mediaType: mediaType ?? this.mediaType,
        name: name ?? this.name,
        narrators: narrators ?? this.narrators,
        publisher: publisher ?? this.publisher,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        totalChapters: totalChapters ?? this.totalChapters);
  }

  SimplifiedAudiobookObject copyWithWrapped(
      {Wrapped<List<AuthorObject>>? authors,
      Wrapped<List<String>>? availableMarkets,
      Wrapped<List<CopyrightObject>>? copyrights,
      Wrapped<String>? description,
      Wrapped<String>? htmlDescription,
      Wrapped<String?>? edition,
      Wrapped<bool>? explicit,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<List<String>>? languages,
      Wrapped<String>? mediaType,
      Wrapped<String>? name,
      Wrapped<List<NarratorObject>>? narrators,
      Wrapped<String>? publisher,
      Wrapped<enums.SimplifiedAudiobookObjectType>? type,
      Wrapped<String>? uri,
      Wrapped<int>? totalChapters}) {
    return SimplifiedAudiobookObject(
        authors: (authors != null ? authors.value : this.authors),
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        copyrights: (copyrights != null ? copyrights.value : this.copyrights),
        description:
            (description != null ? description.value : this.description),
        htmlDescription: (htmlDescription != null
            ? htmlDescription.value
            : this.htmlDescription),
        edition: (edition != null ? edition.value : this.edition),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        languages: (languages != null ? languages.value : this.languages),
        mediaType: (mediaType != null ? mediaType.value : this.mediaType),
        name: (name != null ? name.value : this.name),
        narrators: (narrators != null ? narrators.value : this.narrators),
        publisher: (publisher != null ? publisher.value : this.publisher),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        totalChapters:
            (totalChapters != null ? totalChapters.value : this.totalChapters));
  }
}

@JsonSerializable(explicitToJson: true)
class AlbumBase {
  AlbumBase({
    required this.albumType,
    required this.totalTracks,
    required this.availableMarkets,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    this.restrictions,
    required this.type,
    required this.uri,
  });

  factory AlbumBase.fromJson(Map<String, dynamic> json) =>
      _$AlbumBaseFromJson(json);

  static const toJsonFactory = _$AlbumBaseToJson;
  Map<String, dynamic> toJson() => _$AlbumBaseToJson(this);

  @JsonKey(
    name: 'album_type',
    toJson: albumBaseAlbumTypeToJson,
    fromJson: albumBaseAlbumTypeFromJson,
  )
  final enums.AlbumBaseAlbumType albumType;
  @JsonKey(name: 'total_tracks')
  final int totalTracks;
  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String> availableMarkets;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(
    name: 'release_date_precision',
    toJson: albumBaseReleaseDatePrecisionToJson,
    fromJson: albumBaseReleaseDatePrecisionFromJson,
  )
  final enums.AlbumBaseReleaseDatePrecision releaseDatePrecision;
  @JsonKey(name: 'restrictions')
  final AlbumRestrictionObject? restrictions;
  @JsonKey(
    name: 'type',
    toJson: albumBaseTypeToJson,
    fromJson: albumBaseTypeFromJson,
  )
  final enums.AlbumBaseType type;
  @JsonKey(name: 'uri')
  final String uri;
  static const fromJsonFactory = _$AlbumBaseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AlbumBase &&
            (identical(other.albumType, albumType) ||
                const DeepCollectionEquality()
                    .equals(other.albumType, albumType)) &&
            (identical(other.totalTracks, totalTracks) ||
                const DeepCollectionEquality()
                    .equals(other.totalTracks, totalTracks)) &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                const DeepCollectionEquality().equals(
                    other.releaseDatePrecision, releaseDatePrecision)) &&
            (identical(other.restrictions, restrictions) ||
                const DeepCollectionEquality()
                    .equals(other.restrictions, restrictions)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(albumType) ^
      const DeepCollectionEquality().hash(totalTracks) ^
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(releaseDatePrecision) ^
      const DeepCollectionEquality().hash(restrictions) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $AlbumBaseExtension on AlbumBase {
  AlbumBase copyWith(
      {enums.AlbumBaseAlbumType? albumType,
      int? totalTracks,
      List<String>? availableMarkets,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      String? name,
      String? releaseDate,
      enums.AlbumBaseReleaseDatePrecision? releaseDatePrecision,
      AlbumRestrictionObject? restrictions,
      enums.AlbumBaseType? type,
      String? uri}) {
    return AlbumBase(
        albumType: albumType ?? this.albumType,
        totalTracks: totalTracks ?? this.totalTracks,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        name: name ?? this.name,
        releaseDate: releaseDate ?? this.releaseDate,
        releaseDatePrecision: releaseDatePrecision ?? this.releaseDatePrecision,
        restrictions: restrictions ?? this.restrictions,
        type: type ?? this.type,
        uri: uri ?? this.uri);
  }

  AlbumBase copyWithWrapped(
      {Wrapped<enums.AlbumBaseAlbumType>? albumType,
      Wrapped<int>? totalTracks,
      Wrapped<List<String>>? availableMarkets,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<String>? name,
      Wrapped<String>? releaseDate,
      Wrapped<enums.AlbumBaseReleaseDatePrecision>? releaseDatePrecision,
      Wrapped<AlbumRestrictionObject?>? restrictions,
      Wrapped<enums.AlbumBaseType>? type,
      Wrapped<String>? uri}) {
    return AlbumBase(
        albumType: (albumType != null ? albumType.value : this.albumType),
        totalTracks:
            (totalTracks != null ? totalTracks.value : this.totalTracks),
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        name: (name != null ? name.value : this.name),
        releaseDate:
            (releaseDate != null ? releaseDate.value : this.releaseDate),
        releaseDatePrecision: (releaseDatePrecision != null
            ? releaseDatePrecision.value
            : this.releaseDatePrecision),
        restrictions:
            (restrictions != null ? restrictions.value : this.restrictions),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class SimplifiedAlbumObject {
  SimplifiedAlbumObject({
    this.albumGroup,
    required this.artists,
    required this.albumType,
    required this.totalTracks,
    required this.availableMarkets,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    this.restrictions,
    required this.type,
    required this.uri,
  });

  factory SimplifiedAlbumObject.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedAlbumObjectFromJson(json);

  static const toJsonFactory = _$SimplifiedAlbumObjectToJson;
  Map<String, dynamic> toJson() => _$SimplifiedAlbumObjectToJson(this);

  @JsonKey(
    name: 'album_group',
    toJson: simplifiedAlbumObjectAlbumGroupToJson,
    fromJson: simplifiedAlbumObjectAlbumGroupFromJson,
  )
  final enums.SimplifiedAlbumObjectAlbumGroup? albumGroup;
  @JsonKey(name: 'artists', defaultValue: <SimplifiedArtistObject>[])
  final List<SimplifiedArtistObject> artists;
  @JsonKey(
    name: 'album_type',
    toJson: simplifiedAlbumObjectAlbumTypeToJson,
    fromJson: simplifiedAlbumObjectAlbumTypeFromJson,
  )
  final enums.SimplifiedAlbumObjectAlbumType albumType;
  @JsonKey(name: 'total_tracks')
  final int totalTracks;
  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String> availableMarkets;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(
    name: 'release_date_precision',
    toJson: simplifiedAlbumObjectReleaseDatePrecisionToJson,
    fromJson: simplifiedAlbumObjectReleaseDatePrecisionFromJson,
  )
  final enums.SimplifiedAlbumObjectReleaseDatePrecision releaseDatePrecision;
  @JsonKey(name: 'restrictions')
  final AlbumRestrictionObject? restrictions;
  @JsonKey(
    name: 'type',
    toJson: simplifiedAlbumObjectTypeToJson,
    fromJson: simplifiedAlbumObjectTypeFromJson,
  )
  final enums.SimplifiedAlbumObjectType type;
  @JsonKey(name: 'uri')
  final String uri;
  static const fromJsonFactory = _$SimplifiedAlbumObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SimplifiedAlbumObject &&
            (identical(other.albumGroup, albumGroup) ||
                const DeepCollectionEquality()
                    .equals(other.albumGroup, albumGroup)) &&
            (identical(other.artists, artists) ||
                const DeepCollectionEquality()
                    .equals(other.artists, artists)) &&
            (identical(other.albumType, albumType) ||
                const DeepCollectionEquality()
                    .equals(other.albumType, albumType)) &&
            (identical(other.totalTracks, totalTracks) ||
                const DeepCollectionEquality()
                    .equals(other.totalTracks, totalTracks)) &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                const DeepCollectionEquality().equals(
                    other.releaseDatePrecision, releaseDatePrecision)) &&
            (identical(other.restrictions, restrictions) ||
                const DeepCollectionEquality()
                    .equals(other.restrictions, restrictions)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(albumGroup) ^
      const DeepCollectionEquality().hash(artists) ^
      const DeepCollectionEquality().hash(albumType) ^
      const DeepCollectionEquality().hash(totalTracks) ^
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(releaseDatePrecision) ^
      const DeepCollectionEquality().hash(restrictions) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $SimplifiedAlbumObjectExtension on SimplifiedAlbumObject {
  SimplifiedAlbumObject copyWith(
      {enums.SimplifiedAlbumObjectAlbumGroup? albumGroup,
      List<SimplifiedArtistObject>? artists,
      enums.SimplifiedAlbumObjectAlbumType? albumType,
      int? totalTracks,
      List<String>? availableMarkets,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      String? name,
      String? releaseDate,
      enums.SimplifiedAlbumObjectReleaseDatePrecision? releaseDatePrecision,
      AlbumRestrictionObject? restrictions,
      enums.SimplifiedAlbumObjectType? type,
      String? uri}) {
    return SimplifiedAlbumObject(
        albumGroup: albumGroup ?? this.albumGroup,
        artists: artists ?? this.artists,
        albumType: albumType ?? this.albumType,
        totalTracks: totalTracks ?? this.totalTracks,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        name: name ?? this.name,
        releaseDate: releaseDate ?? this.releaseDate,
        releaseDatePrecision: releaseDatePrecision ?? this.releaseDatePrecision,
        restrictions: restrictions ?? this.restrictions,
        type: type ?? this.type,
        uri: uri ?? this.uri);
  }

  SimplifiedAlbumObject copyWithWrapped(
      {Wrapped<enums.SimplifiedAlbumObjectAlbumGroup?>? albumGroup,
      Wrapped<List<SimplifiedArtistObject>>? artists,
      Wrapped<enums.SimplifiedAlbumObjectAlbumType>? albumType,
      Wrapped<int>? totalTracks,
      Wrapped<List<String>>? availableMarkets,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<String>? name,
      Wrapped<String>? releaseDate,
      Wrapped<enums.SimplifiedAlbumObjectReleaseDatePrecision>?
          releaseDatePrecision,
      Wrapped<AlbumRestrictionObject?>? restrictions,
      Wrapped<enums.SimplifiedAlbumObjectType>? type,
      Wrapped<String>? uri}) {
    return SimplifiedAlbumObject(
        albumGroup: (albumGroup != null ? albumGroup.value : this.albumGroup),
        artists: (artists != null ? artists.value : this.artists),
        albumType: (albumType != null ? albumType.value : this.albumType),
        totalTracks:
            (totalTracks != null ? totalTracks.value : this.totalTracks),
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        name: (name != null ? name.value : this.name),
        releaseDate:
            (releaseDate != null ? releaseDate.value : this.releaseDate),
        releaseDatePrecision: (releaseDatePrecision != null
            ? releaseDatePrecision.value
            : this.releaseDatePrecision),
        restrictions:
            (restrictions != null ? restrictions.value : this.restrictions),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class ChapterObject {
  ChapterObject({
    required this.audiobook,
    required this.audioPreviewUrl,
    this.availableMarkets,
    required this.chapterNumber,
    required this.description,
    required this.htmlDescription,
    required this.durationMs,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.isPlayable,
    required this.languages,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    required this.resumePoint,
    required this.type,
    required this.uri,
    this.restrictions,
  });

  factory ChapterObject.fromJson(Map<String, dynamic> json) =>
      _$ChapterObjectFromJson(json);

  static const toJsonFactory = _$ChapterObjectToJson;
  Map<String, dynamic> toJson() => _$ChapterObjectToJson(this);

  @JsonKey(name: 'audiobook')
  final SimplifiedAudiobookObject audiobook;
  @JsonKey(name: 'audio_preview_url')
  final String audioPreviewUrl;
  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String>? availableMarkets;
  @JsonKey(name: 'chapter_number')
  final int chapterNumber;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'html_description')
  final String htmlDescription;
  @JsonKey(name: 'duration_ms')
  final int durationMs;
  @JsonKey(name: 'explicit')
  final bool explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'is_playable')
  final bool isPlayable;
  @JsonKey(name: 'languages', defaultValue: <String>[])
  final List<String> languages;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(
    name: 'release_date_precision',
    toJson: chapterObjectReleaseDatePrecisionToJson,
    fromJson: chapterObjectReleaseDatePrecisionFromJson,
  )
  final enums.ChapterObjectReleaseDatePrecision releaseDatePrecision;
  @JsonKey(name: 'resume_point')
  final ResumePointObject resumePoint;
  @JsonKey(
    name: 'type',
    toJson: chapterObjectTypeToJson,
    fromJson: chapterObjectTypeFromJson,
  )
  final enums.ChapterObjectType type;
  @JsonKey(name: 'uri')
  final String uri;
  @JsonKey(name: 'restrictions')
  final ChapterRestrictionObject? restrictions;
  static const fromJsonFactory = _$ChapterObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterObject &&
            (identical(other.audiobook, audiobook) ||
                const DeepCollectionEquality()
                    .equals(other.audiobook, audiobook)) &&
            (identical(other.audioPreviewUrl, audioPreviewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.audioPreviewUrl, audioPreviewUrl)) &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.chapterNumber, chapterNumber) ||
                const DeepCollectionEquality()
                    .equals(other.chapterNumber, chapterNumber)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.htmlDescription, htmlDescription) ||
                const DeepCollectionEquality()
                    .equals(other.htmlDescription, htmlDescription)) &&
            (identical(other.durationMs, durationMs) ||
                const DeepCollectionEquality()
                    .equals(other.durationMs, durationMs)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.isPlayable, isPlayable) ||
                const DeepCollectionEquality()
                    .equals(other.isPlayable, isPlayable)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                const DeepCollectionEquality().equals(
                    other.releaseDatePrecision, releaseDatePrecision)) &&
            (identical(other.resumePoint, resumePoint) ||
                const DeepCollectionEquality()
                    .equals(other.resumePoint, resumePoint)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.restrictions, restrictions) ||
                const DeepCollectionEquality()
                    .equals(other.restrictions, restrictions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(audiobook) ^
      const DeepCollectionEquality().hash(audioPreviewUrl) ^
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(chapterNumber) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(htmlDescription) ^
      const DeepCollectionEquality().hash(durationMs) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(isPlayable) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(releaseDatePrecision) ^
      const DeepCollectionEquality().hash(resumePoint) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(restrictions) ^
      runtimeType.hashCode;
}

extension $ChapterObjectExtension on ChapterObject {
  ChapterObject copyWith(
      {SimplifiedAudiobookObject? audiobook,
      String? audioPreviewUrl,
      List<String>? availableMarkets,
      int? chapterNumber,
      String? description,
      String? htmlDescription,
      int? durationMs,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      bool? isPlayable,
      List<String>? languages,
      String? name,
      String? releaseDate,
      enums.ChapterObjectReleaseDatePrecision? releaseDatePrecision,
      ResumePointObject? resumePoint,
      enums.ChapterObjectType? type,
      String? uri,
      ChapterRestrictionObject? restrictions}) {
    return ChapterObject(
        audiobook: audiobook ?? this.audiobook,
        audioPreviewUrl: audioPreviewUrl ?? this.audioPreviewUrl,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        description: description ?? this.description,
        htmlDescription: htmlDescription ?? this.htmlDescription,
        durationMs: durationMs ?? this.durationMs,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        isPlayable: isPlayable ?? this.isPlayable,
        languages: languages ?? this.languages,
        name: name ?? this.name,
        releaseDate: releaseDate ?? this.releaseDate,
        releaseDatePrecision: releaseDatePrecision ?? this.releaseDatePrecision,
        resumePoint: resumePoint ?? this.resumePoint,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        restrictions: restrictions ?? this.restrictions);
  }

  ChapterObject copyWithWrapped(
      {Wrapped<SimplifiedAudiobookObject>? audiobook,
      Wrapped<String>? audioPreviewUrl,
      Wrapped<List<String>?>? availableMarkets,
      Wrapped<int>? chapterNumber,
      Wrapped<String>? description,
      Wrapped<String>? htmlDescription,
      Wrapped<int>? durationMs,
      Wrapped<bool>? explicit,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<bool>? isPlayable,
      Wrapped<List<String>>? languages,
      Wrapped<String>? name,
      Wrapped<String>? releaseDate,
      Wrapped<enums.ChapterObjectReleaseDatePrecision>? releaseDatePrecision,
      Wrapped<ResumePointObject>? resumePoint,
      Wrapped<enums.ChapterObjectType>? type,
      Wrapped<String>? uri,
      Wrapped<ChapterRestrictionObject?>? restrictions}) {
    return ChapterObject(
        audiobook: (audiobook != null ? audiobook.value : this.audiobook),
        audioPreviewUrl: (audioPreviewUrl != null
            ? audioPreviewUrl.value
            : this.audioPreviewUrl),
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        chapterNumber:
            (chapterNumber != null ? chapterNumber.value : this.chapterNumber),
        description:
            (description != null ? description.value : this.description),
        htmlDescription: (htmlDescription != null
            ? htmlDescription.value
            : this.htmlDescription),
        durationMs: (durationMs != null ? durationMs.value : this.durationMs),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        isPlayable: (isPlayable != null ? isPlayable.value : this.isPlayable),
        languages: (languages != null ? languages.value : this.languages),
        name: (name != null ? name.value : this.name),
        releaseDate:
            (releaseDate != null ? releaseDate.value : this.releaseDate),
        releaseDatePrecision: (releaseDatePrecision != null
            ? releaseDatePrecision.value
            : this.releaseDatePrecision),
        resumePoint:
            (resumePoint != null ? resumePoint.value : this.resumePoint),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        restrictions:
            (restrictions != null ? restrictions.value : this.restrictions));
  }
}

@JsonSerializable(explicitToJson: true)
class SimplifiedChapterObject {
  SimplifiedChapterObject({
    required this.audioPreviewUrl,
    this.availableMarkets,
    required this.chapterNumber,
    required this.description,
    required this.htmlDescription,
    required this.durationMs,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.isPlayable,
    required this.languages,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    required this.resumePoint,
    required this.type,
    required this.uri,
    this.restrictions,
  });

  factory SimplifiedChapterObject.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedChapterObjectFromJson(json);

  static const toJsonFactory = _$SimplifiedChapterObjectToJson;
  Map<String, dynamic> toJson() => _$SimplifiedChapterObjectToJson(this);

  @JsonKey(name: 'audio_preview_url')
  final String audioPreviewUrl;
  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String>? availableMarkets;
  @JsonKey(name: 'chapter_number')
  final int chapterNumber;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'html_description')
  final String htmlDescription;
  @JsonKey(name: 'duration_ms')
  final int durationMs;
  @JsonKey(name: 'explicit')
  final bool explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'is_playable')
  final bool isPlayable;
  @JsonKey(name: 'languages', defaultValue: <String>[])
  final List<String> languages;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(
    name: 'release_date_precision',
    toJson: simplifiedChapterObjectReleaseDatePrecisionToJson,
    fromJson: simplifiedChapterObjectReleaseDatePrecisionFromJson,
  )
  final enums.SimplifiedChapterObjectReleaseDatePrecision releaseDatePrecision;
  @JsonKey(name: 'resume_point')
  final ResumePointObject resumePoint;
  @JsonKey(
    name: 'type',
    toJson: simplifiedChapterObjectTypeToJson,
    fromJson: simplifiedChapterObjectTypeFromJson,
  )
  final enums.SimplifiedChapterObjectType type;
  @JsonKey(name: 'uri')
  final String uri;
  @JsonKey(name: 'restrictions')
  final ChapterRestrictionObject? restrictions;
  static const fromJsonFactory = _$SimplifiedChapterObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SimplifiedChapterObject &&
            (identical(other.audioPreviewUrl, audioPreviewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.audioPreviewUrl, audioPreviewUrl)) &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.chapterNumber, chapterNumber) ||
                const DeepCollectionEquality()
                    .equals(other.chapterNumber, chapterNumber)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.htmlDescription, htmlDescription) ||
                const DeepCollectionEquality()
                    .equals(other.htmlDescription, htmlDescription)) &&
            (identical(other.durationMs, durationMs) ||
                const DeepCollectionEquality()
                    .equals(other.durationMs, durationMs)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.isPlayable, isPlayable) ||
                const DeepCollectionEquality()
                    .equals(other.isPlayable, isPlayable)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                const DeepCollectionEquality().equals(
                    other.releaseDatePrecision, releaseDatePrecision)) &&
            (identical(other.resumePoint, resumePoint) ||
                const DeepCollectionEquality()
                    .equals(other.resumePoint, resumePoint)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.restrictions, restrictions) ||
                const DeepCollectionEquality()
                    .equals(other.restrictions, restrictions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(audioPreviewUrl) ^
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(chapterNumber) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(htmlDescription) ^
      const DeepCollectionEquality().hash(durationMs) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(isPlayable) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(releaseDatePrecision) ^
      const DeepCollectionEquality().hash(resumePoint) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(restrictions) ^
      runtimeType.hashCode;
}

extension $SimplifiedChapterObjectExtension on SimplifiedChapterObject {
  SimplifiedChapterObject copyWith(
      {String? audioPreviewUrl,
      List<String>? availableMarkets,
      int? chapterNumber,
      String? description,
      String? htmlDescription,
      int? durationMs,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      bool? isPlayable,
      List<String>? languages,
      String? name,
      String? releaseDate,
      enums.SimplifiedChapterObjectReleaseDatePrecision? releaseDatePrecision,
      ResumePointObject? resumePoint,
      enums.SimplifiedChapterObjectType? type,
      String? uri,
      ChapterRestrictionObject? restrictions}) {
    return SimplifiedChapterObject(
        audioPreviewUrl: audioPreviewUrl ?? this.audioPreviewUrl,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        description: description ?? this.description,
        htmlDescription: htmlDescription ?? this.htmlDescription,
        durationMs: durationMs ?? this.durationMs,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        isPlayable: isPlayable ?? this.isPlayable,
        languages: languages ?? this.languages,
        name: name ?? this.name,
        releaseDate: releaseDate ?? this.releaseDate,
        releaseDatePrecision: releaseDatePrecision ?? this.releaseDatePrecision,
        resumePoint: resumePoint ?? this.resumePoint,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        restrictions: restrictions ?? this.restrictions);
  }

  SimplifiedChapterObject copyWithWrapped(
      {Wrapped<String>? audioPreviewUrl,
      Wrapped<List<String>?>? availableMarkets,
      Wrapped<int>? chapterNumber,
      Wrapped<String>? description,
      Wrapped<String>? htmlDescription,
      Wrapped<int>? durationMs,
      Wrapped<bool>? explicit,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<bool>? isPlayable,
      Wrapped<List<String>>? languages,
      Wrapped<String>? name,
      Wrapped<String>? releaseDate,
      Wrapped<enums.SimplifiedChapterObjectReleaseDatePrecision>?
          releaseDatePrecision,
      Wrapped<ResumePointObject>? resumePoint,
      Wrapped<enums.SimplifiedChapterObjectType>? type,
      Wrapped<String>? uri,
      Wrapped<ChapterRestrictionObject?>? restrictions}) {
    return SimplifiedChapterObject(
        audioPreviewUrl: (audioPreviewUrl != null
            ? audioPreviewUrl.value
            : this.audioPreviewUrl),
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        chapterNumber:
            (chapterNumber != null ? chapterNumber.value : this.chapterNumber),
        description:
            (description != null ? description.value : this.description),
        htmlDescription: (htmlDescription != null
            ? htmlDescription.value
            : this.htmlDescription),
        durationMs: (durationMs != null ? durationMs.value : this.durationMs),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        isPlayable: (isPlayable != null ? isPlayable.value : this.isPlayable),
        languages: (languages != null ? languages.value : this.languages),
        name: (name != null ? name.value : this.name),
        releaseDate:
            (releaseDate != null ? releaseDate.value : this.releaseDate),
        releaseDatePrecision: (releaseDatePrecision != null
            ? releaseDatePrecision.value
            : this.releaseDatePrecision),
        resumePoint:
            (resumePoint != null ? resumePoint.value : this.resumePoint),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        restrictions:
            (restrictions != null ? restrictions.value : this.restrictions));
  }
}

@JsonSerializable(explicitToJson: true)
class ChapterBase {
  ChapterBase({
    required this.audioPreviewUrl,
    this.availableMarkets,
    required this.chapterNumber,
    required this.description,
    required this.htmlDescription,
    required this.durationMs,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.isPlayable,
    required this.languages,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    required this.resumePoint,
    required this.type,
    required this.uri,
    this.restrictions,
  });

  factory ChapterBase.fromJson(Map<String, dynamic> json) =>
      _$ChapterBaseFromJson(json);

  static const toJsonFactory = _$ChapterBaseToJson;
  Map<String, dynamic> toJson() => _$ChapterBaseToJson(this);

  @JsonKey(name: 'audio_preview_url')
  final String audioPreviewUrl;
  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String>? availableMarkets;
  @JsonKey(name: 'chapter_number')
  final int chapterNumber;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'html_description')
  final String htmlDescription;
  @JsonKey(name: 'duration_ms')
  final int durationMs;
  @JsonKey(name: 'explicit')
  final bool explicit;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'is_playable')
  final bool isPlayable;
  @JsonKey(name: 'languages', defaultValue: <String>[])
  final List<String> languages;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(
    name: 'release_date_precision',
    toJson: chapterBaseReleaseDatePrecisionToJson,
    fromJson: chapterBaseReleaseDatePrecisionFromJson,
  )
  final enums.ChapterBaseReleaseDatePrecision releaseDatePrecision;
  @JsonKey(name: 'resume_point')
  final ResumePointObject resumePoint;
  @JsonKey(
    name: 'type',
    toJson: chapterBaseTypeToJson,
    fromJson: chapterBaseTypeFromJson,
  )
  final enums.ChapterBaseType type;
  @JsonKey(name: 'uri')
  final String uri;
  @JsonKey(name: 'restrictions')
  final ChapterRestrictionObject? restrictions;
  static const fromJsonFactory = _$ChapterBaseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterBase &&
            (identical(other.audioPreviewUrl, audioPreviewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.audioPreviewUrl, audioPreviewUrl)) &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.chapterNumber, chapterNumber) ||
                const DeepCollectionEquality()
                    .equals(other.chapterNumber, chapterNumber)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.htmlDescription, htmlDescription) ||
                const DeepCollectionEquality()
                    .equals(other.htmlDescription, htmlDescription)) &&
            (identical(other.durationMs, durationMs) ||
                const DeepCollectionEquality()
                    .equals(other.durationMs, durationMs)) &&
            (identical(other.explicit, explicit) ||
                const DeepCollectionEquality()
                    .equals(other.explicit, explicit)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.isPlayable, isPlayable) ||
                const DeepCollectionEquality()
                    .equals(other.isPlayable, isPlayable)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                const DeepCollectionEquality().equals(
                    other.releaseDatePrecision, releaseDatePrecision)) &&
            (identical(other.resumePoint, resumePoint) ||
                const DeepCollectionEquality()
                    .equals(other.resumePoint, resumePoint)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.restrictions, restrictions) ||
                const DeepCollectionEquality()
                    .equals(other.restrictions, restrictions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(audioPreviewUrl) ^
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(chapterNumber) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(htmlDescription) ^
      const DeepCollectionEquality().hash(durationMs) ^
      const DeepCollectionEquality().hash(explicit) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(isPlayable) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(releaseDatePrecision) ^
      const DeepCollectionEquality().hash(resumePoint) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(restrictions) ^
      runtimeType.hashCode;
}

extension $ChapterBaseExtension on ChapterBase {
  ChapterBase copyWith(
      {String? audioPreviewUrl,
      List<String>? availableMarkets,
      int? chapterNumber,
      String? description,
      String? htmlDescription,
      int? durationMs,
      bool? explicit,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      bool? isPlayable,
      List<String>? languages,
      String? name,
      String? releaseDate,
      enums.ChapterBaseReleaseDatePrecision? releaseDatePrecision,
      ResumePointObject? resumePoint,
      enums.ChapterBaseType? type,
      String? uri,
      ChapterRestrictionObject? restrictions}) {
    return ChapterBase(
        audioPreviewUrl: audioPreviewUrl ?? this.audioPreviewUrl,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        description: description ?? this.description,
        htmlDescription: htmlDescription ?? this.htmlDescription,
        durationMs: durationMs ?? this.durationMs,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        isPlayable: isPlayable ?? this.isPlayable,
        languages: languages ?? this.languages,
        name: name ?? this.name,
        releaseDate: releaseDate ?? this.releaseDate,
        releaseDatePrecision: releaseDatePrecision ?? this.releaseDatePrecision,
        resumePoint: resumePoint ?? this.resumePoint,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        restrictions: restrictions ?? this.restrictions);
  }

  ChapterBase copyWithWrapped(
      {Wrapped<String>? audioPreviewUrl,
      Wrapped<List<String>?>? availableMarkets,
      Wrapped<int>? chapterNumber,
      Wrapped<String>? description,
      Wrapped<String>? htmlDescription,
      Wrapped<int>? durationMs,
      Wrapped<bool>? explicit,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<bool>? isPlayable,
      Wrapped<List<String>>? languages,
      Wrapped<String>? name,
      Wrapped<String>? releaseDate,
      Wrapped<enums.ChapterBaseReleaseDatePrecision>? releaseDatePrecision,
      Wrapped<ResumePointObject>? resumePoint,
      Wrapped<enums.ChapterBaseType>? type,
      Wrapped<String>? uri,
      Wrapped<ChapterRestrictionObject?>? restrictions}) {
    return ChapterBase(
        audioPreviewUrl: (audioPreviewUrl != null
            ? audioPreviewUrl.value
            : this.audioPreviewUrl),
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        chapterNumber:
            (chapterNumber != null ? chapterNumber.value : this.chapterNumber),
        description:
            (description != null ? description.value : this.description),
        htmlDescription: (htmlDescription != null
            ? htmlDescription.value
            : this.htmlDescription),
        durationMs: (durationMs != null ? durationMs.value : this.durationMs),
        explicit: (explicit != null ? explicit.value : this.explicit),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        isPlayable: (isPlayable != null ? isPlayable.value : this.isPlayable),
        languages: (languages != null ? languages.value : this.languages),
        name: (name != null ? name.value : this.name),
        releaseDate:
            (releaseDate != null ? releaseDate.value : this.releaseDate),
        releaseDatePrecision: (releaseDatePrecision != null
            ? releaseDatePrecision.value
            : this.releaseDatePrecision),
        resumePoint:
            (resumePoint != null ? resumePoint.value : this.resumePoint),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri),
        restrictions:
            (restrictions != null ? restrictions.value : this.restrictions));
  }
}

@JsonSerializable(explicitToJson: true)
class AlbumObject {
  AlbumObject({
    this.artists,
    this.tracks,
    this.popularity,
    this.label,
    this.externalIds,
    this.genres,
    this.copyrights,
    required this.albumType,
    required this.totalTracks,
    required this.availableMarkets,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    this.restrictions,
    required this.type,
    required this.uri,
  });

  factory AlbumObject.fromJson(Map<String, dynamic> json) =>
      _$AlbumObjectFromJson(json);

  static const toJsonFactory = _$AlbumObjectToJson;
  Map<String, dynamic> toJson() => _$AlbumObjectToJson(this);

  @JsonKey(name: 'artists', defaultValue: <SimplifiedArtistObject>[])
  final List<SimplifiedArtistObject>? artists;
  @JsonKey(name: 'tracks')
  final PagingSimplifiedTrackObject? tracks;
  @JsonKey(name: 'popularity')
  final int? popularity;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'external_ids')
  final ExternalIdObject? externalIds;
  @JsonKey(name: 'genres', defaultValue: <String>[])
  final List<String>? genres;
  @JsonKey(name: 'copyrights', defaultValue: <CopyrightObject>[])
  final List<CopyrightObject>? copyrights;
  @JsonKey(
    name: 'album_type',
    toJson: albumObjectAlbumTypeToJson,
    fromJson: albumObjectAlbumTypeFromJson,
  )
  final enums.AlbumObjectAlbumType albumType;
  @JsonKey(name: 'total_tracks')
  final int totalTracks;
  @JsonKey(name: 'available_markets', defaultValue: <String>[])
  final List<String> availableMarkets;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject externalUrls;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'images', defaultValue: <ImageObject>[])
  final List<ImageObject> images;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(
    name: 'release_date_precision',
    toJson: albumObjectReleaseDatePrecisionToJson,
    fromJson: albumObjectReleaseDatePrecisionFromJson,
  )
  final enums.AlbumObjectReleaseDatePrecision releaseDatePrecision;
  @JsonKey(name: 'restrictions')
  final AlbumRestrictionObject? restrictions;
  @JsonKey(
    name: 'type',
    toJson: albumObjectTypeToJson,
    fromJson: albumObjectTypeFromJson,
  )
  final enums.AlbumObjectType type;
  @JsonKey(name: 'uri')
  final String uri;
  static const fromJsonFactory = _$AlbumObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AlbumObject &&
            (identical(other.artists, artists) ||
                const DeepCollectionEquality()
                    .equals(other.artists, artists)) &&
            (identical(other.tracks, tracks) ||
                const DeepCollectionEquality().equals(other.tracks, tracks)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.externalIds, externalIds) ||
                const DeepCollectionEquality()
                    .equals(other.externalIds, externalIds)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
            (identical(other.albumType, albumType) ||
                const DeepCollectionEquality()
                    .equals(other.albumType, albumType)) &&
            (identical(other.totalTracks, totalTracks) ||
                const DeepCollectionEquality()
                    .equals(other.totalTracks, totalTracks)) &&
            (identical(other.availableMarkets, availableMarkets) ||
                const DeepCollectionEquality()
                    .equals(other.availableMarkets, availableMarkets)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                const DeepCollectionEquality().equals(
                    other.releaseDatePrecision, releaseDatePrecision)) &&
            (identical(other.restrictions, restrictions) ||
                const DeepCollectionEquality()
                    .equals(other.restrictions, restrictions)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(artists) ^
      const DeepCollectionEquality().hash(tracks) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(externalIds) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(albumType) ^
      const DeepCollectionEquality().hash(totalTracks) ^
      const DeepCollectionEquality().hash(availableMarkets) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(releaseDatePrecision) ^
      const DeepCollectionEquality().hash(restrictions) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $AlbumObjectExtension on AlbumObject {
  AlbumObject copyWith(
      {List<SimplifiedArtistObject>? artists,
      PagingSimplifiedTrackObject? tracks,
      int? popularity,
      String? label,
      ExternalIdObject? externalIds,
      List<String>? genres,
      List<CopyrightObject>? copyrights,
      enums.AlbumObjectAlbumType? albumType,
      int? totalTracks,
      List<String>? availableMarkets,
      ExternalUrlObject? externalUrls,
      String? href,
      String? id,
      List<ImageObject>? images,
      String? name,
      String? releaseDate,
      enums.AlbumObjectReleaseDatePrecision? releaseDatePrecision,
      AlbumRestrictionObject? restrictions,
      enums.AlbumObjectType? type,
      String? uri}) {
    return AlbumObject(
        artists: artists ?? this.artists,
        tracks: tracks ?? this.tracks,
        popularity: popularity ?? this.popularity,
        label: label ?? this.label,
        externalIds: externalIds ?? this.externalIds,
        genres: genres ?? this.genres,
        copyrights: copyrights ?? this.copyrights,
        albumType: albumType ?? this.albumType,
        totalTracks: totalTracks ?? this.totalTracks,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        name: name ?? this.name,
        releaseDate: releaseDate ?? this.releaseDate,
        releaseDatePrecision: releaseDatePrecision ?? this.releaseDatePrecision,
        restrictions: restrictions ?? this.restrictions,
        type: type ?? this.type,
        uri: uri ?? this.uri);
  }

  AlbumObject copyWithWrapped(
      {Wrapped<List<SimplifiedArtistObject>?>? artists,
      Wrapped<PagingSimplifiedTrackObject?>? tracks,
      Wrapped<int?>? popularity,
      Wrapped<String?>? label,
      Wrapped<ExternalIdObject?>? externalIds,
      Wrapped<List<String>?>? genres,
      Wrapped<List<CopyrightObject>?>? copyrights,
      Wrapped<enums.AlbumObjectAlbumType>? albumType,
      Wrapped<int>? totalTracks,
      Wrapped<List<String>>? availableMarkets,
      Wrapped<ExternalUrlObject>? externalUrls,
      Wrapped<String>? href,
      Wrapped<String>? id,
      Wrapped<List<ImageObject>>? images,
      Wrapped<String>? name,
      Wrapped<String>? releaseDate,
      Wrapped<enums.AlbumObjectReleaseDatePrecision>? releaseDatePrecision,
      Wrapped<AlbumRestrictionObject?>? restrictions,
      Wrapped<enums.AlbumObjectType>? type,
      Wrapped<String>? uri}) {
    return AlbumObject(
        artists: (artists != null ? artists.value : this.artists),
        tracks: (tracks != null ? tracks.value : this.tracks),
        popularity: (popularity != null ? popularity.value : this.popularity),
        label: (label != null ? label.value : this.label),
        externalIds:
            (externalIds != null ? externalIds.value : this.externalIds),
        genres: (genres != null ? genres.value : this.genres),
        copyrights: (copyrights != null ? copyrights.value : this.copyrights),
        albumType: (albumType != null ? albumType.value : this.albumType),
        totalTracks:
            (totalTracks != null ? totalTracks.value : this.totalTracks),
        availableMarkets: (availableMarkets != null
            ? availableMarkets.value
            : this.availableMarkets),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        href: (href != null ? href.value : this.href),
        id: (id != null ? id.value : this.id),
        images: (images != null ? images.value : this.images),
        name: (name != null ? name.value : this.name),
        releaseDate:
            (releaseDate != null ? releaseDate.value : this.releaseDate),
        releaseDatePrecision: (releaseDatePrecision != null
            ? releaseDatePrecision.value
            : this.releaseDatePrecision),
        restrictions:
            (restrictions != null ? restrictions.value : this.restrictions),
        type: (type != null ? type.value : this.type),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class ContextObject {
  ContextObject({
    this.type,
    this.href,
    this.externalUrls,
    this.uri,
  });

  factory ContextObject.fromJson(Map<String, dynamic> json) =>
      _$ContextObjectFromJson(json);

  static const toJsonFactory = _$ContextObjectToJson;
  Map<String, dynamic> toJson() => _$ContextObjectToJson(this);

  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'external_urls')
  final ExternalUrlObject? externalUrls;
  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory = _$ContextObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContextObject &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.externalUrls, externalUrls) ||
                const DeepCollectionEquality()
                    .equals(other.externalUrls, externalUrls)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(externalUrls) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $ContextObjectExtension on ContextObject {
  ContextObject copyWith(
      {String? type,
      String? href,
      ExternalUrlObject? externalUrls,
      String? uri}) {
    return ContextObject(
        type: type ?? this.type,
        href: href ?? this.href,
        externalUrls: externalUrls ?? this.externalUrls,
        uri: uri ?? this.uri);
  }

  ContextObject copyWithWrapped(
      {Wrapped<String?>? type,
      Wrapped<String?>? href,
      Wrapped<ExternalUrlObject?>? externalUrls,
      Wrapped<String?>? uri}) {
    return ContextObject(
        type: (type != null ? type.value : this.type),
        href: (href != null ? href.value : this.href),
        externalUrls:
            (externalUrls != null ? externalUrls.value : this.externalUrls),
        uri: (uri != null ? uri.value : this.uri));
  }
}

@JsonSerializable(explicitToJson: true)
class CopyrightObject {
  CopyrightObject({
    this.text,
    this.type,
  });

  factory CopyrightObject.fromJson(Map<String, dynamic> json) =>
      _$CopyrightObjectFromJson(json);

  static const toJsonFactory = _$CopyrightObjectToJson;
  Map<String, dynamic> toJson() => _$CopyrightObjectToJson(this);

  @JsonKey(name: 'text')
  final String? text;
  @JsonKey(name: 'type')
  final String? type;
  static const fromJsonFactory = _$CopyrightObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CopyrightObject &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CopyrightObjectExtension on CopyrightObject {
  CopyrightObject copyWith({String? text, String? type}) {
    return CopyrightObject(text: text ?? this.text, type: type ?? this.type);
  }

  CopyrightObject copyWithWrapped(
      {Wrapped<String?>? text, Wrapped<String?>? type}) {
    return CopyrightObject(
        text: (text != null ? text.value : this.text),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthorObject {
  AuthorObject({
    this.name,
  });

  factory AuthorObject.fromJson(Map<String, dynamic> json) =>
      _$AuthorObjectFromJson(json);

  static const toJsonFactory = _$AuthorObjectToJson;
  Map<String, dynamic> toJson() => _$AuthorObjectToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$AuthorObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthorObject &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $AuthorObjectExtension on AuthorObject {
  AuthorObject copyWith({String? name}) {
    return AuthorObject(name: name ?? this.name);
  }

  AuthorObject copyWithWrapped({Wrapped<String?>? name}) {
    return AuthorObject(name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class NarratorObject {
  NarratorObject({
    this.name,
  });

  factory NarratorObject.fromJson(Map<String, dynamic> json) =>
      _$NarratorObjectFromJson(json);

  static const toJsonFactory = _$NarratorObjectToJson;
  Map<String, dynamic> toJson() => _$NarratorObjectToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$NarratorObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NarratorObject &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $NarratorObjectExtension on NarratorObject {
  NarratorObject copyWith({String? name}) {
    return NarratorObject(name: name ?? this.name);
  }

  NarratorObject copyWithWrapped({Wrapped<String?>? name}) {
    return NarratorObject(name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ExternalIdObject {
  ExternalIdObject({
    this.isrc,
    this.ean,
    this.upc,
  });

  factory ExternalIdObject.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdObjectFromJson(json);

  static const toJsonFactory = _$ExternalIdObjectToJson;
  Map<String, dynamic> toJson() => _$ExternalIdObjectToJson(this);

  @JsonKey(name: 'isrc')
  final String? isrc;
  @JsonKey(name: 'ean')
  final String? ean;
  @JsonKey(name: 'upc')
  final String? upc;
  static const fromJsonFactory = _$ExternalIdObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExternalIdObject &&
            (identical(other.isrc, isrc) ||
                const DeepCollectionEquality().equals(other.isrc, isrc)) &&
            (identical(other.ean, ean) ||
                const DeepCollectionEquality().equals(other.ean, ean)) &&
            (identical(other.upc, upc) ||
                const DeepCollectionEquality().equals(other.upc, upc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isrc) ^
      const DeepCollectionEquality().hash(ean) ^
      const DeepCollectionEquality().hash(upc) ^
      runtimeType.hashCode;
}

extension $ExternalIdObjectExtension on ExternalIdObject {
  ExternalIdObject copyWith({String? isrc, String? ean, String? upc}) {
    return ExternalIdObject(
        isrc: isrc ?? this.isrc, ean: ean ?? this.ean, upc: upc ?? this.upc);
  }

  ExternalIdObject copyWithWrapped(
      {Wrapped<String?>? isrc, Wrapped<String?>? ean, Wrapped<String?>? upc}) {
    return ExternalIdObject(
        isrc: (isrc != null ? isrc.value : this.isrc),
        ean: (ean != null ? ean.value : this.ean),
        upc: (upc != null ? upc.value : this.upc));
  }
}

@JsonSerializable(explicitToJson: true)
class ExternalUrlObject {
  ExternalUrlObject({
    this.spotify,
  });

  factory ExternalUrlObject.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlObjectFromJson(json);

  static const toJsonFactory = _$ExternalUrlObjectToJson;
  Map<String, dynamic> toJson() => _$ExternalUrlObjectToJson(this);

  @JsonKey(name: 'spotify')
  final String? spotify;
  static const fromJsonFactory = _$ExternalUrlObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExternalUrlObject &&
            (identical(other.spotify, spotify) ||
                const DeepCollectionEquality().equals(other.spotify, spotify)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(spotify) ^ runtimeType.hashCode;
}

extension $ExternalUrlObjectExtension on ExternalUrlObject {
  ExternalUrlObject copyWith({String? spotify}) {
    return ExternalUrlObject(spotify: spotify ?? this.spotify);
  }

  ExternalUrlObject copyWithWrapped({Wrapped<String?>? spotify}) {
    return ExternalUrlObject(
        spotify: (spotify != null ? spotify.value : this.spotify));
  }
}

@JsonSerializable(explicitToJson: true)
class FollowersObject {
  FollowersObject({
    this.href,
    this.total,
  });

  factory FollowersObject.fromJson(Map<String, dynamic> json) =>
      _$FollowersObjectFromJson(json);

  static const toJsonFactory = _$FollowersObjectToJson;
  Map<String, dynamic> toJson() => _$FollowersObjectToJson(this);

  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$FollowersObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FollowersObject &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $FollowersObjectExtension on FollowersObject {
  FollowersObject copyWith({String? href, int? total}) {
    return FollowersObject(href: href ?? this.href, total: total ?? this.total);
  }

  FollowersObject copyWithWrapped(
      {Wrapped<String?>? href, Wrapped<int?>? total}) {
    return FollowersObject(
        href: (href != null ? href.value : this.href),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ImageObject {
  ImageObject({
    required this.url,
    required this.height,
    required this.width,
  });

  factory ImageObject.fromJson(Map<String, dynamic> json) =>
      _$ImageObjectFromJson(json);

  static const toJsonFactory = _$ImageObjectToJson;
  Map<String, dynamic> toJson() => _$ImageObjectToJson(this);

  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'width')
  final int? width;
  static const fromJsonFactory = _$ImageObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageObject &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width) ^
      runtimeType.hashCode;
}

extension $ImageObjectExtension on ImageObject {
  ImageObject copyWith({String? url, int? height, int? width}) {
    return ImageObject(
        url: url ?? this.url,
        height: height ?? this.height,
        width: width ?? this.width);
  }

  ImageObject copyWithWrapped(
      {Wrapped<String>? url, Wrapped<int?>? height, Wrapped<int?>? width}) {
    return ImageObject(
        url: (url != null ? url.value : this.url),
        height: (height != null ? height.value : this.height),
        width: (width != null ? width.value : this.width));
  }
}

@JsonSerializable(explicitToJson: true)
class ExplicitContentSettingsObject {
  ExplicitContentSettingsObject({
    this.filterEnabled,
    this.filterLocked,
  });

  factory ExplicitContentSettingsObject.fromJson(Map<String, dynamic> json) =>
      _$ExplicitContentSettingsObjectFromJson(json);

  static const toJsonFactory = _$ExplicitContentSettingsObjectToJson;
  Map<String, dynamic> toJson() => _$ExplicitContentSettingsObjectToJson(this);

  @JsonKey(name: 'filter_enabled')
  final bool? filterEnabled;
  @JsonKey(name: 'filter_locked')
  final bool? filterLocked;
  static const fromJsonFactory = _$ExplicitContentSettingsObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExplicitContentSettingsObject &&
            (identical(other.filterEnabled, filterEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.filterEnabled, filterEnabled)) &&
            (identical(other.filterLocked, filterLocked) ||
                const DeepCollectionEquality()
                    .equals(other.filterLocked, filterLocked)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(filterEnabled) ^
      const DeepCollectionEquality().hash(filterLocked) ^
      runtimeType.hashCode;
}

extension $ExplicitContentSettingsObjectExtension
    on ExplicitContentSettingsObject {
  ExplicitContentSettingsObject copyWith(
      {bool? filterEnabled, bool? filterLocked}) {
    return ExplicitContentSettingsObject(
        filterEnabled: filterEnabled ?? this.filterEnabled,
        filterLocked: filterLocked ?? this.filterLocked);
  }

  ExplicitContentSettingsObject copyWithWrapped(
      {Wrapped<bool?>? filterEnabled, Wrapped<bool?>? filterLocked}) {
    return ExplicitContentSettingsObject(
        filterEnabled:
            (filterEnabled != null ? filterEnabled.value : this.filterEnabled),
        filterLocked:
            (filterLocked != null ? filterLocked.value : this.filterLocked));
  }
}

@JsonSerializable(explicitToJson: true)
class SavedAudiobookObject {
  SavedAudiobookObject({
    this.addedAt,
    this.audiobook,
  });

  factory SavedAudiobookObject.fromJson(Map<String, dynamic> json) =>
      _$SavedAudiobookObjectFromJson(json);

  static const toJsonFactory = _$SavedAudiobookObjectToJson;
  Map<String, dynamic> toJson() => _$SavedAudiobookObjectToJson(this);

  @JsonKey(name: 'added_at')
  final DateTime? addedAt;
  @JsonKey(name: 'audiobook')
  final AudiobookObject? audiobook;
  static const fromJsonFactory = _$SavedAudiobookObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SavedAudiobookObject &&
            (identical(other.addedAt, addedAt) ||
                const DeepCollectionEquality()
                    .equals(other.addedAt, addedAt)) &&
            (identical(other.audiobook, audiobook) ||
                const DeepCollectionEquality()
                    .equals(other.audiobook, audiobook)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addedAt) ^
      const DeepCollectionEquality().hash(audiobook) ^
      runtimeType.hashCode;
}

extension $SavedAudiobookObjectExtension on SavedAudiobookObject {
  SavedAudiobookObject copyWith(
      {DateTime? addedAt, AudiobookObject? audiobook}) {
    return SavedAudiobookObject(
        addedAt: addedAt ?? this.addedAt,
        audiobook: audiobook ?? this.audiobook);
  }

  SavedAudiobookObject copyWithWrapped(
      {Wrapped<DateTime?>? addedAt, Wrapped<AudiobookObject?>? audiobook}) {
    return SavedAudiobookObject(
        addedAt: (addedAt != null ? addedAt.value : this.addedAt),
        audiobook: (audiobook != null ? audiobook.value : this.audiobook));
  }
}

@JsonSerializable(explicitToJson: true)
class PagingSavedAudiobookObject {
  PagingSavedAudiobookObject({
    required this.items,
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  factory PagingSavedAudiobookObject.fromJson(Map<String, dynamic> json) =>
      _$PagingSavedAudiobookObjectFromJson(json);

  static const toJsonFactory = _$PagingSavedAudiobookObjectToJson;
  Map<String, dynamic> toJson() => _$PagingSavedAudiobookObjectToJson(this);

  @JsonKey(name: 'items', defaultValue: <SavedAudiobookObject>[])
  final List<SavedAudiobookObject> items;
  @JsonKey(name: 'href')
  final String href;
  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'previous')
  final String? previous;
  @JsonKey(name: 'total')
  final int total;
  static const fromJsonFactory = _$PagingSavedAudiobookObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagingSavedAudiobookObject &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PagingSavedAudiobookObjectExtension on PagingSavedAudiobookObject {
  PagingSavedAudiobookObject copyWith(
      {List<SavedAudiobookObject>? items,
      String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total}) {
    return PagingSavedAudiobookObject(
        items: items ?? this.items,
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total);
  }

  PagingSavedAudiobookObject copyWithWrapped(
      {Wrapped<List<SavedAudiobookObject>>? items,
      Wrapped<String>? href,
      Wrapped<int>? limit,
      Wrapped<String?>? next,
      Wrapped<int>? offset,
      Wrapped<String?>? previous,
      Wrapped<int>? total}) {
    return PagingSavedAudiobookObject(
        items: (items != null ? items.value : this.items),
        href: (href != null ? href.value : this.href),
        limit: (limit != null ? limit.value : this.limit),
        next: (next != null ? next.value : this.next),
        offset: (offset != null ? offset.value : this.offset),
        previous: (previous != null ? previous.value : this.previous),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class AudioAnalysisObject$Meta {
  AudioAnalysisObject$Meta({
    this.analyzerVersion,
    this.platform,
    this.detailedStatus,
    this.statusCode,
    this.timestamp,
    this.analysisTime,
    this.inputProcess,
  });

  factory AudioAnalysisObject$Meta.fromJson(Map<String, dynamic> json) =>
      _$AudioAnalysisObject$MetaFromJson(json);

  static const toJsonFactory = _$AudioAnalysisObject$MetaToJson;
  Map<String, dynamic> toJson() => _$AudioAnalysisObject$MetaToJson(this);

  @JsonKey(name: 'analyzer_version')
  final String? analyzerVersion;
  @JsonKey(name: 'platform')
  final String? platform;
  @JsonKey(name: 'detailed_status')
  final String? detailedStatus;
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @JsonKey(name: 'timestamp')
  final int? timestamp;
  @JsonKey(name: 'analysis_time')
  final double? analysisTime;
  @JsonKey(name: 'input_process')
  final String? inputProcess;
  static const fromJsonFactory = _$AudioAnalysisObject$MetaFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AudioAnalysisObject$Meta &&
            (identical(other.analyzerVersion, analyzerVersion) ||
                const DeepCollectionEquality()
                    .equals(other.analyzerVersion, analyzerVersion)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.detailedStatus, detailedStatus) ||
                const DeepCollectionEquality()
                    .equals(other.detailedStatus, detailedStatus)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.analysisTime, analysisTime) ||
                const DeepCollectionEquality()
                    .equals(other.analysisTime, analysisTime)) &&
            (identical(other.inputProcess, inputProcess) ||
                const DeepCollectionEquality()
                    .equals(other.inputProcess, inputProcess)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(analyzerVersion) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(detailedStatus) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(analysisTime) ^
      const DeepCollectionEquality().hash(inputProcess) ^
      runtimeType.hashCode;
}

extension $AudioAnalysisObject$MetaExtension on AudioAnalysisObject$Meta {
  AudioAnalysisObject$Meta copyWith(
      {String? analyzerVersion,
      String? platform,
      String? detailedStatus,
      int? statusCode,
      int? timestamp,
      double? analysisTime,
      String? inputProcess}) {
    return AudioAnalysisObject$Meta(
        analyzerVersion: analyzerVersion ?? this.analyzerVersion,
        platform: platform ?? this.platform,
        detailedStatus: detailedStatus ?? this.detailedStatus,
        statusCode: statusCode ?? this.statusCode,
        timestamp: timestamp ?? this.timestamp,
        analysisTime: analysisTime ?? this.analysisTime,
        inputProcess: inputProcess ?? this.inputProcess);
  }

  AudioAnalysisObject$Meta copyWithWrapped(
      {Wrapped<String?>? analyzerVersion,
      Wrapped<String?>? platform,
      Wrapped<String?>? detailedStatus,
      Wrapped<int?>? statusCode,
      Wrapped<int?>? timestamp,
      Wrapped<double?>? analysisTime,
      Wrapped<String?>? inputProcess}) {
    return AudioAnalysisObject$Meta(
        analyzerVersion: (analyzerVersion != null
            ? analyzerVersion.value
            : this.analyzerVersion),
        platform: (platform != null ? platform.value : this.platform),
        detailedStatus: (detailedStatus != null
            ? detailedStatus.value
            : this.detailedStatus),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        timestamp: (timestamp != null ? timestamp.value : this.timestamp),
        analysisTime:
            (analysisTime != null ? analysisTime.value : this.analysisTime),
        inputProcess:
            (inputProcess != null ? inputProcess.value : this.inputProcess));
  }
}

@JsonSerializable(explicitToJson: true)
class AudioAnalysisObject$Track {
  AudioAnalysisObject$Track({
    this.numSamples,
    this.duration,
    this.sampleMd5,
    this.offsetSeconds,
    this.windowSeconds,
    this.analysisSampleRate,
    this.analysisChannels,
    this.endOfFadeIn,
    this.startOfFadeOut,
    this.loudness,
    this.tempo,
    this.tempoConfidence,
    this.timeSignature,
    this.timeSignatureConfidence,
    this.key,
    this.keyConfidence,
    this.mode,
    this.modeConfidence,
    this.codestring,
    this.codeVersion,
    this.echoprintstring,
    this.echoprintVersion,
    this.synchstring,
    this.synchVersion,
    this.rhythmstring,
    this.rhythmVersion,
  });

  factory AudioAnalysisObject$Track.fromJson(Map<String, dynamic> json) =>
      _$AudioAnalysisObject$TrackFromJson(json);

  static const toJsonFactory = _$AudioAnalysisObject$TrackToJson;
  Map<String, dynamic> toJson() => _$AudioAnalysisObject$TrackToJson(this);

  @JsonKey(name: 'num_samples')
  final int? numSamples;
  @JsonKey(name: 'duration')
  final double? duration;
  @JsonKey(name: 'sample_md5')
  final String? sampleMd5;
  @JsonKey(name: 'offset_seconds')
  final int? offsetSeconds;
  @JsonKey(name: 'window_seconds')
  final int? windowSeconds;
  @JsonKey(name: 'analysis_sample_rate')
  final int? analysisSampleRate;
  @JsonKey(name: 'analysis_channels')
  final int? analysisChannels;
  @JsonKey(name: 'end_of_fade_in')
  final double? endOfFadeIn;
  @JsonKey(name: 'start_of_fade_out')
  final double? startOfFadeOut;
  @JsonKey(name: 'loudness')
  final num? loudness;
  @JsonKey(name: 'tempo')
  final num? tempo;
  @JsonKey(name: 'tempo_confidence')
  final double? tempoConfidence;
  @JsonKey(name: 'time_signature')
  final int? timeSignature;
  @JsonKey(name: 'time_signature_confidence')
  final double? timeSignatureConfidence;
  @JsonKey(name: 'key')
  final int? key;
  @JsonKey(name: 'key_confidence')
  final double? keyConfidence;
  @JsonKey(name: 'mode')
  final int? mode;
  @JsonKey(name: 'mode_confidence')
  final double? modeConfidence;
  @JsonKey(name: 'codestring')
  final String? codestring;
  @JsonKey(name: 'code_version')
  final double? codeVersion;
  @JsonKey(name: 'echoprintstring')
  final String? echoprintstring;
  @JsonKey(name: 'echoprint_version')
  final double? echoprintVersion;
  @JsonKey(name: 'synchstring')
  final String? synchstring;
  @JsonKey(name: 'synch_version')
  final double? synchVersion;
  @JsonKey(name: 'rhythmstring')
  final String? rhythmstring;
  @JsonKey(name: 'rhythm_version')
  final double? rhythmVersion;
  static const fromJsonFactory = _$AudioAnalysisObject$TrackFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AudioAnalysisObject$Track &&
            (identical(other.numSamples, numSamples) ||
                const DeepCollectionEquality()
                    .equals(other.numSamples, numSamples)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.sampleMd5, sampleMd5) ||
                const DeepCollectionEquality()
                    .equals(other.sampleMd5, sampleMd5)) &&
            (identical(other.offsetSeconds, offsetSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.offsetSeconds, offsetSeconds)) &&
            (identical(other.windowSeconds, windowSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.windowSeconds, windowSeconds)) &&
            (identical(other.analysisSampleRate, analysisSampleRate) ||
                const DeepCollectionEquality()
                    .equals(other.analysisSampleRate, analysisSampleRate)) &&
            (identical(other.analysisChannels, analysisChannels) ||
                const DeepCollectionEquality()
                    .equals(other.analysisChannels, analysisChannels)) &&
            (identical(other.endOfFadeIn, endOfFadeIn) ||
                const DeepCollectionEquality()
                    .equals(other.endOfFadeIn, endOfFadeIn)) &&
            (identical(other.startOfFadeOut, startOfFadeOut) ||
                const DeepCollectionEquality()
                    .equals(other.startOfFadeOut, startOfFadeOut)) &&
            (identical(other.loudness, loudness) ||
                const DeepCollectionEquality()
                    .equals(other.loudness, loudness)) &&
            (identical(other.tempo, tempo) ||
                const DeepCollectionEquality().equals(other.tempo, tempo)) &&
            (identical(other.tempoConfidence, tempoConfidence) ||
                const DeepCollectionEquality()
                    .equals(other.tempoConfidence, tempoConfidence)) &&
            (identical(other.timeSignature, timeSignature) ||
                const DeepCollectionEquality()
                    .equals(other.timeSignature, timeSignature)) &&
            (identical(other.timeSignatureConfidence, timeSignatureConfidence) ||
                const DeepCollectionEquality().equals(
                    other.timeSignatureConfidence, timeSignatureConfidence)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.keyConfidence, keyConfidence) ||
                const DeepCollectionEquality()
                    .equals(other.keyConfidence, keyConfidence)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.modeConfidence, modeConfidence) ||
                const DeepCollectionEquality()
                    .equals(other.modeConfidence, modeConfidence)) &&
            (identical(other.codestring, codestring) ||
                const DeepCollectionEquality()
                    .equals(other.codestring, codestring)) &&
            (identical(other.codeVersion, codeVersion) ||
                const DeepCollectionEquality()
                    .equals(other.codeVersion, codeVersion)) &&
            (identical(other.echoprintstring, echoprintstring) ||
                const DeepCollectionEquality()
                    .equals(other.echoprintstring, echoprintstring)) &&
            (identical(other.echoprintVersion, echoprintVersion) ||
                const DeepCollectionEquality().equals(other.echoprintVersion, echoprintVersion)) &&
            (identical(other.synchstring, synchstring) || const DeepCollectionEquality().equals(other.synchstring, synchstring)) &&
            (identical(other.synchVersion, synchVersion) || const DeepCollectionEquality().equals(other.synchVersion, synchVersion)) &&
            (identical(other.rhythmstring, rhythmstring) || const DeepCollectionEquality().equals(other.rhythmstring, rhythmstring)) &&
            (identical(other.rhythmVersion, rhythmVersion) || const DeepCollectionEquality().equals(other.rhythmVersion, rhythmVersion)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(numSamples) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(sampleMd5) ^
      const DeepCollectionEquality().hash(offsetSeconds) ^
      const DeepCollectionEquality().hash(windowSeconds) ^
      const DeepCollectionEquality().hash(analysisSampleRate) ^
      const DeepCollectionEquality().hash(analysisChannels) ^
      const DeepCollectionEquality().hash(endOfFadeIn) ^
      const DeepCollectionEquality().hash(startOfFadeOut) ^
      const DeepCollectionEquality().hash(loudness) ^
      const DeepCollectionEquality().hash(tempo) ^
      const DeepCollectionEquality().hash(tempoConfidence) ^
      const DeepCollectionEquality().hash(timeSignature) ^
      const DeepCollectionEquality().hash(timeSignatureConfidence) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(keyConfidence) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(modeConfidence) ^
      const DeepCollectionEquality().hash(codestring) ^
      const DeepCollectionEquality().hash(codeVersion) ^
      const DeepCollectionEquality().hash(echoprintstring) ^
      const DeepCollectionEquality().hash(echoprintVersion) ^
      const DeepCollectionEquality().hash(synchstring) ^
      const DeepCollectionEquality().hash(synchVersion) ^
      const DeepCollectionEquality().hash(rhythmstring) ^
      const DeepCollectionEquality().hash(rhythmVersion) ^
      runtimeType.hashCode;
}

extension $AudioAnalysisObject$TrackExtension on AudioAnalysisObject$Track {
  AudioAnalysisObject$Track copyWith(
      {int? numSamples,
      double? duration,
      String? sampleMd5,
      int? offsetSeconds,
      int? windowSeconds,
      int? analysisSampleRate,
      int? analysisChannels,
      double? endOfFadeIn,
      double? startOfFadeOut,
      num? loudness,
      num? tempo,
      double? tempoConfidence,
      int? timeSignature,
      double? timeSignatureConfidence,
      int? key,
      double? keyConfidence,
      int? mode,
      double? modeConfidence,
      String? codestring,
      double? codeVersion,
      String? echoprintstring,
      double? echoprintVersion,
      String? synchstring,
      double? synchVersion,
      String? rhythmstring,
      double? rhythmVersion}) {
    return AudioAnalysisObject$Track(
        numSamples: numSamples ?? this.numSamples,
        duration: duration ?? this.duration,
        sampleMd5: sampleMd5 ?? this.sampleMd5,
        offsetSeconds: offsetSeconds ?? this.offsetSeconds,
        windowSeconds: windowSeconds ?? this.windowSeconds,
        analysisSampleRate: analysisSampleRate ?? this.analysisSampleRate,
        analysisChannels: analysisChannels ?? this.analysisChannels,
        endOfFadeIn: endOfFadeIn ?? this.endOfFadeIn,
        startOfFadeOut: startOfFadeOut ?? this.startOfFadeOut,
        loudness: loudness ?? this.loudness,
        tempo: tempo ?? this.tempo,
        tempoConfidence: tempoConfidence ?? this.tempoConfidence,
        timeSignature: timeSignature ?? this.timeSignature,
        timeSignatureConfidence:
            timeSignatureConfidence ?? this.timeSignatureConfidence,
        key: key ?? this.key,
        keyConfidence: keyConfidence ?? this.keyConfidence,
        mode: mode ?? this.mode,
        modeConfidence: modeConfidence ?? this.modeConfidence,
        codestring: codestring ?? this.codestring,
        codeVersion: codeVersion ?? this.codeVersion,
        echoprintstring: echoprintstring ?? this.echoprintstring,
        echoprintVersion: echoprintVersion ?? this.echoprintVersion,
        synchstring: synchstring ?? this.synchstring,
        synchVersion: synchVersion ?? this.synchVersion,
        rhythmstring: rhythmstring ?? this.rhythmstring,
        rhythmVersion: rhythmVersion ?? this.rhythmVersion);
  }

  AudioAnalysisObject$Track copyWithWrapped(
      {Wrapped<int?>? numSamples,
      Wrapped<double?>? duration,
      Wrapped<String?>? sampleMd5,
      Wrapped<int?>? offsetSeconds,
      Wrapped<int?>? windowSeconds,
      Wrapped<int?>? analysisSampleRate,
      Wrapped<int?>? analysisChannels,
      Wrapped<double?>? endOfFadeIn,
      Wrapped<double?>? startOfFadeOut,
      Wrapped<num?>? loudness,
      Wrapped<num?>? tempo,
      Wrapped<double?>? tempoConfidence,
      Wrapped<int?>? timeSignature,
      Wrapped<double?>? timeSignatureConfidence,
      Wrapped<int?>? key,
      Wrapped<double?>? keyConfidence,
      Wrapped<int?>? mode,
      Wrapped<double?>? modeConfidence,
      Wrapped<String?>? codestring,
      Wrapped<double?>? codeVersion,
      Wrapped<String?>? echoprintstring,
      Wrapped<double?>? echoprintVersion,
      Wrapped<String?>? synchstring,
      Wrapped<double?>? synchVersion,
      Wrapped<String?>? rhythmstring,
      Wrapped<double?>? rhythmVersion}) {
    return AudioAnalysisObject$Track(
        numSamples: (numSamples != null ? numSamples.value : this.numSamples),
        duration: (duration != null ? duration.value : this.duration),
        sampleMd5: (sampleMd5 != null ? sampleMd5.value : this.sampleMd5),
        offsetSeconds:
            (offsetSeconds != null ? offsetSeconds.value : this.offsetSeconds),
        windowSeconds:
            (windowSeconds != null ? windowSeconds.value : this.windowSeconds),
        analysisSampleRate: (analysisSampleRate != null
            ? analysisSampleRate.value
            : this.analysisSampleRate),
        analysisChannels: (analysisChannels != null
            ? analysisChannels.value
            : this.analysisChannels),
        endOfFadeIn:
            (endOfFadeIn != null ? endOfFadeIn.value : this.endOfFadeIn),
        startOfFadeOut: (startOfFadeOut != null
            ? startOfFadeOut.value
            : this.startOfFadeOut),
        loudness: (loudness != null ? loudness.value : this.loudness),
        tempo: (tempo != null ? tempo.value : this.tempo),
        tempoConfidence: (tempoConfidence != null
            ? tempoConfidence.value
            : this.tempoConfidence),
        timeSignature:
            (timeSignature != null ? timeSignature.value : this.timeSignature),
        timeSignatureConfidence: (timeSignatureConfidence != null
            ? timeSignatureConfidence.value
            : this.timeSignatureConfidence),
        key: (key != null ? key.value : this.key),
        keyConfidence:
            (keyConfidence != null ? keyConfidence.value : this.keyConfidence),
        mode: (mode != null ? mode.value : this.mode),
        modeConfidence: (modeConfidence != null
            ? modeConfidence.value
            : this.modeConfidence),
        codestring: (codestring != null ? codestring.value : this.codestring),
        codeVersion:
            (codeVersion != null ? codeVersion.value : this.codeVersion),
        echoprintstring: (echoprintstring != null
            ? echoprintstring.value
            : this.echoprintstring),
        echoprintVersion: (echoprintVersion != null
            ? echoprintVersion.value
            : this.echoprintVersion),
        synchstring:
            (synchstring != null ? synchstring.value : this.synchstring),
        synchVersion:
            (synchVersion != null ? synchVersion.value : this.synchVersion),
        rhythmstring:
            (rhythmstring != null ? rhythmstring.value : this.rhythmstring),
        rhythmVersion:
            (rhythmVersion != null ? rhythmVersion.value : this.rhythmVersion));
  }
}

String? albumRestrictionObjectReasonToJson(
    enums.AlbumRestrictionObjectReason? albumRestrictionObjectReason) {
  return albumRestrictionObjectReason?.value;
}

enums.AlbumRestrictionObjectReason albumRestrictionObjectReasonFromJson(
  Object? albumRestrictionObjectReason, [
  enums.AlbumRestrictionObjectReason? defaultValue,
]) {
  return enums.AlbumRestrictionObjectReason.values
          .firstWhereOrNull((e) => e.value == albumRestrictionObjectReason) ??
      defaultValue ??
      enums.AlbumRestrictionObjectReason.swaggerGeneratedUnknown;
}

List<String> albumRestrictionObjectReasonListToJson(
    List<enums.AlbumRestrictionObjectReason>? albumRestrictionObjectReason) {
  if (albumRestrictionObjectReason == null) {
    return [];
  }

  return albumRestrictionObjectReason.map((e) => e.value!).toList();
}

List<enums.AlbumRestrictionObjectReason>
    albumRestrictionObjectReasonListFromJson(
  List? albumRestrictionObjectReason, [
  List<enums.AlbumRestrictionObjectReason>? defaultValue,
]) {
  if (albumRestrictionObjectReason == null) {
    return defaultValue ?? [];
  }

  return albumRestrictionObjectReason
      .map((e) => albumRestrictionObjectReasonFromJson(e.toString()))
      .toList();
}

List<enums.AlbumRestrictionObjectReason>?
    albumRestrictionObjectReasonNullableListFromJson(
  List? albumRestrictionObjectReason, [
  List<enums.AlbumRestrictionObjectReason>? defaultValue,
]) {
  if (albumRestrictionObjectReason == null) {
    return defaultValue;
  }

  return albumRestrictionObjectReason
      .map((e) => albumRestrictionObjectReasonFromJson(e.toString()))
      .toList();
}

String? artistObjectTypeToJson(enums.ArtistObjectType? artistObjectType) {
  return artistObjectType?.value;
}

enums.ArtistObjectType artistObjectTypeFromJson(
  Object? artistObjectType, [
  enums.ArtistObjectType? defaultValue,
]) {
  return enums.ArtistObjectType.values
          .firstWhereOrNull((e) => e.value == artistObjectType) ??
      defaultValue ??
      enums.ArtistObjectType.swaggerGeneratedUnknown;
}

List<String> artistObjectTypeListToJson(
    List<enums.ArtistObjectType>? artistObjectType) {
  if (artistObjectType == null) {
    return [];
  }

  return artistObjectType.map((e) => e.value!).toList();
}

List<enums.ArtistObjectType> artistObjectTypeListFromJson(
  List? artistObjectType, [
  List<enums.ArtistObjectType>? defaultValue,
]) {
  if (artistObjectType == null) {
    return defaultValue ?? [];
  }

  return artistObjectType
      .map((e) => artistObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.ArtistObjectType>? artistObjectTypeNullableListFromJson(
  List? artistObjectType, [
  List<enums.ArtistObjectType>? defaultValue,
]) {
  if (artistObjectType == null) {
    return defaultValue;
  }

  return artistObjectType
      .map((e) => artistObjectTypeFromJson(e.toString()))
      .toList();
}

String? simplifiedArtistObjectTypeToJson(
    enums.SimplifiedArtistObjectType? simplifiedArtistObjectType) {
  return simplifiedArtistObjectType?.value;
}

enums.SimplifiedArtistObjectType simplifiedArtistObjectTypeFromJson(
  Object? simplifiedArtistObjectType, [
  enums.SimplifiedArtistObjectType? defaultValue,
]) {
  return enums.SimplifiedArtistObjectType.values
          .firstWhereOrNull((e) => e.value == simplifiedArtistObjectType) ??
      defaultValue ??
      enums.SimplifiedArtistObjectType.swaggerGeneratedUnknown;
}

List<String> simplifiedArtistObjectTypeListToJson(
    List<enums.SimplifiedArtistObjectType>? simplifiedArtistObjectType) {
  if (simplifiedArtistObjectType == null) {
    return [];
  }

  return simplifiedArtistObjectType.map((e) => e.value!).toList();
}

List<enums.SimplifiedArtistObjectType> simplifiedArtistObjectTypeListFromJson(
  List? simplifiedArtistObjectType, [
  List<enums.SimplifiedArtistObjectType>? defaultValue,
]) {
  if (simplifiedArtistObjectType == null) {
    return defaultValue ?? [];
  }

  return simplifiedArtistObjectType
      .map((e) => simplifiedArtistObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.SimplifiedArtistObjectType>?
    simplifiedArtistObjectTypeNullableListFromJson(
  List? simplifiedArtistObjectType, [
  List<enums.SimplifiedArtistObjectType>? defaultValue,
]) {
  if (simplifiedArtistObjectType == null) {
    return defaultValue;
  }

  return simplifiedArtistObjectType
      .map((e) => simplifiedArtistObjectTypeFromJson(e.toString()))
      .toList();
}

String? playerErrorReasonsToJson(enums.PlayerErrorReasons? playerErrorReasons) {
  return playerErrorReasons?.value;
}

enums.PlayerErrorReasons playerErrorReasonsFromJson(
  Object? playerErrorReasons, [
  enums.PlayerErrorReasons? defaultValue,
]) {
  return enums.PlayerErrorReasons.values
          .firstWhereOrNull((e) => e.value == playerErrorReasons) ??
      defaultValue ??
      enums.PlayerErrorReasons.swaggerGeneratedUnknown;
}

List<String> playerErrorReasonsListToJson(
    List<enums.PlayerErrorReasons>? playerErrorReasons) {
  if (playerErrorReasons == null) {
    return [];
  }

  return playerErrorReasons.map((e) => e.value!).toList();
}

List<enums.PlayerErrorReasons> playerErrorReasonsListFromJson(
  List? playerErrorReasons, [
  List<enums.PlayerErrorReasons>? defaultValue,
]) {
  if (playerErrorReasons == null) {
    return defaultValue ?? [];
  }

  return playerErrorReasons
      .map((e) => playerErrorReasonsFromJson(e.toString()))
      .toList();
}

List<enums.PlayerErrorReasons>? playerErrorReasonsNullableListFromJson(
  List? playerErrorReasons, [
  List<enums.PlayerErrorReasons>? defaultValue,
]) {
  if (playerErrorReasons == null) {
    return defaultValue;
  }

  return playerErrorReasons
      .map((e) => playerErrorReasonsFromJson(e.toString()))
      .toList();
}

String? publicUserObjectTypeToJson(
    enums.PublicUserObjectType? publicUserObjectType) {
  return publicUserObjectType?.value;
}

enums.PublicUserObjectType publicUserObjectTypeFromJson(
  Object? publicUserObjectType, [
  enums.PublicUserObjectType? defaultValue,
]) {
  return enums.PublicUserObjectType.values
          .firstWhereOrNull((e) => e.value == publicUserObjectType) ??
      defaultValue ??
      enums.PublicUserObjectType.swaggerGeneratedUnknown;
}

List<String> publicUserObjectTypeListToJson(
    List<enums.PublicUserObjectType>? publicUserObjectType) {
  if (publicUserObjectType == null) {
    return [];
  }

  return publicUserObjectType.map((e) => e.value!).toList();
}

List<enums.PublicUserObjectType> publicUserObjectTypeListFromJson(
  List? publicUserObjectType, [
  List<enums.PublicUserObjectType>? defaultValue,
]) {
  if (publicUserObjectType == null) {
    return defaultValue ?? [];
  }

  return publicUserObjectType
      .map((e) => publicUserObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.PublicUserObjectType>? publicUserObjectTypeNullableListFromJson(
  List? publicUserObjectType, [
  List<enums.PublicUserObjectType>? defaultValue,
]) {
  if (publicUserObjectType == null) {
    return defaultValue;
  }

  return publicUserObjectType
      .map((e) => publicUserObjectTypeFromJson(e.toString()))
      .toList();
}

int? sectionObjectModeToJson(enums.SectionObjectMode? sectionObjectMode) {
  return sectionObjectMode?.value;
}

enums.SectionObjectMode sectionObjectModeFromJson(
  Object? sectionObjectMode, [
  enums.SectionObjectMode? defaultValue,
]) {
  return enums.SectionObjectMode.values
          .firstWhereOrNull((e) => e.value == sectionObjectMode) ??
      defaultValue ??
      enums.SectionObjectMode.swaggerGeneratedUnknown;
}

List<int> sectionObjectModeListToJson(
    List<enums.SectionObjectMode>? sectionObjectMode) {
  if (sectionObjectMode == null) {
    return [];
  }

  return sectionObjectMode.map((e) => e.value!).toList();
}

List<enums.SectionObjectMode> sectionObjectModeListFromJson(
  List? sectionObjectMode, [
  List<enums.SectionObjectMode>? defaultValue,
]) {
  if (sectionObjectMode == null) {
    return defaultValue ?? [];
  }

  return sectionObjectMode
      .map((e) => sectionObjectModeFromJson(e.toString()))
      .toList();
}

List<enums.SectionObjectMode>? sectionObjectModeNullableListFromJson(
  List? sectionObjectMode, [
  List<enums.SectionObjectMode>? defaultValue,
]) {
  if (sectionObjectMode == null) {
    return defaultValue;
  }

  return sectionObjectMode
      .map((e) => sectionObjectModeFromJson(e.toString()))
      .toList();
}

String? audioFeaturesObjectTypeToJson(
    enums.AudioFeaturesObjectType? audioFeaturesObjectType) {
  return audioFeaturesObjectType?.value;
}

enums.AudioFeaturesObjectType audioFeaturesObjectTypeFromJson(
  Object? audioFeaturesObjectType, [
  enums.AudioFeaturesObjectType? defaultValue,
]) {
  return enums.AudioFeaturesObjectType.values
          .firstWhereOrNull((e) => e.value == audioFeaturesObjectType) ??
      defaultValue ??
      enums.AudioFeaturesObjectType.swaggerGeneratedUnknown;
}

List<String> audioFeaturesObjectTypeListToJson(
    List<enums.AudioFeaturesObjectType>? audioFeaturesObjectType) {
  if (audioFeaturesObjectType == null) {
    return [];
  }

  return audioFeaturesObjectType.map((e) => e.value!).toList();
}

List<enums.AudioFeaturesObjectType> audioFeaturesObjectTypeListFromJson(
  List? audioFeaturesObjectType, [
  List<enums.AudioFeaturesObjectType>? defaultValue,
]) {
  if (audioFeaturesObjectType == null) {
    return defaultValue ?? [];
  }

  return audioFeaturesObjectType
      .map((e) => audioFeaturesObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.AudioFeaturesObjectType>?
    audioFeaturesObjectTypeNullableListFromJson(
  List? audioFeaturesObjectType, [
  List<enums.AudioFeaturesObjectType>? defaultValue,
]) {
  if (audioFeaturesObjectType == null) {
    return defaultValue;
  }

  return audioFeaturesObjectType
      .map((e) => audioFeaturesObjectTypeFromJson(e.toString()))
      .toList();
}

String? playlistUserObjectTypeToJson(
    enums.PlaylistUserObjectType? playlistUserObjectType) {
  return playlistUserObjectType?.value;
}

enums.PlaylistUserObjectType playlistUserObjectTypeFromJson(
  Object? playlistUserObjectType, [
  enums.PlaylistUserObjectType? defaultValue,
]) {
  return enums.PlaylistUserObjectType.values
          .firstWhereOrNull((e) => e.value == playlistUserObjectType) ??
      defaultValue ??
      enums.PlaylistUserObjectType.swaggerGeneratedUnknown;
}

List<String> playlistUserObjectTypeListToJson(
    List<enums.PlaylistUserObjectType>? playlistUserObjectType) {
  if (playlistUserObjectType == null) {
    return [];
  }

  return playlistUserObjectType.map((e) => e.value!).toList();
}

List<enums.PlaylistUserObjectType> playlistUserObjectTypeListFromJson(
  List? playlistUserObjectType, [
  List<enums.PlaylistUserObjectType>? defaultValue,
]) {
  if (playlistUserObjectType == null) {
    return defaultValue ?? [];
  }

  return playlistUserObjectType
      .map((e) => playlistUserObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.PlaylistUserObjectType>? playlistUserObjectTypeNullableListFromJson(
  List? playlistUserObjectType, [
  List<enums.PlaylistUserObjectType>? defaultValue,
]) {
  if (playlistUserObjectType == null) {
    return defaultValue;
  }

  return playlistUserObjectType
      .map((e) => playlistUserObjectTypeFromJson(e.toString()))
      .toList();
}

String? playlistOwnerObjectTypeToJson(
    enums.PlaylistOwnerObjectType? playlistOwnerObjectType) {
  return playlistOwnerObjectType?.value;
}

enums.PlaylistOwnerObjectType playlistOwnerObjectTypeFromJson(
  Object? playlistOwnerObjectType, [
  enums.PlaylistOwnerObjectType? defaultValue,
]) {
  return enums.PlaylistOwnerObjectType.values
          .firstWhereOrNull((e) => e.value == playlistOwnerObjectType) ??
      defaultValue ??
      enums.PlaylistOwnerObjectType.swaggerGeneratedUnknown;
}

List<String> playlistOwnerObjectTypeListToJson(
    List<enums.PlaylistOwnerObjectType>? playlistOwnerObjectType) {
  if (playlistOwnerObjectType == null) {
    return [];
  }

  return playlistOwnerObjectType.map((e) => e.value!).toList();
}

List<enums.PlaylistOwnerObjectType> playlistOwnerObjectTypeListFromJson(
  List? playlistOwnerObjectType, [
  List<enums.PlaylistOwnerObjectType>? defaultValue,
]) {
  if (playlistOwnerObjectType == null) {
    return defaultValue ?? [];
  }

  return playlistOwnerObjectType
      .map((e) => playlistOwnerObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.PlaylistOwnerObjectType>?
    playlistOwnerObjectTypeNullableListFromJson(
  List? playlistOwnerObjectType, [
  List<enums.PlaylistOwnerObjectType>? defaultValue,
]) {
  if (playlistOwnerObjectType == null) {
    return defaultValue;
  }

  return playlistOwnerObjectType
      .map((e) => playlistOwnerObjectTypeFromJson(e.toString()))
      .toList();
}

String? trackObjectTypeToJson(enums.TrackObjectType? trackObjectType) {
  return trackObjectType?.value;
}

enums.TrackObjectType trackObjectTypeFromJson(
  Object? trackObjectType, [
  enums.TrackObjectType? defaultValue,
]) {
  return enums.TrackObjectType.values
          .firstWhereOrNull((e) => e.value == trackObjectType) ??
      defaultValue ??
      enums.TrackObjectType.swaggerGeneratedUnknown;
}

List<String> trackObjectTypeListToJson(
    List<enums.TrackObjectType>? trackObjectType) {
  if (trackObjectType == null) {
    return [];
  }

  return trackObjectType.map((e) => e.value!).toList();
}

List<enums.TrackObjectType> trackObjectTypeListFromJson(
  List? trackObjectType, [
  List<enums.TrackObjectType>? defaultValue,
]) {
  if (trackObjectType == null) {
    return defaultValue ?? [];
  }

  return trackObjectType
      .map((e) => trackObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.TrackObjectType>? trackObjectTypeNullableListFromJson(
  List? trackObjectType, [
  List<enums.TrackObjectType>? defaultValue,
]) {
  if (trackObjectType == null) {
    return defaultValue;
  }

  return trackObjectType
      .map((e) => trackObjectTypeFromJson(e.toString()))
      .toList();
}

String? episodeObjectReleaseDatePrecisionToJson(
    enums.EpisodeObjectReleaseDatePrecision?
        episodeObjectReleaseDatePrecision) {
  return episodeObjectReleaseDatePrecision?.value;
}

enums.EpisodeObjectReleaseDatePrecision
    episodeObjectReleaseDatePrecisionFromJson(
  Object? episodeObjectReleaseDatePrecision, [
  enums.EpisodeObjectReleaseDatePrecision? defaultValue,
]) {
  return enums.EpisodeObjectReleaseDatePrecision.values.firstWhereOrNull(
          (e) => e.value == episodeObjectReleaseDatePrecision) ??
      defaultValue ??
      enums.EpisodeObjectReleaseDatePrecision.swaggerGeneratedUnknown;
}

List<String> episodeObjectReleaseDatePrecisionListToJson(
    List<enums.EpisodeObjectReleaseDatePrecision>?
        episodeObjectReleaseDatePrecision) {
  if (episodeObjectReleaseDatePrecision == null) {
    return [];
  }

  return episodeObjectReleaseDatePrecision.map((e) => e.value!).toList();
}

List<enums.EpisodeObjectReleaseDatePrecision>
    episodeObjectReleaseDatePrecisionListFromJson(
  List? episodeObjectReleaseDatePrecision, [
  List<enums.EpisodeObjectReleaseDatePrecision>? defaultValue,
]) {
  if (episodeObjectReleaseDatePrecision == null) {
    return defaultValue ?? [];
  }

  return episodeObjectReleaseDatePrecision
      .map((e) => episodeObjectReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

List<enums.EpisodeObjectReleaseDatePrecision>?
    episodeObjectReleaseDatePrecisionNullableListFromJson(
  List? episodeObjectReleaseDatePrecision, [
  List<enums.EpisodeObjectReleaseDatePrecision>? defaultValue,
]) {
  if (episodeObjectReleaseDatePrecision == null) {
    return defaultValue;
  }

  return episodeObjectReleaseDatePrecision
      .map((e) => episodeObjectReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

String? episodeObjectTypeToJson(enums.EpisodeObjectType? episodeObjectType) {
  return episodeObjectType?.value;
}

enums.EpisodeObjectType episodeObjectTypeFromJson(
  Object? episodeObjectType, [
  enums.EpisodeObjectType? defaultValue,
]) {
  return enums.EpisodeObjectType.values
          .firstWhereOrNull((e) => e.value == episodeObjectType) ??
      defaultValue ??
      enums.EpisodeObjectType.swaggerGeneratedUnknown;
}

List<String> episodeObjectTypeListToJson(
    List<enums.EpisodeObjectType>? episodeObjectType) {
  if (episodeObjectType == null) {
    return [];
  }

  return episodeObjectType.map((e) => e.value!).toList();
}

List<enums.EpisodeObjectType> episodeObjectTypeListFromJson(
  List? episodeObjectType, [
  List<enums.EpisodeObjectType>? defaultValue,
]) {
  if (episodeObjectType == null) {
    return defaultValue ?? [];
  }

  return episodeObjectType
      .map((e) => episodeObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.EpisodeObjectType>? episodeObjectTypeNullableListFromJson(
  List? episodeObjectType, [
  List<enums.EpisodeObjectType>? defaultValue,
]) {
  if (episodeObjectType == null) {
    return defaultValue;
  }

  return episodeObjectType
      .map((e) => episodeObjectTypeFromJson(e.toString()))
      .toList();
}

String? simplifiedEpisodeObjectReleaseDatePrecisionToJson(
    enums.SimplifiedEpisodeObjectReleaseDatePrecision?
        simplifiedEpisodeObjectReleaseDatePrecision) {
  return simplifiedEpisodeObjectReleaseDatePrecision?.value;
}

enums.SimplifiedEpisodeObjectReleaseDatePrecision
    simplifiedEpisodeObjectReleaseDatePrecisionFromJson(
  Object? simplifiedEpisodeObjectReleaseDatePrecision, [
  enums.SimplifiedEpisodeObjectReleaseDatePrecision? defaultValue,
]) {
  return enums.SimplifiedEpisodeObjectReleaseDatePrecision.values
          .firstWhereOrNull(
              (e) => e.value == simplifiedEpisodeObjectReleaseDatePrecision) ??
      defaultValue ??
      enums.SimplifiedEpisodeObjectReleaseDatePrecision.swaggerGeneratedUnknown;
}

List<String> simplifiedEpisodeObjectReleaseDatePrecisionListToJson(
    List<enums.SimplifiedEpisodeObjectReleaseDatePrecision>?
        simplifiedEpisodeObjectReleaseDatePrecision) {
  if (simplifiedEpisodeObjectReleaseDatePrecision == null) {
    return [];
  }

  return simplifiedEpisodeObjectReleaseDatePrecision
      .map((e) => e.value!)
      .toList();
}

List<enums.SimplifiedEpisodeObjectReleaseDatePrecision>
    simplifiedEpisodeObjectReleaseDatePrecisionListFromJson(
  List? simplifiedEpisodeObjectReleaseDatePrecision, [
  List<enums.SimplifiedEpisodeObjectReleaseDatePrecision>? defaultValue,
]) {
  if (simplifiedEpisodeObjectReleaseDatePrecision == null) {
    return defaultValue ?? [];
  }

  return simplifiedEpisodeObjectReleaseDatePrecision
      .map((e) =>
          simplifiedEpisodeObjectReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

List<enums.SimplifiedEpisodeObjectReleaseDatePrecision>?
    simplifiedEpisodeObjectReleaseDatePrecisionNullableListFromJson(
  List? simplifiedEpisodeObjectReleaseDatePrecision, [
  List<enums.SimplifiedEpisodeObjectReleaseDatePrecision>? defaultValue,
]) {
  if (simplifiedEpisodeObjectReleaseDatePrecision == null) {
    return defaultValue;
  }

  return simplifiedEpisodeObjectReleaseDatePrecision
      .map((e) =>
          simplifiedEpisodeObjectReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

String? simplifiedEpisodeObjectTypeToJson(
    enums.SimplifiedEpisodeObjectType? simplifiedEpisodeObjectType) {
  return simplifiedEpisodeObjectType?.value;
}

enums.SimplifiedEpisodeObjectType simplifiedEpisodeObjectTypeFromJson(
  Object? simplifiedEpisodeObjectType, [
  enums.SimplifiedEpisodeObjectType? defaultValue,
]) {
  return enums.SimplifiedEpisodeObjectType.values
          .firstWhereOrNull((e) => e.value == simplifiedEpisodeObjectType) ??
      defaultValue ??
      enums.SimplifiedEpisodeObjectType.swaggerGeneratedUnknown;
}

List<String> simplifiedEpisodeObjectTypeListToJson(
    List<enums.SimplifiedEpisodeObjectType>? simplifiedEpisodeObjectType) {
  if (simplifiedEpisodeObjectType == null) {
    return [];
  }

  return simplifiedEpisodeObjectType.map((e) => e.value!).toList();
}

List<enums.SimplifiedEpisodeObjectType> simplifiedEpisodeObjectTypeListFromJson(
  List? simplifiedEpisodeObjectType, [
  List<enums.SimplifiedEpisodeObjectType>? defaultValue,
]) {
  if (simplifiedEpisodeObjectType == null) {
    return defaultValue ?? [];
  }

  return simplifiedEpisodeObjectType
      .map((e) => simplifiedEpisodeObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.SimplifiedEpisodeObjectType>?
    simplifiedEpisodeObjectTypeNullableListFromJson(
  List? simplifiedEpisodeObjectType, [
  List<enums.SimplifiedEpisodeObjectType>? defaultValue,
]) {
  if (simplifiedEpisodeObjectType == null) {
    return defaultValue;
  }

  return simplifiedEpisodeObjectType
      .map((e) => simplifiedEpisodeObjectTypeFromJson(e.toString()))
      .toList();
}

String? episodeBaseReleaseDatePrecisionToJson(
    enums.EpisodeBaseReleaseDatePrecision? episodeBaseReleaseDatePrecision) {
  return episodeBaseReleaseDatePrecision?.value;
}

enums.EpisodeBaseReleaseDatePrecision episodeBaseReleaseDatePrecisionFromJson(
  Object? episodeBaseReleaseDatePrecision, [
  enums.EpisodeBaseReleaseDatePrecision? defaultValue,
]) {
  return enums.EpisodeBaseReleaseDatePrecision.values.firstWhereOrNull(
          (e) => e.value == episodeBaseReleaseDatePrecision) ??
      defaultValue ??
      enums.EpisodeBaseReleaseDatePrecision.swaggerGeneratedUnknown;
}

List<String> episodeBaseReleaseDatePrecisionListToJson(
    List<enums.EpisodeBaseReleaseDatePrecision>?
        episodeBaseReleaseDatePrecision) {
  if (episodeBaseReleaseDatePrecision == null) {
    return [];
  }

  return episodeBaseReleaseDatePrecision.map((e) => e.value!).toList();
}

List<enums.EpisodeBaseReleaseDatePrecision>
    episodeBaseReleaseDatePrecisionListFromJson(
  List? episodeBaseReleaseDatePrecision, [
  List<enums.EpisodeBaseReleaseDatePrecision>? defaultValue,
]) {
  if (episodeBaseReleaseDatePrecision == null) {
    return defaultValue ?? [];
  }

  return episodeBaseReleaseDatePrecision
      .map((e) => episodeBaseReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

List<enums.EpisodeBaseReleaseDatePrecision>?
    episodeBaseReleaseDatePrecisionNullableListFromJson(
  List? episodeBaseReleaseDatePrecision, [
  List<enums.EpisodeBaseReleaseDatePrecision>? defaultValue,
]) {
  if (episodeBaseReleaseDatePrecision == null) {
    return defaultValue;
  }

  return episodeBaseReleaseDatePrecision
      .map((e) => episodeBaseReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

String? episodeBaseTypeToJson(enums.EpisodeBaseType? episodeBaseType) {
  return episodeBaseType?.value;
}

enums.EpisodeBaseType episodeBaseTypeFromJson(
  Object? episodeBaseType, [
  enums.EpisodeBaseType? defaultValue,
]) {
  return enums.EpisodeBaseType.values
          .firstWhereOrNull((e) => e.value == episodeBaseType) ??
      defaultValue ??
      enums.EpisodeBaseType.swaggerGeneratedUnknown;
}

List<String> episodeBaseTypeListToJson(
    List<enums.EpisodeBaseType>? episodeBaseType) {
  if (episodeBaseType == null) {
    return [];
  }

  return episodeBaseType.map((e) => e.value!).toList();
}

List<enums.EpisodeBaseType> episodeBaseTypeListFromJson(
  List? episodeBaseType, [
  List<enums.EpisodeBaseType>? defaultValue,
]) {
  if (episodeBaseType == null) {
    return defaultValue ?? [];
  }

  return episodeBaseType
      .map((e) => episodeBaseTypeFromJson(e.toString()))
      .toList();
}

List<enums.EpisodeBaseType>? episodeBaseTypeNullableListFromJson(
  List? episodeBaseType, [
  List<enums.EpisodeBaseType>? defaultValue,
]) {
  if (episodeBaseType == null) {
    return defaultValue;
  }

  return episodeBaseType
      .map((e) => episodeBaseTypeFromJson(e.toString()))
      .toList();
}

String? showBaseTypeToJson(enums.ShowBaseType? showBaseType) {
  return showBaseType?.value;
}

enums.ShowBaseType showBaseTypeFromJson(
  Object? showBaseType, [
  enums.ShowBaseType? defaultValue,
]) {
  return enums.ShowBaseType.values
          .firstWhereOrNull((e) => e.value == showBaseType) ??
      defaultValue ??
      enums.ShowBaseType.swaggerGeneratedUnknown;
}

List<String> showBaseTypeListToJson(List<enums.ShowBaseType>? showBaseType) {
  if (showBaseType == null) {
    return [];
  }

  return showBaseType.map((e) => e.value!).toList();
}

List<enums.ShowBaseType> showBaseTypeListFromJson(
  List? showBaseType, [
  List<enums.ShowBaseType>? defaultValue,
]) {
  if (showBaseType == null) {
    return defaultValue ?? [];
  }

  return showBaseType.map((e) => showBaseTypeFromJson(e.toString())).toList();
}

List<enums.ShowBaseType>? showBaseTypeNullableListFromJson(
  List? showBaseType, [
  List<enums.ShowBaseType>? defaultValue,
]) {
  if (showBaseType == null) {
    return defaultValue;
  }

  return showBaseType.map((e) => showBaseTypeFromJson(e.toString())).toList();
}

String? showObjectTypeToJson(enums.ShowObjectType? showObjectType) {
  return showObjectType?.value;
}

enums.ShowObjectType showObjectTypeFromJson(
  Object? showObjectType, [
  enums.ShowObjectType? defaultValue,
]) {
  return enums.ShowObjectType.values
          .firstWhereOrNull((e) => e.value == showObjectType) ??
      defaultValue ??
      enums.ShowObjectType.swaggerGeneratedUnknown;
}

List<String> showObjectTypeListToJson(
    List<enums.ShowObjectType>? showObjectType) {
  if (showObjectType == null) {
    return [];
  }

  return showObjectType.map((e) => e.value!).toList();
}

List<enums.ShowObjectType> showObjectTypeListFromJson(
  List? showObjectType, [
  List<enums.ShowObjectType>? defaultValue,
]) {
  if (showObjectType == null) {
    return defaultValue ?? [];
  }

  return showObjectType
      .map((e) => showObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.ShowObjectType>? showObjectTypeNullableListFromJson(
  List? showObjectType, [
  List<enums.ShowObjectType>? defaultValue,
]) {
  if (showObjectType == null) {
    return defaultValue;
  }

  return showObjectType
      .map((e) => showObjectTypeFromJson(e.toString()))
      .toList();
}

String? simplifiedShowObjectTypeToJson(
    enums.SimplifiedShowObjectType? simplifiedShowObjectType) {
  return simplifiedShowObjectType?.value;
}

enums.SimplifiedShowObjectType simplifiedShowObjectTypeFromJson(
  Object? simplifiedShowObjectType, [
  enums.SimplifiedShowObjectType? defaultValue,
]) {
  return enums.SimplifiedShowObjectType.values
          .firstWhereOrNull((e) => e.value == simplifiedShowObjectType) ??
      defaultValue ??
      enums.SimplifiedShowObjectType.swaggerGeneratedUnknown;
}

List<String> simplifiedShowObjectTypeListToJson(
    List<enums.SimplifiedShowObjectType>? simplifiedShowObjectType) {
  if (simplifiedShowObjectType == null) {
    return [];
  }

  return simplifiedShowObjectType.map((e) => e.value!).toList();
}

List<enums.SimplifiedShowObjectType> simplifiedShowObjectTypeListFromJson(
  List? simplifiedShowObjectType, [
  List<enums.SimplifiedShowObjectType>? defaultValue,
]) {
  if (simplifiedShowObjectType == null) {
    return defaultValue ?? [];
  }

  return simplifiedShowObjectType
      .map((e) => simplifiedShowObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.SimplifiedShowObjectType>?
    simplifiedShowObjectTypeNullableListFromJson(
  List? simplifiedShowObjectType, [
  List<enums.SimplifiedShowObjectType>? defaultValue,
]) {
  if (simplifiedShowObjectType == null) {
    return defaultValue;
  }

  return simplifiedShowObjectType
      .map((e) => simplifiedShowObjectTypeFromJson(e.toString()))
      .toList();
}

String? audiobookBaseTypeToJson(enums.AudiobookBaseType? audiobookBaseType) {
  return audiobookBaseType?.value;
}

enums.AudiobookBaseType audiobookBaseTypeFromJson(
  Object? audiobookBaseType, [
  enums.AudiobookBaseType? defaultValue,
]) {
  return enums.AudiobookBaseType.values
          .firstWhereOrNull((e) => e.value == audiobookBaseType) ??
      defaultValue ??
      enums.AudiobookBaseType.swaggerGeneratedUnknown;
}

List<String> audiobookBaseTypeListToJson(
    List<enums.AudiobookBaseType>? audiobookBaseType) {
  if (audiobookBaseType == null) {
    return [];
  }

  return audiobookBaseType.map((e) => e.value!).toList();
}

List<enums.AudiobookBaseType> audiobookBaseTypeListFromJson(
  List? audiobookBaseType, [
  List<enums.AudiobookBaseType>? defaultValue,
]) {
  if (audiobookBaseType == null) {
    return defaultValue ?? [];
  }

  return audiobookBaseType
      .map((e) => audiobookBaseTypeFromJson(e.toString()))
      .toList();
}

List<enums.AudiobookBaseType>? audiobookBaseTypeNullableListFromJson(
  List? audiobookBaseType, [
  List<enums.AudiobookBaseType>? defaultValue,
]) {
  if (audiobookBaseType == null) {
    return defaultValue;
  }

  return audiobookBaseType
      .map((e) => audiobookBaseTypeFromJson(e.toString()))
      .toList();
}

String? audiobookObjectTypeToJson(
    enums.AudiobookObjectType? audiobookObjectType) {
  return audiobookObjectType?.value;
}

enums.AudiobookObjectType audiobookObjectTypeFromJson(
  Object? audiobookObjectType, [
  enums.AudiobookObjectType? defaultValue,
]) {
  return enums.AudiobookObjectType.values
          .firstWhereOrNull((e) => e.value == audiobookObjectType) ??
      defaultValue ??
      enums.AudiobookObjectType.swaggerGeneratedUnknown;
}

List<String> audiobookObjectTypeListToJson(
    List<enums.AudiobookObjectType>? audiobookObjectType) {
  if (audiobookObjectType == null) {
    return [];
  }

  return audiobookObjectType.map((e) => e.value!).toList();
}

List<enums.AudiobookObjectType> audiobookObjectTypeListFromJson(
  List? audiobookObjectType, [
  List<enums.AudiobookObjectType>? defaultValue,
]) {
  if (audiobookObjectType == null) {
    return defaultValue ?? [];
  }

  return audiobookObjectType
      .map((e) => audiobookObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.AudiobookObjectType>? audiobookObjectTypeNullableListFromJson(
  List? audiobookObjectType, [
  List<enums.AudiobookObjectType>? defaultValue,
]) {
  if (audiobookObjectType == null) {
    return defaultValue;
  }

  return audiobookObjectType
      .map((e) => audiobookObjectTypeFromJson(e.toString()))
      .toList();
}

String? simplifiedAudiobookObjectTypeToJson(
    enums.SimplifiedAudiobookObjectType? simplifiedAudiobookObjectType) {
  return simplifiedAudiobookObjectType?.value;
}

enums.SimplifiedAudiobookObjectType simplifiedAudiobookObjectTypeFromJson(
  Object? simplifiedAudiobookObjectType, [
  enums.SimplifiedAudiobookObjectType? defaultValue,
]) {
  return enums.SimplifiedAudiobookObjectType.values
          .firstWhereOrNull((e) => e.value == simplifiedAudiobookObjectType) ??
      defaultValue ??
      enums.SimplifiedAudiobookObjectType.swaggerGeneratedUnknown;
}

List<String> simplifiedAudiobookObjectTypeListToJson(
    List<enums.SimplifiedAudiobookObjectType>? simplifiedAudiobookObjectType) {
  if (simplifiedAudiobookObjectType == null) {
    return [];
  }

  return simplifiedAudiobookObjectType.map((e) => e.value!).toList();
}

List<enums.SimplifiedAudiobookObjectType>
    simplifiedAudiobookObjectTypeListFromJson(
  List? simplifiedAudiobookObjectType, [
  List<enums.SimplifiedAudiobookObjectType>? defaultValue,
]) {
  if (simplifiedAudiobookObjectType == null) {
    return defaultValue ?? [];
  }

  return simplifiedAudiobookObjectType
      .map((e) => simplifiedAudiobookObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.SimplifiedAudiobookObjectType>?
    simplifiedAudiobookObjectTypeNullableListFromJson(
  List? simplifiedAudiobookObjectType, [
  List<enums.SimplifiedAudiobookObjectType>? defaultValue,
]) {
  if (simplifiedAudiobookObjectType == null) {
    return defaultValue;
  }

  return simplifiedAudiobookObjectType
      .map((e) => simplifiedAudiobookObjectTypeFromJson(e.toString()))
      .toList();
}

String? albumBaseAlbumTypeToJson(enums.AlbumBaseAlbumType? albumBaseAlbumType) {
  return albumBaseAlbumType?.value;
}

enums.AlbumBaseAlbumType albumBaseAlbumTypeFromJson(
  Object? albumBaseAlbumType, [
  enums.AlbumBaseAlbumType? defaultValue,
]) {
  return enums.AlbumBaseAlbumType.values
          .firstWhereOrNull((e) => e.value == albumBaseAlbumType) ??
      defaultValue ??
      enums.AlbumBaseAlbumType.swaggerGeneratedUnknown;
}

List<String> albumBaseAlbumTypeListToJson(
    List<enums.AlbumBaseAlbumType>? albumBaseAlbumType) {
  if (albumBaseAlbumType == null) {
    return [];
  }

  return albumBaseAlbumType.map((e) => e.value!).toList();
}

List<enums.AlbumBaseAlbumType> albumBaseAlbumTypeListFromJson(
  List? albumBaseAlbumType, [
  List<enums.AlbumBaseAlbumType>? defaultValue,
]) {
  if (albumBaseAlbumType == null) {
    return defaultValue ?? [];
  }

  return albumBaseAlbumType
      .map((e) => albumBaseAlbumTypeFromJson(e.toString()))
      .toList();
}

List<enums.AlbumBaseAlbumType>? albumBaseAlbumTypeNullableListFromJson(
  List? albumBaseAlbumType, [
  List<enums.AlbumBaseAlbumType>? defaultValue,
]) {
  if (albumBaseAlbumType == null) {
    return defaultValue;
  }

  return albumBaseAlbumType
      .map((e) => albumBaseAlbumTypeFromJson(e.toString()))
      .toList();
}

String? albumBaseReleaseDatePrecisionToJson(
    enums.AlbumBaseReleaseDatePrecision? albumBaseReleaseDatePrecision) {
  return albumBaseReleaseDatePrecision?.value;
}

enums.AlbumBaseReleaseDatePrecision albumBaseReleaseDatePrecisionFromJson(
  Object? albumBaseReleaseDatePrecision, [
  enums.AlbumBaseReleaseDatePrecision? defaultValue,
]) {
  return enums.AlbumBaseReleaseDatePrecision.values
          .firstWhereOrNull((e) => e.value == albumBaseReleaseDatePrecision) ??
      defaultValue ??
      enums.AlbumBaseReleaseDatePrecision.swaggerGeneratedUnknown;
}

List<String> albumBaseReleaseDatePrecisionListToJson(
    List<enums.AlbumBaseReleaseDatePrecision>? albumBaseReleaseDatePrecision) {
  if (albumBaseReleaseDatePrecision == null) {
    return [];
  }

  return albumBaseReleaseDatePrecision.map((e) => e.value!).toList();
}

List<enums.AlbumBaseReleaseDatePrecision>
    albumBaseReleaseDatePrecisionListFromJson(
  List? albumBaseReleaseDatePrecision, [
  List<enums.AlbumBaseReleaseDatePrecision>? defaultValue,
]) {
  if (albumBaseReleaseDatePrecision == null) {
    return defaultValue ?? [];
  }

  return albumBaseReleaseDatePrecision
      .map((e) => albumBaseReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

List<enums.AlbumBaseReleaseDatePrecision>?
    albumBaseReleaseDatePrecisionNullableListFromJson(
  List? albumBaseReleaseDatePrecision, [
  List<enums.AlbumBaseReleaseDatePrecision>? defaultValue,
]) {
  if (albumBaseReleaseDatePrecision == null) {
    return defaultValue;
  }

  return albumBaseReleaseDatePrecision
      .map((e) => albumBaseReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

String? albumBaseTypeToJson(enums.AlbumBaseType? albumBaseType) {
  return albumBaseType?.value;
}

enums.AlbumBaseType albumBaseTypeFromJson(
  Object? albumBaseType, [
  enums.AlbumBaseType? defaultValue,
]) {
  return enums.AlbumBaseType.values
          .firstWhereOrNull((e) => e.value == albumBaseType) ??
      defaultValue ??
      enums.AlbumBaseType.swaggerGeneratedUnknown;
}

List<String> albumBaseTypeListToJson(List<enums.AlbumBaseType>? albumBaseType) {
  if (albumBaseType == null) {
    return [];
  }

  return albumBaseType.map((e) => e.value!).toList();
}

List<enums.AlbumBaseType> albumBaseTypeListFromJson(
  List? albumBaseType, [
  List<enums.AlbumBaseType>? defaultValue,
]) {
  if (albumBaseType == null) {
    return defaultValue ?? [];
  }

  return albumBaseType.map((e) => albumBaseTypeFromJson(e.toString())).toList();
}

List<enums.AlbumBaseType>? albumBaseTypeNullableListFromJson(
  List? albumBaseType, [
  List<enums.AlbumBaseType>? defaultValue,
]) {
  if (albumBaseType == null) {
    return defaultValue;
  }

  return albumBaseType.map((e) => albumBaseTypeFromJson(e.toString())).toList();
}

String? simplifiedAlbumObjectAlbumGroupToJson(
    enums.SimplifiedAlbumObjectAlbumGroup? simplifiedAlbumObjectAlbumGroup) {
  return simplifiedAlbumObjectAlbumGroup?.value;
}

enums.SimplifiedAlbumObjectAlbumGroup simplifiedAlbumObjectAlbumGroupFromJson(
  Object? simplifiedAlbumObjectAlbumGroup, [
  enums.SimplifiedAlbumObjectAlbumGroup? defaultValue,
]) {
  return enums.SimplifiedAlbumObjectAlbumGroup.values.firstWhereOrNull(
          (e) => e.value == simplifiedAlbumObjectAlbumGroup) ??
      defaultValue ??
      enums.SimplifiedAlbumObjectAlbumGroup.swaggerGeneratedUnknown;
}

List<String> simplifiedAlbumObjectAlbumGroupListToJson(
    List<enums.SimplifiedAlbumObjectAlbumGroup>?
        simplifiedAlbumObjectAlbumGroup) {
  if (simplifiedAlbumObjectAlbumGroup == null) {
    return [];
  }

  return simplifiedAlbumObjectAlbumGroup.map((e) => e.value!).toList();
}

List<enums.SimplifiedAlbumObjectAlbumGroup>
    simplifiedAlbumObjectAlbumGroupListFromJson(
  List? simplifiedAlbumObjectAlbumGroup, [
  List<enums.SimplifiedAlbumObjectAlbumGroup>? defaultValue,
]) {
  if (simplifiedAlbumObjectAlbumGroup == null) {
    return defaultValue ?? [];
  }

  return simplifiedAlbumObjectAlbumGroup
      .map((e) => simplifiedAlbumObjectAlbumGroupFromJson(e.toString()))
      .toList();
}

List<enums.SimplifiedAlbumObjectAlbumGroup>?
    simplifiedAlbumObjectAlbumGroupNullableListFromJson(
  List? simplifiedAlbumObjectAlbumGroup, [
  List<enums.SimplifiedAlbumObjectAlbumGroup>? defaultValue,
]) {
  if (simplifiedAlbumObjectAlbumGroup == null) {
    return defaultValue;
  }

  return simplifiedAlbumObjectAlbumGroup
      .map((e) => simplifiedAlbumObjectAlbumGroupFromJson(e.toString()))
      .toList();
}

String? simplifiedAlbumObjectAlbumTypeToJson(
    enums.SimplifiedAlbumObjectAlbumType? simplifiedAlbumObjectAlbumType) {
  return simplifiedAlbumObjectAlbumType?.value;
}

enums.SimplifiedAlbumObjectAlbumType simplifiedAlbumObjectAlbumTypeFromJson(
  Object? simplifiedAlbumObjectAlbumType, [
  enums.SimplifiedAlbumObjectAlbumType? defaultValue,
]) {
  return enums.SimplifiedAlbumObjectAlbumType.values
          .firstWhereOrNull((e) => e.value == simplifiedAlbumObjectAlbumType) ??
      defaultValue ??
      enums.SimplifiedAlbumObjectAlbumType.swaggerGeneratedUnknown;
}

List<String> simplifiedAlbumObjectAlbumTypeListToJson(
    List<enums.SimplifiedAlbumObjectAlbumType>?
        simplifiedAlbumObjectAlbumType) {
  if (simplifiedAlbumObjectAlbumType == null) {
    return [];
  }

  return simplifiedAlbumObjectAlbumType.map((e) => e.value!).toList();
}

List<enums.SimplifiedAlbumObjectAlbumType>
    simplifiedAlbumObjectAlbumTypeListFromJson(
  List? simplifiedAlbumObjectAlbumType, [
  List<enums.SimplifiedAlbumObjectAlbumType>? defaultValue,
]) {
  if (simplifiedAlbumObjectAlbumType == null) {
    return defaultValue ?? [];
  }

  return simplifiedAlbumObjectAlbumType
      .map((e) => simplifiedAlbumObjectAlbumTypeFromJson(e.toString()))
      .toList();
}

List<enums.SimplifiedAlbumObjectAlbumType>?
    simplifiedAlbumObjectAlbumTypeNullableListFromJson(
  List? simplifiedAlbumObjectAlbumType, [
  List<enums.SimplifiedAlbumObjectAlbumType>? defaultValue,
]) {
  if (simplifiedAlbumObjectAlbumType == null) {
    return defaultValue;
  }

  return simplifiedAlbumObjectAlbumType
      .map((e) => simplifiedAlbumObjectAlbumTypeFromJson(e.toString()))
      .toList();
}

String? simplifiedAlbumObjectReleaseDatePrecisionToJson(
    enums.SimplifiedAlbumObjectReleaseDatePrecision?
        simplifiedAlbumObjectReleaseDatePrecision) {
  return simplifiedAlbumObjectReleaseDatePrecision?.value;
}

enums.SimplifiedAlbumObjectReleaseDatePrecision
    simplifiedAlbumObjectReleaseDatePrecisionFromJson(
  Object? simplifiedAlbumObjectReleaseDatePrecision, [
  enums.SimplifiedAlbumObjectReleaseDatePrecision? defaultValue,
]) {
  return enums.SimplifiedAlbumObjectReleaseDatePrecision.values
          .firstWhereOrNull(
              (e) => e.value == simplifiedAlbumObjectReleaseDatePrecision) ??
      defaultValue ??
      enums.SimplifiedAlbumObjectReleaseDatePrecision.swaggerGeneratedUnknown;
}

List<String> simplifiedAlbumObjectReleaseDatePrecisionListToJson(
    List<enums.SimplifiedAlbumObjectReleaseDatePrecision>?
        simplifiedAlbumObjectReleaseDatePrecision) {
  if (simplifiedAlbumObjectReleaseDatePrecision == null) {
    return [];
  }

  return simplifiedAlbumObjectReleaseDatePrecision
      .map((e) => e.value!)
      .toList();
}

List<enums.SimplifiedAlbumObjectReleaseDatePrecision>
    simplifiedAlbumObjectReleaseDatePrecisionListFromJson(
  List? simplifiedAlbumObjectReleaseDatePrecision, [
  List<enums.SimplifiedAlbumObjectReleaseDatePrecision>? defaultValue,
]) {
  if (simplifiedAlbumObjectReleaseDatePrecision == null) {
    return defaultValue ?? [];
  }

  return simplifiedAlbumObjectReleaseDatePrecision
      .map((e) =>
          simplifiedAlbumObjectReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

List<enums.SimplifiedAlbumObjectReleaseDatePrecision>?
    simplifiedAlbumObjectReleaseDatePrecisionNullableListFromJson(
  List? simplifiedAlbumObjectReleaseDatePrecision, [
  List<enums.SimplifiedAlbumObjectReleaseDatePrecision>? defaultValue,
]) {
  if (simplifiedAlbumObjectReleaseDatePrecision == null) {
    return defaultValue;
  }

  return simplifiedAlbumObjectReleaseDatePrecision
      .map((e) =>
          simplifiedAlbumObjectReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

String? simplifiedAlbumObjectTypeToJson(
    enums.SimplifiedAlbumObjectType? simplifiedAlbumObjectType) {
  return simplifiedAlbumObjectType?.value;
}

enums.SimplifiedAlbumObjectType simplifiedAlbumObjectTypeFromJson(
  Object? simplifiedAlbumObjectType, [
  enums.SimplifiedAlbumObjectType? defaultValue,
]) {
  return enums.SimplifiedAlbumObjectType.values
          .firstWhereOrNull((e) => e.value == simplifiedAlbumObjectType) ??
      defaultValue ??
      enums.SimplifiedAlbumObjectType.swaggerGeneratedUnknown;
}

List<String> simplifiedAlbumObjectTypeListToJson(
    List<enums.SimplifiedAlbumObjectType>? simplifiedAlbumObjectType) {
  if (simplifiedAlbumObjectType == null) {
    return [];
  }

  return simplifiedAlbumObjectType.map((e) => e.value!).toList();
}

List<enums.SimplifiedAlbumObjectType> simplifiedAlbumObjectTypeListFromJson(
  List? simplifiedAlbumObjectType, [
  List<enums.SimplifiedAlbumObjectType>? defaultValue,
]) {
  if (simplifiedAlbumObjectType == null) {
    return defaultValue ?? [];
  }

  return simplifiedAlbumObjectType
      .map((e) => simplifiedAlbumObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.SimplifiedAlbumObjectType>?
    simplifiedAlbumObjectTypeNullableListFromJson(
  List? simplifiedAlbumObjectType, [
  List<enums.SimplifiedAlbumObjectType>? defaultValue,
]) {
  if (simplifiedAlbumObjectType == null) {
    return defaultValue;
  }

  return simplifiedAlbumObjectType
      .map((e) => simplifiedAlbumObjectTypeFromJson(e.toString()))
      .toList();
}

String? chapterObjectReleaseDatePrecisionToJson(
    enums.ChapterObjectReleaseDatePrecision?
        chapterObjectReleaseDatePrecision) {
  return chapterObjectReleaseDatePrecision?.value;
}

enums.ChapterObjectReleaseDatePrecision
    chapterObjectReleaseDatePrecisionFromJson(
  Object? chapterObjectReleaseDatePrecision, [
  enums.ChapterObjectReleaseDatePrecision? defaultValue,
]) {
  return enums.ChapterObjectReleaseDatePrecision.values.firstWhereOrNull(
          (e) => e.value == chapterObjectReleaseDatePrecision) ??
      defaultValue ??
      enums.ChapterObjectReleaseDatePrecision.swaggerGeneratedUnknown;
}

List<String> chapterObjectReleaseDatePrecisionListToJson(
    List<enums.ChapterObjectReleaseDatePrecision>?
        chapterObjectReleaseDatePrecision) {
  if (chapterObjectReleaseDatePrecision == null) {
    return [];
  }

  return chapterObjectReleaseDatePrecision.map((e) => e.value!).toList();
}

List<enums.ChapterObjectReleaseDatePrecision>
    chapterObjectReleaseDatePrecisionListFromJson(
  List? chapterObjectReleaseDatePrecision, [
  List<enums.ChapterObjectReleaseDatePrecision>? defaultValue,
]) {
  if (chapterObjectReleaseDatePrecision == null) {
    return defaultValue ?? [];
  }

  return chapterObjectReleaseDatePrecision
      .map((e) => chapterObjectReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

List<enums.ChapterObjectReleaseDatePrecision>?
    chapterObjectReleaseDatePrecisionNullableListFromJson(
  List? chapterObjectReleaseDatePrecision, [
  List<enums.ChapterObjectReleaseDatePrecision>? defaultValue,
]) {
  if (chapterObjectReleaseDatePrecision == null) {
    return defaultValue;
  }

  return chapterObjectReleaseDatePrecision
      .map((e) => chapterObjectReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

String? chapterObjectTypeToJson(enums.ChapterObjectType? chapterObjectType) {
  return chapterObjectType?.value;
}

enums.ChapterObjectType chapterObjectTypeFromJson(
  Object? chapterObjectType, [
  enums.ChapterObjectType? defaultValue,
]) {
  return enums.ChapterObjectType.values
          .firstWhereOrNull((e) => e.value == chapterObjectType) ??
      defaultValue ??
      enums.ChapterObjectType.swaggerGeneratedUnknown;
}

List<String> chapterObjectTypeListToJson(
    List<enums.ChapterObjectType>? chapterObjectType) {
  if (chapterObjectType == null) {
    return [];
  }

  return chapterObjectType.map((e) => e.value!).toList();
}

List<enums.ChapterObjectType> chapterObjectTypeListFromJson(
  List? chapterObjectType, [
  List<enums.ChapterObjectType>? defaultValue,
]) {
  if (chapterObjectType == null) {
    return defaultValue ?? [];
  }

  return chapterObjectType
      .map((e) => chapterObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.ChapterObjectType>? chapterObjectTypeNullableListFromJson(
  List? chapterObjectType, [
  List<enums.ChapterObjectType>? defaultValue,
]) {
  if (chapterObjectType == null) {
    return defaultValue;
  }

  return chapterObjectType
      .map((e) => chapterObjectTypeFromJson(e.toString()))
      .toList();
}

String? simplifiedChapterObjectReleaseDatePrecisionToJson(
    enums.SimplifiedChapterObjectReleaseDatePrecision?
        simplifiedChapterObjectReleaseDatePrecision) {
  return simplifiedChapterObjectReleaseDatePrecision?.value;
}

enums.SimplifiedChapterObjectReleaseDatePrecision
    simplifiedChapterObjectReleaseDatePrecisionFromJson(
  Object? simplifiedChapterObjectReleaseDatePrecision, [
  enums.SimplifiedChapterObjectReleaseDatePrecision? defaultValue,
]) {
  return enums.SimplifiedChapterObjectReleaseDatePrecision.values
          .firstWhereOrNull(
              (e) => e.value == simplifiedChapterObjectReleaseDatePrecision) ??
      defaultValue ??
      enums.SimplifiedChapterObjectReleaseDatePrecision.swaggerGeneratedUnknown;
}

List<String> simplifiedChapterObjectReleaseDatePrecisionListToJson(
    List<enums.SimplifiedChapterObjectReleaseDatePrecision>?
        simplifiedChapterObjectReleaseDatePrecision) {
  if (simplifiedChapterObjectReleaseDatePrecision == null) {
    return [];
  }

  return simplifiedChapterObjectReleaseDatePrecision
      .map((e) => e.value!)
      .toList();
}

List<enums.SimplifiedChapterObjectReleaseDatePrecision>
    simplifiedChapterObjectReleaseDatePrecisionListFromJson(
  List? simplifiedChapterObjectReleaseDatePrecision, [
  List<enums.SimplifiedChapterObjectReleaseDatePrecision>? defaultValue,
]) {
  if (simplifiedChapterObjectReleaseDatePrecision == null) {
    return defaultValue ?? [];
  }

  return simplifiedChapterObjectReleaseDatePrecision
      .map((e) =>
          simplifiedChapterObjectReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

List<enums.SimplifiedChapterObjectReleaseDatePrecision>?
    simplifiedChapterObjectReleaseDatePrecisionNullableListFromJson(
  List? simplifiedChapterObjectReleaseDatePrecision, [
  List<enums.SimplifiedChapterObjectReleaseDatePrecision>? defaultValue,
]) {
  if (simplifiedChapterObjectReleaseDatePrecision == null) {
    return defaultValue;
  }

  return simplifiedChapterObjectReleaseDatePrecision
      .map((e) =>
          simplifiedChapterObjectReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

String? simplifiedChapterObjectTypeToJson(
    enums.SimplifiedChapterObjectType? simplifiedChapterObjectType) {
  return simplifiedChapterObjectType?.value;
}

enums.SimplifiedChapterObjectType simplifiedChapterObjectTypeFromJson(
  Object? simplifiedChapterObjectType, [
  enums.SimplifiedChapterObjectType? defaultValue,
]) {
  return enums.SimplifiedChapterObjectType.values
          .firstWhereOrNull((e) => e.value == simplifiedChapterObjectType) ??
      defaultValue ??
      enums.SimplifiedChapterObjectType.swaggerGeneratedUnknown;
}

List<String> simplifiedChapterObjectTypeListToJson(
    List<enums.SimplifiedChapterObjectType>? simplifiedChapterObjectType) {
  if (simplifiedChapterObjectType == null) {
    return [];
  }

  return simplifiedChapterObjectType.map((e) => e.value!).toList();
}

List<enums.SimplifiedChapterObjectType> simplifiedChapterObjectTypeListFromJson(
  List? simplifiedChapterObjectType, [
  List<enums.SimplifiedChapterObjectType>? defaultValue,
]) {
  if (simplifiedChapterObjectType == null) {
    return defaultValue ?? [];
  }

  return simplifiedChapterObjectType
      .map((e) => simplifiedChapterObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.SimplifiedChapterObjectType>?
    simplifiedChapterObjectTypeNullableListFromJson(
  List? simplifiedChapterObjectType, [
  List<enums.SimplifiedChapterObjectType>? defaultValue,
]) {
  if (simplifiedChapterObjectType == null) {
    return defaultValue;
  }

  return simplifiedChapterObjectType
      .map((e) => simplifiedChapterObjectTypeFromJson(e.toString()))
      .toList();
}

String? chapterBaseReleaseDatePrecisionToJson(
    enums.ChapterBaseReleaseDatePrecision? chapterBaseReleaseDatePrecision) {
  return chapterBaseReleaseDatePrecision?.value;
}

enums.ChapterBaseReleaseDatePrecision chapterBaseReleaseDatePrecisionFromJson(
  Object? chapterBaseReleaseDatePrecision, [
  enums.ChapterBaseReleaseDatePrecision? defaultValue,
]) {
  return enums.ChapterBaseReleaseDatePrecision.values.firstWhereOrNull(
          (e) => e.value == chapterBaseReleaseDatePrecision) ??
      defaultValue ??
      enums.ChapterBaseReleaseDatePrecision.swaggerGeneratedUnknown;
}

List<String> chapterBaseReleaseDatePrecisionListToJson(
    List<enums.ChapterBaseReleaseDatePrecision>?
        chapterBaseReleaseDatePrecision) {
  if (chapterBaseReleaseDatePrecision == null) {
    return [];
  }

  return chapterBaseReleaseDatePrecision.map((e) => e.value!).toList();
}

List<enums.ChapterBaseReleaseDatePrecision>
    chapterBaseReleaseDatePrecisionListFromJson(
  List? chapterBaseReleaseDatePrecision, [
  List<enums.ChapterBaseReleaseDatePrecision>? defaultValue,
]) {
  if (chapterBaseReleaseDatePrecision == null) {
    return defaultValue ?? [];
  }

  return chapterBaseReleaseDatePrecision
      .map((e) => chapterBaseReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

List<enums.ChapterBaseReleaseDatePrecision>?
    chapterBaseReleaseDatePrecisionNullableListFromJson(
  List? chapterBaseReleaseDatePrecision, [
  List<enums.ChapterBaseReleaseDatePrecision>? defaultValue,
]) {
  if (chapterBaseReleaseDatePrecision == null) {
    return defaultValue;
  }

  return chapterBaseReleaseDatePrecision
      .map((e) => chapterBaseReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

String? chapterBaseTypeToJson(enums.ChapterBaseType? chapterBaseType) {
  return chapterBaseType?.value;
}

enums.ChapterBaseType chapterBaseTypeFromJson(
  Object? chapterBaseType, [
  enums.ChapterBaseType? defaultValue,
]) {
  return enums.ChapterBaseType.values
          .firstWhereOrNull((e) => e.value == chapterBaseType) ??
      defaultValue ??
      enums.ChapterBaseType.swaggerGeneratedUnknown;
}

List<String> chapterBaseTypeListToJson(
    List<enums.ChapterBaseType>? chapterBaseType) {
  if (chapterBaseType == null) {
    return [];
  }

  return chapterBaseType.map((e) => e.value!).toList();
}

List<enums.ChapterBaseType> chapterBaseTypeListFromJson(
  List? chapterBaseType, [
  List<enums.ChapterBaseType>? defaultValue,
]) {
  if (chapterBaseType == null) {
    return defaultValue ?? [];
  }

  return chapterBaseType
      .map((e) => chapterBaseTypeFromJson(e.toString()))
      .toList();
}

List<enums.ChapterBaseType>? chapterBaseTypeNullableListFromJson(
  List? chapterBaseType, [
  List<enums.ChapterBaseType>? defaultValue,
]) {
  if (chapterBaseType == null) {
    return defaultValue;
  }

  return chapterBaseType
      .map((e) => chapterBaseTypeFromJson(e.toString()))
      .toList();
}

String? albumObjectAlbumTypeToJson(
    enums.AlbumObjectAlbumType? albumObjectAlbumType) {
  return albumObjectAlbumType?.value;
}

enums.AlbumObjectAlbumType albumObjectAlbumTypeFromJson(
  Object? albumObjectAlbumType, [
  enums.AlbumObjectAlbumType? defaultValue,
]) {
  return enums.AlbumObjectAlbumType.values
          .firstWhereOrNull((e) => e.value == albumObjectAlbumType) ??
      defaultValue ??
      enums.AlbumObjectAlbumType.swaggerGeneratedUnknown;
}

List<String> albumObjectAlbumTypeListToJson(
    List<enums.AlbumObjectAlbumType>? albumObjectAlbumType) {
  if (albumObjectAlbumType == null) {
    return [];
  }

  return albumObjectAlbumType.map((e) => e.value!).toList();
}

List<enums.AlbumObjectAlbumType> albumObjectAlbumTypeListFromJson(
  List? albumObjectAlbumType, [
  List<enums.AlbumObjectAlbumType>? defaultValue,
]) {
  if (albumObjectAlbumType == null) {
    return defaultValue ?? [];
  }

  return albumObjectAlbumType
      .map((e) => albumObjectAlbumTypeFromJson(e.toString()))
      .toList();
}

List<enums.AlbumObjectAlbumType>? albumObjectAlbumTypeNullableListFromJson(
  List? albumObjectAlbumType, [
  List<enums.AlbumObjectAlbumType>? defaultValue,
]) {
  if (albumObjectAlbumType == null) {
    return defaultValue;
  }

  return albumObjectAlbumType
      .map((e) => albumObjectAlbumTypeFromJson(e.toString()))
      .toList();
}

String? albumObjectReleaseDatePrecisionToJson(
    enums.AlbumObjectReleaseDatePrecision? albumObjectReleaseDatePrecision) {
  return albumObjectReleaseDatePrecision?.value;
}

enums.AlbumObjectReleaseDatePrecision albumObjectReleaseDatePrecisionFromJson(
  Object? albumObjectReleaseDatePrecision, [
  enums.AlbumObjectReleaseDatePrecision? defaultValue,
]) {
  return enums.AlbumObjectReleaseDatePrecision.values.firstWhereOrNull(
          (e) => e.value == albumObjectReleaseDatePrecision) ??
      defaultValue ??
      enums.AlbumObjectReleaseDatePrecision.swaggerGeneratedUnknown;
}

List<String> albumObjectReleaseDatePrecisionListToJson(
    List<enums.AlbumObjectReleaseDatePrecision>?
        albumObjectReleaseDatePrecision) {
  if (albumObjectReleaseDatePrecision == null) {
    return [];
  }

  return albumObjectReleaseDatePrecision.map((e) => e.value!).toList();
}

List<enums.AlbumObjectReleaseDatePrecision>
    albumObjectReleaseDatePrecisionListFromJson(
  List? albumObjectReleaseDatePrecision, [
  List<enums.AlbumObjectReleaseDatePrecision>? defaultValue,
]) {
  if (albumObjectReleaseDatePrecision == null) {
    return defaultValue ?? [];
  }

  return albumObjectReleaseDatePrecision
      .map((e) => albumObjectReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

List<enums.AlbumObjectReleaseDatePrecision>?
    albumObjectReleaseDatePrecisionNullableListFromJson(
  List? albumObjectReleaseDatePrecision, [
  List<enums.AlbumObjectReleaseDatePrecision>? defaultValue,
]) {
  if (albumObjectReleaseDatePrecision == null) {
    return defaultValue;
  }

  return albumObjectReleaseDatePrecision
      .map((e) => albumObjectReleaseDatePrecisionFromJson(e.toString()))
      .toList();
}

String? albumObjectTypeToJson(enums.AlbumObjectType? albumObjectType) {
  return albumObjectType?.value;
}

enums.AlbumObjectType albumObjectTypeFromJson(
  Object? albumObjectType, [
  enums.AlbumObjectType? defaultValue,
]) {
  return enums.AlbumObjectType.values
          .firstWhereOrNull((e) => e.value == albumObjectType) ??
      defaultValue ??
      enums.AlbumObjectType.swaggerGeneratedUnknown;
}

List<String> albumObjectTypeListToJson(
    List<enums.AlbumObjectType>? albumObjectType) {
  if (albumObjectType == null) {
    return [];
  }

  return albumObjectType.map((e) => e.value!).toList();
}

List<enums.AlbumObjectType> albumObjectTypeListFromJson(
  List? albumObjectType, [
  List<enums.AlbumObjectType>? defaultValue,
]) {
  if (albumObjectType == null) {
    return defaultValue ?? [];
  }

  return albumObjectType
      .map((e) => albumObjectTypeFromJson(e.toString()))
      .toList();
}

List<enums.AlbumObjectType>? albumObjectTypeNullableListFromJson(
  List? albumObjectType, [
  List<enums.AlbumObjectType>? defaultValue,
]) {
  if (albumObjectType == null) {
    return defaultValue;
  }

  return albumObjectType
      .map((e) => albumObjectTypeFromJson(e.toString()))
      .toList();
}

String? searchGetIncludeExternalToJson(
    enums.SearchGetIncludeExternal? searchGetIncludeExternal) {
  return searchGetIncludeExternal?.value;
}

enums.SearchGetIncludeExternal searchGetIncludeExternalFromJson(
  Object? searchGetIncludeExternal, [
  enums.SearchGetIncludeExternal? defaultValue,
]) {
  return enums.SearchGetIncludeExternal.values
          .firstWhereOrNull((e) => e.value == searchGetIncludeExternal) ??
      defaultValue ??
      enums.SearchGetIncludeExternal.swaggerGeneratedUnknown;
}

List<String> searchGetIncludeExternalListToJson(
    List<enums.SearchGetIncludeExternal>? searchGetIncludeExternal) {
  if (searchGetIncludeExternal == null) {
    return [];
  }

  return searchGetIncludeExternal.map((e) => e.value!).toList();
}

List<enums.SearchGetIncludeExternal> searchGetIncludeExternalListFromJson(
  List? searchGetIncludeExternal, [
  List<enums.SearchGetIncludeExternal>? defaultValue,
]) {
  if (searchGetIncludeExternal == null) {
    return defaultValue ?? [];
  }

  return searchGetIncludeExternal
      .map((e) => searchGetIncludeExternalFromJson(e.toString()))
      .toList();
}

List<enums.SearchGetIncludeExternal>?
    searchGetIncludeExternalNullableListFromJson(
  List? searchGetIncludeExternal, [
  List<enums.SearchGetIncludeExternal>? defaultValue,
]) {
  if (searchGetIncludeExternal == null) {
    return defaultValue;
  }

  return searchGetIncludeExternal
      .map((e) => searchGetIncludeExternalFromJson(e.toString()))
      .toList();
}

String? meFollowingGetTypeToJson(enums.MeFollowingGetType? meFollowingGetType) {
  return meFollowingGetType?.value;
}

enums.MeFollowingGetType meFollowingGetTypeFromJson(
  Object? meFollowingGetType, [
  enums.MeFollowingGetType? defaultValue,
]) {
  return enums.MeFollowingGetType.values
          .firstWhereOrNull((e) => e.value == meFollowingGetType) ??
      defaultValue ??
      enums.MeFollowingGetType.swaggerGeneratedUnknown;
}

List<String> meFollowingGetTypeListToJson(
    List<enums.MeFollowingGetType>? meFollowingGetType) {
  if (meFollowingGetType == null) {
    return [];
  }

  return meFollowingGetType.map((e) => e.value!).toList();
}

List<enums.MeFollowingGetType> meFollowingGetTypeListFromJson(
  List? meFollowingGetType, [
  List<enums.MeFollowingGetType>? defaultValue,
]) {
  if (meFollowingGetType == null) {
    return defaultValue ?? [];
  }

  return meFollowingGetType
      .map((e) => meFollowingGetTypeFromJson(e.toString()))
      .toList();
}

List<enums.MeFollowingGetType>? meFollowingGetTypeNullableListFromJson(
  List? meFollowingGetType, [
  List<enums.MeFollowingGetType>? defaultValue,
]) {
  if (meFollowingGetType == null) {
    return defaultValue;
  }

  return meFollowingGetType
      .map((e) => meFollowingGetTypeFromJson(e.toString()))
      .toList();
}

String? meFollowingPutTypeToJson(enums.MeFollowingPutType? meFollowingPutType) {
  return meFollowingPutType?.value;
}

enums.MeFollowingPutType meFollowingPutTypeFromJson(
  Object? meFollowingPutType, [
  enums.MeFollowingPutType? defaultValue,
]) {
  return enums.MeFollowingPutType.values
          .firstWhereOrNull((e) => e.value == meFollowingPutType) ??
      defaultValue ??
      enums.MeFollowingPutType.swaggerGeneratedUnknown;
}

List<String> meFollowingPutTypeListToJson(
    List<enums.MeFollowingPutType>? meFollowingPutType) {
  if (meFollowingPutType == null) {
    return [];
  }

  return meFollowingPutType.map((e) => e.value!).toList();
}

List<enums.MeFollowingPutType> meFollowingPutTypeListFromJson(
  List? meFollowingPutType, [
  List<enums.MeFollowingPutType>? defaultValue,
]) {
  if (meFollowingPutType == null) {
    return defaultValue ?? [];
  }

  return meFollowingPutType
      .map((e) => meFollowingPutTypeFromJson(e.toString()))
      .toList();
}

List<enums.MeFollowingPutType>? meFollowingPutTypeNullableListFromJson(
  List? meFollowingPutType, [
  List<enums.MeFollowingPutType>? defaultValue,
]) {
  if (meFollowingPutType == null) {
    return defaultValue;
  }

  return meFollowingPutType
      .map((e) => meFollowingPutTypeFromJson(e.toString()))
      .toList();
}

String? meFollowingDeleteTypeToJson(
    enums.MeFollowingDeleteType? meFollowingDeleteType) {
  return meFollowingDeleteType?.value;
}

enums.MeFollowingDeleteType meFollowingDeleteTypeFromJson(
  Object? meFollowingDeleteType, [
  enums.MeFollowingDeleteType? defaultValue,
]) {
  return enums.MeFollowingDeleteType.values
          .firstWhereOrNull((e) => e.value == meFollowingDeleteType) ??
      defaultValue ??
      enums.MeFollowingDeleteType.swaggerGeneratedUnknown;
}

List<String> meFollowingDeleteTypeListToJson(
    List<enums.MeFollowingDeleteType>? meFollowingDeleteType) {
  if (meFollowingDeleteType == null) {
    return [];
  }

  return meFollowingDeleteType.map((e) => e.value!).toList();
}

List<enums.MeFollowingDeleteType> meFollowingDeleteTypeListFromJson(
  List? meFollowingDeleteType, [
  List<enums.MeFollowingDeleteType>? defaultValue,
]) {
  if (meFollowingDeleteType == null) {
    return defaultValue ?? [];
  }

  return meFollowingDeleteType
      .map((e) => meFollowingDeleteTypeFromJson(e.toString()))
      .toList();
}

List<enums.MeFollowingDeleteType>? meFollowingDeleteTypeNullableListFromJson(
  List? meFollowingDeleteType, [
  List<enums.MeFollowingDeleteType>? defaultValue,
]) {
  if (meFollowingDeleteType == null) {
    return defaultValue;
  }

  return meFollowingDeleteType
      .map((e) => meFollowingDeleteTypeFromJson(e.toString()))
      .toList();
}

String? meFollowingContainsGetTypeToJson(
    enums.MeFollowingContainsGetType? meFollowingContainsGetType) {
  return meFollowingContainsGetType?.value;
}

enums.MeFollowingContainsGetType meFollowingContainsGetTypeFromJson(
  Object? meFollowingContainsGetType, [
  enums.MeFollowingContainsGetType? defaultValue,
]) {
  return enums.MeFollowingContainsGetType.values
          .firstWhereOrNull((e) => e.value == meFollowingContainsGetType) ??
      defaultValue ??
      enums.MeFollowingContainsGetType.swaggerGeneratedUnknown;
}

List<String> meFollowingContainsGetTypeListToJson(
    List<enums.MeFollowingContainsGetType>? meFollowingContainsGetType) {
  if (meFollowingContainsGetType == null) {
    return [];
  }

  return meFollowingContainsGetType.map((e) => e.value!).toList();
}

List<enums.MeFollowingContainsGetType> meFollowingContainsGetTypeListFromJson(
  List? meFollowingContainsGetType, [
  List<enums.MeFollowingContainsGetType>? defaultValue,
]) {
  if (meFollowingContainsGetType == null) {
    return defaultValue ?? [];
  }

  return meFollowingContainsGetType
      .map((e) => meFollowingContainsGetTypeFromJson(e.toString()))
      .toList();
}

List<enums.MeFollowingContainsGetType>?
    meFollowingContainsGetTypeNullableListFromJson(
  List? meFollowingContainsGetType, [
  List<enums.MeFollowingContainsGetType>? defaultValue,
]) {
  if (meFollowingContainsGetType == null) {
    return defaultValue;
  }

  return meFollowingContainsGetType
      .map((e) => meFollowingContainsGetTypeFromJson(e.toString()))
      .toList();
}

@JsonSerializable(explicitToJson: true)
class Unauthorized {
  Unauthorized({
    required this.error,
  });

  factory Unauthorized.fromJson(Map<String, dynamic> json) =>
      _$UnauthorizedFromJson(json);

  static const toJsonFactory = _$UnauthorizedToJson;
  Map<String, dynamic> toJson() => _$UnauthorizedToJson(this);

  @JsonKey(name: 'error')
  final ErrorObject error;
  static const fromJsonFactory = _$UnauthorizedFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Unauthorized &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(error) ^ runtimeType.hashCode;
}

extension $UnauthorizedExtension on Unauthorized {
  Unauthorized copyWith({ErrorObject? error}) {
    return Unauthorized(error: error ?? this.error);
  }

  Unauthorized copyWithWrapped({Wrapped<ErrorObject>? error}) {
    return Unauthorized(error: (error != null ? error.value : this.error));
  }
}

@JsonSerializable(explicitToJson: true)
class Forbidden {
  Forbidden({
    required this.error,
  });

  factory Forbidden.fromJson(Map<String, dynamic> json) =>
      _$ForbiddenFromJson(json);

  static const toJsonFactory = _$ForbiddenToJson;
  Map<String, dynamic> toJson() => _$ForbiddenToJson(this);

  @JsonKey(name: 'error')
  final ErrorObject error;
  static const fromJsonFactory = _$ForbiddenFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Forbidden &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(error) ^ runtimeType.hashCode;
}

extension $ForbiddenExtension on Forbidden {
  Forbidden copyWith({ErrorObject? error}) {
    return Forbidden(error: error ?? this.error);
  }

  Forbidden copyWithWrapped({Wrapped<ErrorObject>? error}) {
    return Forbidden(error: (error != null ? error.value : this.error));
  }
}

@JsonSerializable(explicitToJson: true)
class NotFound {
  NotFound({
    required this.error,
  });

  factory NotFound.fromJson(Map<String, dynamic> json) =>
      _$NotFoundFromJson(json);

  static const toJsonFactory = _$NotFoundToJson;
  Map<String, dynamic> toJson() => _$NotFoundToJson(this);

  @JsonKey(name: 'error')
  final ErrorObject error;
  static const fromJsonFactory = _$NotFoundFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotFound &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(error) ^ runtimeType.hashCode;
}

extension $NotFoundExtension on NotFound {
  NotFound copyWith({ErrorObject? error}) {
    return NotFound(error: error ?? this.error);
  }

  NotFound copyWithWrapped({Wrapped<ErrorObject>? error}) {
    return NotFound(error: (error != null ? error.value : this.error));
  }
}

@JsonSerializable(explicitToJson: true)
class BadRequest {
  BadRequest({
    required this.error,
  });

  factory BadRequest.fromJson(Map<String, dynamic> json) =>
      _$BadRequestFromJson(json);

  static const toJsonFactory = _$BadRequestToJson;
  Map<String, dynamic> toJson() => _$BadRequestToJson(this);

  @JsonKey(name: 'error')
  final ErrorObject error;
  static const fromJsonFactory = _$BadRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BadRequest &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(error) ^ runtimeType.hashCode;
}

extension $BadRequestExtension on BadRequest {
  BadRequest copyWith({ErrorObject? error}) {
    return BadRequest(error: error ?? this.error);
  }

  BadRequest copyWithWrapped({Wrapped<ErrorObject>? error}) {
    return BadRequest(error: (error != null ? error.value : this.error));
  }
}

@JsonSerializable(explicitToJson: true)
class TooManyRequests {
  TooManyRequests({
    required this.error,
  });

  factory TooManyRequests.fromJson(Map<String, dynamic> json) =>
      _$TooManyRequestsFromJson(json);

  static const toJsonFactory = _$TooManyRequestsToJson;
  Map<String, dynamic> toJson() => _$TooManyRequestsToJson(this);

  @JsonKey(name: 'error')
  final ErrorObject error;
  static const fromJsonFactory = _$TooManyRequestsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TooManyRequests &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(error) ^ runtimeType.hashCode;
}

extension $TooManyRequestsExtension on TooManyRequests {
  TooManyRequests copyWith({ErrorObject? error}) {
    return TooManyRequests(error: error ?? this.error);
  }

  TooManyRequests copyWithWrapped({Wrapped<ErrorObject>? error}) {
    return TooManyRequests(error: (error != null ? error.value : this.error));
  }
}

@JsonSerializable(explicitToJson: true)
class ManyAlbums {
  ManyAlbums({
    required this.albums,
  });

  factory ManyAlbums.fromJson(Map<String, dynamic> json) =>
      _$ManyAlbumsFromJson(json);

  static const toJsonFactory = _$ManyAlbumsToJson;
  Map<String, dynamic> toJson() => _$ManyAlbumsToJson(this);

  @JsonKey(name: 'albums', defaultValue: <AlbumObject>[])
  final List<AlbumObject> albums;
  static const fromJsonFactory = _$ManyAlbumsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ManyAlbums &&
            (identical(other.albums, albums) ||
                const DeepCollectionEquality().equals(other.albums, albums)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(albums) ^ runtimeType.hashCode;
}

extension $ManyAlbumsExtension on ManyAlbums {
  ManyAlbums copyWith({List<AlbumObject>? albums}) {
    return ManyAlbums(albums: albums ?? this.albums);
  }

  ManyAlbums copyWithWrapped({Wrapped<List<AlbumObject>>? albums}) {
    return ManyAlbums(albums: (albums != null ? albums.value : this.albums));
  }
}

@JsonSerializable(explicitToJson: true)
class ManyAudiobooks {
  ManyAudiobooks({
    required this.audiobooks,
  });

  factory ManyAudiobooks.fromJson(Map<String, dynamic> json) =>
      _$ManyAudiobooksFromJson(json);

  static const toJsonFactory = _$ManyAudiobooksToJson;
  Map<String, dynamic> toJson() => _$ManyAudiobooksToJson(this);

  @JsonKey(name: 'audiobooks', defaultValue: <AudiobookObject>[])
  final List<AudiobookObject> audiobooks;
  static const fromJsonFactory = _$ManyAudiobooksFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ManyAudiobooks &&
            (identical(other.audiobooks, audiobooks) ||
                const DeepCollectionEquality()
                    .equals(other.audiobooks, audiobooks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(audiobooks) ^ runtimeType.hashCode;
}

extension $ManyAudiobooksExtension on ManyAudiobooks {
  ManyAudiobooks copyWith({List<AudiobookObject>? audiobooks}) {
    return ManyAudiobooks(audiobooks: audiobooks ?? this.audiobooks);
  }

  ManyAudiobooks copyWithWrapped({Wrapped<List<AudiobookObject>>? audiobooks}) {
    return ManyAudiobooks(
        audiobooks: (audiobooks != null ? audiobooks.value : this.audiobooks));
  }
}

@JsonSerializable(explicitToJson: true)
class ManyChapters {
  ManyChapters({
    required this.chapters,
  });

  factory ManyChapters.fromJson(Map<String, dynamic> json) =>
      _$ManyChaptersFromJson(json);

  static const toJsonFactory = _$ManyChaptersToJson;
  Map<String, dynamic> toJson() => _$ManyChaptersToJson(this);

  @JsonKey(name: 'chapters', defaultValue: <ChapterObject>[])
  final List<ChapterObject> chapters;
  static const fromJsonFactory = _$ManyChaptersFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ManyChapters &&
            (identical(other.chapters, chapters) ||
                const DeepCollectionEquality()
                    .equals(other.chapters, chapters)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chapters) ^ runtimeType.hashCode;
}

extension $ManyChaptersExtension on ManyChapters {
  ManyChapters copyWith({List<ChapterObject>? chapters}) {
    return ManyChapters(chapters: chapters ?? this.chapters);
  }

  ManyChapters copyWithWrapped({Wrapped<List<ChapterObject>>? chapters}) {
    return ManyChapters(
        chapters: (chapters != null ? chapters.value : this.chapters));
  }
}

@JsonSerializable(explicitToJson: true)
class PagedAlbums {
  PagedAlbums({
    required this.albums,
  });

  factory PagedAlbums.fromJson(Map<String, dynamic> json) =>
      _$PagedAlbumsFromJson(json);

  static const toJsonFactory = _$PagedAlbumsToJson;
  Map<String, dynamic> toJson() => _$PagedAlbumsToJson(this);

  @JsonKey(name: 'albums')
  final PagingSimplifiedAlbumObject albums;
  static const fromJsonFactory = _$PagedAlbumsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagedAlbums &&
            (identical(other.albums, albums) ||
                const DeepCollectionEquality().equals(other.albums, albums)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(albums) ^ runtimeType.hashCode;
}

extension $PagedAlbumsExtension on PagedAlbums {
  PagedAlbums copyWith({PagingSimplifiedAlbumObject? albums}) {
    return PagedAlbums(albums: albums ?? this.albums);
  }

  PagedAlbums copyWithWrapped({Wrapped<PagingSimplifiedAlbumObject>? albums}) {
    return PagedAlbums(albums: (albums != null ? albums.value : this.albums));
  }
}

@JsonSerializable(explicitToJson: true)
class PagedCategories {
  PagedCategories({
    required this.categories,
  });

  factory PagedCategories.fromJson(Map<String, dynamic> json) =>
      _$PagedCategoriesFromJson(json);

  static const toJsonFactory = _$PagedCategoriesToJson;
  Map<String, dynamic> toJson() => _$PagedCategoriesToJson(this);

  @JsonKey(name: 'categories')
  final dynamic categories;
  static const fromJsonFactory = _$PagedCategoriesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PagedCategories &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categories) ^ runtimeType.hashCode;
}

extension $PagedCategoriesExtension on PagedCategories {
  PagedCategories copyWith({dynamic categories}) {
    return PagedCategories(categories: categories ?? this.categories);
  }

  PagedCategories copyWithWrapped({Wrapped<dynamic>? categories}) {
    return PagedCategories(
        categories: (categories != null ? categories.value : this.categories));
  }
}

@JsonSerializable(explicitToJson: true)
class CursorPagedArtists {
  CursorPagedArtists({
    required this.artists,
  });

  factory CursorPagedArtists.fromJson(Map<String, dynamic> json) =>
      _$CursorPagedArtistsFromJson(json);

  static const toJsonFactory = _$CursorPagedArtistsToJson;
  Map<String, dynamic> toJson() => _$CursorPagedArtistsToJson(this);

  @JsonKey(name: 'artists')
  final CursorPagingSimplifiedArtistObject artists;
  static const fromJsonFactory = _$CursorPagedArtistsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CursorPagedArtists &&
            (identical(other.artists, artists) ||
                const DeepCollectionEquality().equals(other.artists, artists)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(artists) ^ runtimeType.hashCode;
}

extension $CursorPagedArtistsExtension on CursorPagedArtists {
  CursorPagedArtists copyWith({CursorPagingSimplifiedArtistObject? artists}) {
    return CursorPagedArtists(artists: artists ?? this.artists);
  }

  CursorPagedArtists copyWithWrapped(
      {Wrapped<CursorPagingSimplifiedArtistObject>? artists}) {
    return CursorPagedArtists(
        artists: (artists != null ? artists.value : this.artists));
  }
}

@JsonSerializable(explicitToJson: true)
class ManyArtists {
  ManyArtists({
    required this.artists,
  });

  factory ManyArtists.fromJson(Map<String, dynamic> json) =>
      _$ManyArtistsFromJson(json);

  static const toJsonFactory = _$ManyArtistsToJson;
  Map<String, dynamic> toJson() => _$ManyArtistsToJson(this);

  @JsonKey(name: 'artists', defaultValue: <ArtistObject>[])
  final List<ArtistObject> artists;
  static const fromJsonFactory = _$ManyArtistsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ManyArtists &&
            (identical(other.artists, artists) ||
                const DeepCollectionEquality().equals(other.artists, artists)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(artists) ^ runtimeType.hashCode;
}

extension $ManyArtistsExtension on ManyArtists {
  ManyArtists copyWith({List<ArtistObject>? artists}) {
    return ManyArtists(artists: artists ?? this.artists);
  }

  ManyArtists copyWithWrapped({Wrapped<List<ArtistObject>>? artists}) {
    return ManyArtists(
        artists: (artists != null ? artists.value : this.artists));
  }
}

@JsonSerializable(explicitToJson: true)
class ManyAudioFeatures {
  ManyAudioFeatures({
    required this.audioFeatures,
  });

  factory ManyAudioFeatures.fromJson(Map<String, dynamic> json) =>
      _$ManyAudioFeaturesFromJson(json);

  static const toJsonFactory = _$ManyAudioFeaturesToJson;
  Map<String, dynamic> toJson() => _$ManyAudioFeaturesToJson(this);

  @JsonKey(name: 'audio_features', defaultValue: <AudioFeaturesObject>[])
  final List<AudioFeaturesObject> audioFeatures;
  static const fromJsonFactory = _$ManyAudioFeaturesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ManyAudioFeatures &&
            (identical(other.audioFeatures, audioFeatures) ||
                const DeepCollectionEquality()
                    .equals(other.audioFeatures, audioFeatures)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(audioFeatures) ^ runtimeType.hashCode;
}

extension $ManyAudioFeaturesExtension on ManyAudioFeatures {
  ManyAudioFeatures copyWith({List<AudioFeaturesObject>? audioFeatures}) {
    return ManyAudioFeatures(
        audioFeatures: audioFeatures ?? this.audioFeatures);
  }

  ManyAudioFeatures copyWithWrapped(
      {Wrapped<List<AudioFeaturesObject>>? audioFeatures}) {
    return ManyAudioFeatures(
        audioFeatures:
            (audioFeatures != null ? audioFeatures.value : this.audioFeatures));
  }
}

@JsonSerializable(explicitToJson: true)
class ManyEpisodes {
  ManyEpisodes({
    required this.episodes,
  });

  factory ManyEpisodes.fromJson(Map<String, dynamic> json) =>
      _$ManyEpisodesFromJson(json);

  static const toJsonFactory = _$ManyEpisodesToJson;
  Map<String, dynamic> toJson() => _$ManyEpisodesToJson(this);

  @JsonKey(name: 'episodes', defaultValue: <EpisodeObject>[])
  final List<EpisodeObject> episodes;
  static const fromJsonFactory = _$ManyEpisodesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ManyEpisodes &&
            (identical(other.episodes, episodes) ||
                const DeepCollectionEquality()
                    .equals(other.episodes, episodes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(episodes) ^ runtimeType.hashCode;
}

extension $ManyEpisodesExtension on ManyEpisodes {
  ManyEpisodes copyWith({List<EpisodeObject>? episodes}) {
    return ManyEpisodes(episodes: episodes ?? this.episodes);
  }

  ManyEpisodes copyWithWrapped({Wrapped<List<EpisodeObject>>? episodes}) {
    return ManyEpisodes(
        episodes: (episodes != null ? episodes.value : this.episodes));
  }
}

@JsonSerializable(explicitToJson: true)
class ManyGenres {
  ManyGenres({
    required this.genres,
  });

  factory ManyGenres.fromJson(Map<String, dynamic> json) =>
      _$ManyGenresFromJson(json);

  static const toJsonFactory = _$ManyGenresToJson;
  Map<String, dynamic> toJson() => _$ManyGenresToJson(this);

  @JsonKey(name: 'genres', defaultValue: <String>[])
  final List<String> genres;
  static const fromJsonFactory = _$ManyGenresFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ManyGenres &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(genres) ^ runtimeType.hashCode;
}

extension $ManyGenresExtension on ManyGenres {
  ManyGenres copyWith({List<String>? genres}) {
    return ManyGenres(genres: genres ?? this.genres);
  }

  ManyGenres copyWithWrapped({Wrapped<List<String>>? genres}) {
    return ManyGenres(genres: (genres != null ? genres.value : this.genres));
  }
}

typedef ArrayOfImages = List<ImageObject>;

@JsonSerializable(explicitToJson: true)
class ManyTracks {
  ManyTracks({
    required this.tracks,
  });

  factory ManyTracks.fromJson(Map<String, dynamic> json) =>
      _$ManyTracksFromJson(json);

  static const toJsonFactory = _$ManyTracksToJson;
  Map<String, dynamic> toJson() => _$ManyTracksToJson(this);

  @JsonKey(name: 'tracks', defaultValue: <TrackObject>[])
  final List<TrackObject> tracks;
  static const fromJsonFactory = _$ManyTracksFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ManyTracks &&
            (identical(other.tracks, tracks) ||
                const DeepCollectionEquality().equals(other.tracks, tracks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tracks) ^ runtimeType.hashCode;
}

extension $ManyTracksExtension on ManyTracks {
  ManyTracks copyWith({List<TrackObject>? tracks}) {
    return ManyTracks(tracks: tracks ?? this.tracks);
  }

  ManyTracks copyWithWrapped({Wrapped<List<TrackObject>>? tracks}) {
    return ManyTracks(tracks: (tracks != null ? tracks.value : this.tracks));
  }
}

@JsonSerializable(explicitToJson: true)
class ManySimplifiedShows {
  ManySimplifiedShows({
    required this.shows,
  });

  factory ManySimplifiedShows.fromJson(Map<String, dynamic> json) =>
      _$ManySimplifiedShowsFromJson(json);

  static const toJsonFactory = _$ManySimplifiedShowsToJson;
  Map<String, dynamic> toJson() => _$ManySimplifiedShowsToJson(this);

  @JsonKey(name: 'shows', defaultValue: <SimplifiedShowObject>[])
  final List<SimplifiedShowObject> shows;
  static const fromJsonFactory = _$ManySimplifiedShowsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ManySimplifiedShows &&
            (identical(other.shows, shows) ||
                const DeepCollectionEquality().equals(other.shows, shows)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shows) ^ runtimeType.hashCode;
}

extension $ManySimplifiedShowsExtension on ManySimplifiedShows {
  ManySimplifiedShows copyWith({List<SimplifiedShowObject>? shows}) {
    return ManySimplifiedShows(shows: shows ?? this.shows);
  }

  ManySimplifiedShows copyWithWrapped(
      {Wrapped<List<SimplifiedShowObject>>? shows}) {
    return ManySimplifiedShows(
        shows: (shows != null ? shows.value : this.shows));
  }
}

@JsonSerializable(explicitToJson: true)
class SearchItems {
  SearchItems({
    this.tracks,
    this.artists,
    this.albums,
    this.playlists,
    this.shows,
    this.episodes,
    this.audiobooks,
  });

  factory SearchItems.fromJson(Map<String, dynamic> json) =>
      _$SearchItemsFromJson(json);

  static const toJsonFactory = _$SearchItemsToJson;
  Map<String, dynamic> toJson() => _$SearchItemsToJson(this);

  @JsonKey(name: 'tracks')
  final PagingTrackObject? tracks;
  @JsonKey(name: 'artists')
  final PagingArtistObject? artists;
  @JsonKey(name: 'albums')
  final PagingSimplifiedAlbumObject? albums;
  @JsonKey(name: 'playlists')
  final PagingPlaylistObject? playlists;
  @JsonKey(name: 'shows')
  final PagingSimplifiedShowObject? shows;
  @JsonKey(name: 'episodes')
  final PagingSimplifiedEpisodeObject? episodes;
  @JsonKey(name: 'audiobooks')
  final PagingSimplifiedAudiobookObject? audiobooks;
  static const fromJsonFactory = _$SearchItemsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchItems &&
            (identical(other.tracks, tracks) ||
                const DeepCollectionEquality().equals(other.tracks, tracks)) &&
            (identical(other.artists, artists) ||
                const DeepCollectionEquality()
                    .equals(other.artists, artists)) &&
            (identical(other.albums, albums) ||
                const DeepCollectionEquality().equals(other.albums, albums)) &&
            (identical(other.playlists, playlists) ||
                const DeepCollectionEquality()
                    .equals(other.playlists, playlists)) &&
            (identical(other.shows, shows) ||
                const DeepCollectionEquality().equals(other.shows, shows)) &&
            (identical(other.episodes, episodes) ||
                const DeepCollectionEquality()
                    .equals(other.episodes, episodes)) &&
            (identical(other.audiobooks, audiobooks) ||
                const DeepCollectionEquality()
                    .equals(other.audiobooks, audiobooks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tracks) ^
      const DeepCollectionEquality().hash(artists) ^
      const DeepCollectionEquality().hash(albums) ^
      const DeepCollectionEquality().hash(playlists) ^
      const DeepCollectionEquality().hash(shows) ^
      const DeepCollectionEquality().hash(episodes) ^
      const DeepCollectionEquality().hash(audiobooks) ^
      runtimeType.hashCode;
}

extension $SearchItemsExtension on SearchItems {
  SearchItems copyWith(
      {PagingTrackObject? tracks,
      PagingArtistObject? artists,
      PagingSimplifiedAlbumObject? albums,
      PagingPlaylistObject? playlists,
      PagingSimplifiedShowObject? shows,
      PagingSimplifiedEpisodeObject? episodes,
      PagingSimplifiedAudiobookObject? audiobooks}) {
    return SearchItems(
        tracks: tracks ?? this.tracks,
        artists: artists ?? this.artists,
        albums: albums ?? this.albums,
        playlists: playlists ?? this.playlists,
        shows: shows ?? this.shows,
        episodes: episodes ?? this.episodes,
        audiobooks: audiobooks ?? this.audiobooks);
  }

  SearchItems copyWithWrapped(
      {Wrapped<PagingTrackObject?>? tracks,
      Wrapped<PagingArtistObject?>? artists,
      Wrapped<PagingSimplifiedAlbumObject?>? albums,
      Wrapped<PagingPlaylistObject?>? playlists,
      Wrapped<PagingSimplifiedShowObject?>? shows,
      Wrapped<PagingSimplifiedEpisodeObject?>? episodes,
      Wrapped<PagingSimplifiedAudiobookObject?>? audiobooks}) {
    return SearchItems(
        tracks: (tracks != null ? tracks.value : this.tracks),
        artists: (artists != null ? artists.value : this.artists),
        albums: (albums != null ? albums.value : this.albums),
        playlists: (playlists != null ? playlists.value : this.playlists),
        shows: (shows != null ? shows.value : this.shows),
        episodes: (episodes != null ? episodes.value : this.episodes),
        audiobooks: (audiobooks != null ? audiobooks.value : this.audiobooks));
  }
}

typedef ArrayOfBooleans = List<Object>;

@JsonSerializable(explicitToJson: true)
class PlaylistSnapshotId {
  PlaylistSnapshotId({
    this.snapshotId,
  });

  factory PlaylistSnapshotId.fromJson(Map<String, dynamic> json) =>
      _$PlaylistSnapshotIdFromJson(json);

  static const toJsonFactory = _$PlaylistSnapshotIdToJson;
  Map<String, dynamic> toJson() => _$PlaylistSnapshotIdToJson(this);

  @JsonKey(name: 'snapshot_id')
  final String? snapshotId;
  static const fromJsonFactory = _$PlaylistSnapshotIdFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistSnapshotId &&
            (identical(other.snapshotId, snapshotId) ||
                const DeepCollectionEquality()
                    .equals(other.snapshotId, snapshotId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(snapshotId) ^ runtimeType.hashCode;
}

extension $PlaylistSnapshotIdExtension on PlaylistSnapshotId {
  PlaylistSnapshotId copyWith({String? snapshotId}) {
    return PlaylistSnapshotId(snapshotId: snapshotId ?? this.snapshotId);
  }

  PlaylistSnapshotId copyWithWrapped({Wrapped<String?>? snapshotId}) {
    return PlaylistSnapshotId(
        snapshotId: (snapshotId != null ? snapshotId.value : this.snapshotId));
  }
}

@JsonSerializable(explicitToJson: true)
class Markets {
  Markets({
    this.markets,
  });

  factory Markets.fromJson(Map<String, dynamic> json) =>
      _$MarketsFromJson(json);

  static const toJsonFactory = _$MarketsToJson;
  Map<String, dynamic> toJson() => _$MarketsToJson(this);

  @JsonKey(name: 'markets', defaultValue: <String>[])
  final List<String>? markets;
  static const fromJsonFactory = _$MarketsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Markets &&
            (identical(other.markets, markets) ||
                const DeepCollectionEquality().equals(other.markets, markets)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(markets) ^ runtimeType.hashCode;
}

extension $MarketsExtension on Markets {
  Markets copyWith({List<String>? markets}) {
    return Markets(markets: markets ?? this.markets);
  }

  Markets copyWithWrapped({Wrapped<List<String>?>? markets}) {
    return Markets(markets: (markets != null ? markets.value : this.markets));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaylistsPlaylistIdPut$RequestBody {
  PlaylistsPlaylistIdPut$RequestBody({
    this.name,
    this.public,
    this.collaborative,
    this.description,
  });

  factory PlaylistsPlaylistIdPut$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$PlaylistsPlaylistIdPut$RequestBodyFromJson(json);

  static const toJsonFactory = _$PlaylistsPlaylistIdPut$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$PlaylistsPlaylistIdPut$RequestBodyToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'public')
  final bool? public;
  @JsonKey(name: 'collaborative')
  final bool? collaborative;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$PlaylistsPlaylistIdPut$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistsPlaylistIdPut$RequestBody &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.public, public) ||
                const DeepCollectionEquality().equals(other.public, public)) &&
            (identical(other.collaborative, collaborative) ||
                const DeepCollectionEquality()
                    .equals(other.collaborative, collaborative)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(public) ^
      const DeepCollectionEquality().hash(collaborative) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $PlaylistsPlaylistIdPut$RequestBodyExtension
    on PlaylistsPlaylistIdPut$RequestBody {
  PlaylistsPlaylistIdPut$RequestBody copyWith(
      {String? name, bool? public, bool? collaborative, String? description}) {
    return PlaylistsPlaylistIdPut$RequestBody(
        name: name ?? this.name,
        public: public ?? this.public,
        collaborative: collaborative ?? this.collaborative,
        description: description ?? this.description);
  }

  PlaylistsPlaylistIdPut$RequestBody copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<bool?>? public,
      Wrapped<bool?>? collaborative,
      Wrapped<String?>? description}) {
    return PlaylistsPlaylistIdPut$RequestBody(
        name: (name != null ? name.value : this.name),
        public: (public != null ? public.value : this.public),
        collaborative:
            (collaborative != null ? collaborative.value : this.collaborative),
        description:
            (description != null ? description.value : this.description));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaylistsPlaylistIdTracksPost$RequestBody {
  PlaylistsPlaylistIdTracksPost$RequestBody({
    this.uris,
    this.position,
  });

  factory PlaylistsPlaylistIdTracksPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$PlaylistsPlaylistIdTracksPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$PlaylistsPlaylistIdTracksPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$PlaylistsPlaylistIdTracksPost$RequestBodyToJson(this);

  @JsonKey(name: 'uris', defaultValue: <String>[])
  final List<String>? uris;
  @JsonKey(name: 'position')
  final int? position;
  static const fromJsonFactory =
      _$PlaylistsPlaylistIdTracksPost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistsPlaylistIdTracksPost$RequestBody &&
            (identical(other.uris, uris) ||
                const DeepCollectionEquality().equals(other.uris, uris)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uris) ^
      const DeepCollectionEquality().hash(position) ^
      runtimeType.hashCode;
}

extension $PlaylistsPlaylistIdTracksPost$RequestBodyExtension
    on PlaylistsPlaylistIdTracksPost$RequestBody {
  PlaylistsPlaylistIdTracksPost$RequestBody copyWith(
      {List<String>? uris, int? position}) {
    return PlaylistsPlaylistIdTracksPost$RequestBody(
        uris: uris ?? this.uris, position: position ?? this.position);
  }

  PlaylistsPlaylistIdTracksPost$RequestBody copyWithWrapped(
      {Wrapped<List<String>?>? uris, Wrapped<int?>? position}) {
    return PlaylistsPlaylistIdTracksPost$RequestBody(
        uris: (uris != null ? uris.value : this.uris),
        position: (position != null ? position.value : this.position));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaylistsPlaylistIdTracksPut$RequestBody {
  PlaylistsPlaylistIdTracksPut$RequestBody({
    this.uris,
    this.rangeStart,
    this.insertBefore,
    this.rangeLength,
    this.snapshotId,
  });

  factory PlaylistsPlaylistIdTracksPut$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$PlaylistsPlaylistIdTracksPut$RequestBodyFromJson(json);

  static const toJsonFactory = _$PlaylistsPlaylistIdTracksPut$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$PlaylistsPlaylistIdTracksPut$RequestBodyToJson(this);

  @JsonKey(name: 'uris', defaultValue: <String>[])
  final List<String>? uris;
  @JsonKey(name: 'range_start')
  final int? rangeStart;
  @JsonKey(name: 'insert_before')
  final int? insertBefore;
  @JsonKey(name: 'range_length')
  final int? rangeLength;
  @JsonKey(name: 'snapshot_id')
  final String? snapshotId;
  static const fromJsonFactory =
      _$PlaylistsPlaylistIdTracksPut$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistsPlaylistIdTracksPut$RequestBody &&
            (identical(other.uris, uris) ||
                const DeepCollectionEquality().equals(other.uris, uris)) &&
            (identical(other.rangeStart, rangeStart) ||
                const DeepCollectionEquality()
                    .equals(other.rangeStart, rangeStart)) &&
            (identical(other.insertBefore, insertBefore) ||
                const DeepCollectionEquality()
                    .equals(other.insertBefore, insertBefore)) &&
            (identical(other.rangeLength, rangeLength) ||
                const DeepCollectionEquality()
                    .equals(other.rangeLength, rangeLength)) &&
            (identical(other.snapshotId, snapshotId) ||
                const DeepCollectionEquality()
                    .equals(other.snapshotId, snapshotId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uris) ^
      const DeepCollectionEquality().hash(rangeStart) ^
      const DeepCollectionEquality().hash(insertBefore) ^
      const DeepCollectionEquality().hash(rangeLength) ^
      const DeepCollectionEquality().hash(snapshotId) ^
      runtimeType.hashCode;
}

extension $PlaylistsPlaylistIdTracksPut$RequestBodyExtension
    on PlaylistsPlaylistIdTracksPut$RequestBody {
  PlaylistsPlaylistIdTracksPut$RequestBody copyWith(
      {List<String>? uris,
      int? rangeStart,
      int? insertBefore,
      int? rangeLength,
      String? snapshotId}) {
    return PlaylistsPlaylistIdTracksPut$RequestBody(
        uris: uris ?? this.uris,
        rangeStart: rangeStart ?? this.rangeStart,
        insertBefore: insertBefore ?? this.insertBefore,
        rangeLength: rangeLength ?? this.rangeLength,
        snapshotId: snapshotId ?? this.snapshotId);
  }

  PlaylistsPlaylistIdTracksPut$RequestBody copyWithWrapped(
      {Wrapped<List<String>?>? uris,
      Wrapped<int?>? rangeStart,
      Wrapped<int?>? insertBefore,
      Wrapped<int?>? rangeLength,
      Wrapped<String?>? snapshotId}) {
    return PlaylistsPlaylistIdTracksPut$RequestBody(
        uris: (uris != null ? uris.value : this.uris),
        rangeStart: (rangeStart != null ? rangeStart.value : this.rangeStart),
        insertBefore:
            (insertBefore != null ? insertBefore.value : this.insertBefore),
        rangeLength:
            (rangeLength != null ? rangeLength.value : this.rangeLength),
        snapshotId: (snapshotId != null ? snapshotId.value : this.snapshotId));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaylistsPlaylistIdTracksDelete$RequestBody {
  PlaylistsPlaylistIdTracksDelete$RequestBody({
    required this.tracks,
    this.snapshotId,
  });

  factory PlaylistsPlaylistIdTracksDelete$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$PlaylistsPlaylistIdTracksDelete$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$PlaylistsPlaylistIdTracksDelete$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$PlaylistsPlaylistIdTracksDelete$RequestBodyToJson(this);

  @JsonKey(
      name: 'tracks',
      defaultValue: <PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item>[])
  final List<PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item> tracks;
  @JsonKey(name: 'snapshot_id')
  final String? snapshotId;
  static const fromJsonFactory =
      _$PlaylistsPlaylistIdTracksDelete$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistsPlaylistIdTracksDelete$RequestBody &&
            (identical(other.tracks, tracks) ||
                const DeepCollectionEquality().equals(other.tracks, tracks)) &&
            (identical(other.snapshotId, snapshotId) ||
                const DeepCollectionEquality()
                    .equals(other.snapshotId, snapshotId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tracks) ^
      const DeepCollectionEquality().hash(snapshotId) ^
      runtimeType.hashCode;
}

extension $PlaylistsPlaylistIdTracksDelete$RequestBodyExtension
    on PlaylistsPlaylistIdTracksDelete$RequestBody {
  PlaylistsPlaylistIdTracksDelete$RequestBody copyWith(
      {List<PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item>? tracks,
      String? snapshotId}) {
    return PlaylistsPlaylistIdTracksDelete$RequestBody(
        tracks: tracks ?? this.tracks,
        snapshotId: snapshotId ?? this.snapshotId);
  }

  PlaylistsPlaylistIdTracksDelete$RequestBody copyWithWrapped(
      {Wrapped<List<PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item>>?
          tracks,
      Wrapped<String?>? snapshotId}) {
    return PlaylistsPlaylistIdTracksDelete$RequestBody(
        tracks: (tracks != null ? tracks.value : this.tracks),
        snapshotId: (snapshotId != null ? snapshotId.value : this.snapshotId));
  }
}

@JsonSerializable(explicitToJson: true)
class MeAlbumsPut$RequestBody {
  MeAlbumsPut$RequestBody({
    this.ids,
  });

  factory MeAlbumsPut$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$MeAlbumsPut$RequestBodyFromJson(json);

  static const toJsonFactory = _$MeAlbumsPut$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$MeAlbumsPut$RequestBodyToJson(this);

  @JsonKey(name: 'ids', defaultValue: <String>[])
  final List<String>? ids;
  static const fromJsonFactory = _$MeAlbumsPut$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MeAlbumsPut$RequestBody &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ids) ^ runtimeType.hashCode;
}

extension $MeAlbumsPut$RequestBodyExtension on MeAlbumsPut$RequestBody {
  MeAlbumsPut$RequestBody copyWith({List<String>? ids}) {
    return MeAlbumsPut$RequestBody(ids: ids ?? this.ids);
  }

  MeAlbumsPut$RequestBody copyWithWrapped({Wrapped<List<String>?>? ids}) {
    return MeAlbumsPut$RequestBody(ids: (ids != null ? ids.value : this.ids));
  }
}

@JsonSerializable(explicitToJson: true)
class MeAlbumsDelete$RequestBody {
  MeAlbumsDelete$RequestBody({
    this.ids,
  });

  factory MeAlbumsDelete$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$MeAlbumsDelete$RequestBodyFromJson(json);

  static const toJsonFactory = _$MeAlbumsDelete$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$MeAlbumsDelete$RequestBodyToJson(this);

  @JsonKey(name: 'ids', defaultValue: <String>[])
  final List<String>? ids;
  static const fromJsonFactory = _$MeAlbumsDelete$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MeAlbumsDelete$RequestBody &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ids) ^ runtimeType.hashCode;
}

extension $MeAlbumsDelete$RequestBodyExtension on MeAlbumsDelete$RequestBody {
  MeAlbumsDelete$RequestBody copyWith({List<String>? ids}) {
    return MeAlbumsDelete$RequestBody(ids: ids ?? this.ids);
  }

  MeAlbumsDelete$RequestBody copyWithWrapped({Wrapped<List<String>?>? ids}) {
    return MeAlbumsDelete$RequestBody(
        ids: (ids != null ? ids.value : this.ids));
  }
}

@JsonSerializable(explicitToJson: true)
class MeTracksPut$RequestBody {
  MeTracksPut$RequestBody({
    required this.ids,
  });

  factory MeTracksPut$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$MeTracksPut$RequestBodyFromJson(json);

  static const toJsonFactory = _$MeTracksPut$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$MeTracksPut$RequestBodyToJson(this);

  @JsonKey(name: 'ids', defaultValue: <String>[])
  final List<String> ids;
  static const fromJsonFactory = _$MeTracksPut$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MeTracksPut$RequestBody &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ids) ^ runtimeType.hashCode;
}

extension $MeTracksPut$RequestBodyExtension on MeTracksPut$RequestBody {
  MeTracksPut$RequestBody copyWith({List<String>? ids}) {
    return MeTracksPut$RequestBody(ids: ids ?? this.ids);
  }

  MeTracksPut$RequestBody copyWithWrapped({Wrapped<List<String>>? ids}) {
    return MeTracksPut$RequestBody(ids: (ids != null ? ids.value : this.ids));
  }
}

@JsonSerializable(explicitToJson: true)
class MeTracksDelete$RequestBody {
  MeTracksDelete$RequestBody({
    this.ids,
  });

  factory MeTracksDelete$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$MeTracksDelete$RequestBodyFromJson(json);

  static const toJsonFactory = _$MeTracksDelete$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$MeTracksDelete$RequestBodyToJson(this);

  @JsonKey(name: 'ids', defaultValue: <String>[])
  final List<String>? ids;
  static const fromJsonFactory = _$MeTracksDelete$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MeTracksDelete$RequestBody &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ids) ^ runtimeType.hashCode;
}

extension $MeTracksDelete$RequestBodyExtension on MeTracksDelete$RequestBody {
  MeTracksDelete$RequestBody copyWith({List<String>? ids}) {
    return MeTracksDelete$RequestBody(ids: ids ?? this.ids);
  }

  MeTracksDelete$RequestBody copyWithWrapped({Wrapped<List<String>?>? ids}) {
    return MeTracksDelete$RequestBody(
        ids: (ids != null ? ids.value : this.ids));
  }
}

@JsonSerializable(explicitToJson: true)
class MeEpisodesPut$RequestBody {
  MeEpisodesPut$RequestBody({
    required this.ids,
  });

  factory MeEpisodesPut$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$MeEpisodesPut$RequestBodyFromJson(json);

  static const toJsonFactory = _$MeEpisodesPut$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$MeEpisodesPut$RequestBodyToJson(this);

  @JsonKey(name: 'ids', defaultValue: <String>[])
  final List<String> ids;
  static const fromJsonFactory = _$MeEpisodesPut$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MeEpisodesPut$RequestBody &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ids) ^ runtimeType.hashCode;
}

extension $MeEpisodesPut$RequestBodyExtension on MeEpisodesPut$RequestBody {
  MeEpisodesPut$RequestBody copyWith({List<String>? ids}) {
    return MeEpisodesPut$RequestBody(ids: ids ?? this.ids);
  }

  MeEpisodesPut$RequestBody copyWithWrapped({Wrapped<List<String>>? ids}) {
    return MeEpisodesPut$RequestBody(ids: (ids != null ? ids.value : this.ids));
  }
}

@JsonSerializable(explicitToJson: true)
class MeEpisodesDelete$RequestBody {
  MeEpisodesDelete$RequestBody({
    this.ids,
  });

  factory MeEpisodesDelete$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$MeEpisodesDelete$RequestBodyFromJson(json);

  static const toJsonFactory = _$MeEpisodesDelete$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$MeEpisodesDelete$RequestBodyToJson(this);

  @JsonKey(name: 'ids', defaultValue: <String>[])
  final List<String>? ids;
  static const fromJsonFactory = _$MeEpisodesDelete$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MeEpisodesDelete$RequestBody &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ids) ^ runtimeType.hashCode;
}

extension $MeEpisodesDelete$RequestBodyExtension
    on MeEpisodesDelete$RequestBody {
  MeEpisodesDelete$RequestBody copyWith({List<String>? ids}) {
    return MeEpisodesDelete$RequestBody(ids: ids ?? this.ids);
  }

  MeEpisodesDelete$RequestBody copyWithWrapped({Wrapped<List<String>?>? ids}) {
    return MeEpisodesDelete$RequestBody(
        ids: (ids != null ? ids.value : this.ids));
  }
}

@JsonSerializable(explicitToJson: true)
class MeShowsPut$RequestBody {
  MeShowsPut$RequestBody({
    this.ids,
  });

  factory MeShowsPut$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$MeShowsPut$RequestBodyFromJson(json);

  static const toJsonFactory = _$MeShowsPut$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$MeShowsPut$RequestBodyToJson(this);

  @JsonKey(name: 'ids', defaultValue: <String>[])
  final List<String>? ids;
  static const fromJsonFactory = _$MeShowsPut$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MeShowsPut$RequestBody &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ids) ^ runtimeType.hashCode;
}

extension $MeShowsPut$RequestBodyExtension on MeShowsPut$RequestBody {
  MeShowsPut$RequestBody copyWith({List<String>? ids}) {
    return MeShowsPut$RequestBody(ids: ids ?? this.ids);
  }

  MeShowsPut$RequestBody copyWithWrapped({Wrapped<List<String>?>? ids}) {
    return MeShowsPut$RequestBody(ids: (ids != null ? ids.value : this.ids));
  }
}

@JsonSerializable(explicitToJson: true)
class MeShowsDelete$RequestBody {
  MeShowsDelete$RequestBody({
    this.ids,
  });

  factory MeShowsDelete$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$MeShowsDelete$RequestBodyFromJson(json);

  static const toJsonFactory = _$MeShowsDelete$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$MeShowsDelete$RequestBodyToJson(this);

  @JsonKey(name: 'ids', defaultValue: <String>[])
  final List<String>? ids;
  static const fromJsonFactory = _$MeShowsDelete$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MeShowsDelete$RequestBody &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ids) ^ runtimeType.hashCode;
}

extension $MeShowsDelete$RequestBodyExtension on MeShowsDelete$RequestBody {
  MeShowsDelete$RequestBody copyWith({List<String>? ids}) {
    return MeShowsDelete$RequestBody(ids: ids ?? this.ids);
  }

  MeShowsDelete$RequestBody copyWithWrapped({Wrapped<List<String>?>? ids}) {
    return MeShowsDelete$RequestBody(ids: (ids != null ? ids.value : this.ids));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersUserIdPlaylistsPost$RequestBody {
  UsersUserIdPlaylistsPost$RequestBody({
    required this.name,
    this.public,
    this.collaborative,
    this.description,
  });

  factory UsersUserIdPlaylistsPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$UsersUserIdPlaylistsPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$UsersUserIdPlaylistsPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$UsersUserIdPlaylistsPost$RequestBodyToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'public')
  final bool? public;
  @JsonKey(name: 'collaborative')
  final bool? collaborative;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$UsersUserIdPlaylistsPost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersUserIdPlaylistsPost$RequestBody &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.public, public) ||
                const DeepCollectionEquality().equals(other.public, public)) &&
            (identical(other.collaborative, collaborative) ||
                const DeepCollectionEquality()
                    .equals(other.collaborative, collaborative)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(public) ^
      const DeepCollectionEquality().hash(collaborative) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $UsersUserIdPlaylistsPost$RequestBodyExtension
    on UsersUserIdPlaylistsPost$RequestBody {
  UsersUserIdPlaylistsPost$RequestBody copyWith(
      {String? name, bool? public, bool? collaborative, String? description}) {
    return UsersUserIdPlaylistsPost$RequestBody(
        name: name ?? this.name,
        public: public ?? this.public,
        collaborative: collaborative ?? this.collaborative,
        description: description ?? this.description);
  }

  UsersUserIdPlaylistsPost$RequestBody copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<bool?>? public,
      Wrapped<bool?>? collaborative,
      Wrapped<String?>? description}) {
    return UsersUserIdPlaylistsPost$RequestBody(
        name: (name != null ? name.value : this.name),
        public: (public != null ? public.value : this.public),
        collaborative:
            (collaborative != null ? collaborative.value : this.collaborative),
        description:
            (description != null ? description.value : this.description));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaylistsPlaylistIdFollowersPut$RequestBody {
  PlaylistsPlaylistIdFollowersPut$RequestBody({
    this.public,
  });

  factory PlaylistsPlaylistIdFollowersPut$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$PlaylistsPlaylistIdFollowersPut$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$PlaylistsPlaylistIdFollowersPut$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$PlaylistsPlaylistIdFollowersPut$RequestBodyToJson(this);

  @JsonKey(name: 'public')
  final bool? public;
  static const fromJsonFactory =
      _$PlaylistsPlaylistIdFollowersPut$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistsPlaylistIdFollowersPut$RequestBody &&
            (identical(other.public, public) ||
                const DeepCollectionEquality().equals(other.public, public)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(public) ^ runtimeType.hashCode;
}

extension $PlaylistsPlaylistIdFollowersPut$RequestBodyExtension
    on PlaylistsPlaylistIdFollowersPut$RequestBody {
  PlaylistsPlaylistIdFollowersPut$RequestBody copyWith({bool? public}) {
    return PlaylistsPlaylistIdFollowersPut$RequestBody(
        public: public ?? this.public);
  }

  PlaylistsPlaylistIdFollowersPut$RequestBody copyWithWrapped(
      {Wrapped<bool?>? public}) {
    return PlaylistsPlaylistIdFollowersPut$RequestBody(
        public: (public != null ? public.value : this.public));
  }
}

@JsonSerializable(explicitToJson: true)
class MeFollowingPut$RequestBody {
  MeFollowingPut$RequestBody({
    required this.ids,
  });

  factory MeFollowingPut$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$MeFollowingPut$RequestBodyFromJson(json);

  static const toJsonFactory = _$MeFollowingPut$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$MeFollowingPut$RequestBodyToJson(this);

  @JsonKey(name: 'ids', defaultValue: <String>[])
  final List<String> ids;
  static const fromJsonFactory = _$MeFollowingPut$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MeFollowingPut$RequestBody &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ids) ^ runtimeType.hashCode;
}

extension $MeFollowingPut$RequestBodyExtension on MeFollowingPut$RequestBody {
  MeFollowingPut$RequestBody copyWith({List<String>? ids}) {
    return MeFollowingPut$RequestBody(ids: ids ?? this.ids);
  }

  MeFollowingPut$RequestBody copyWithWrapped({Wrapped<List<String>>? ids}) {
    return MeFollowingPut$RequestBody(
        ids: (ids != null ? ids.value : this.ids));
  }
}

@JsonSerializable(explicitToJson: true)
class MeFollowingDelete$RequestBody {
  MeFollowingDelete$RequestBody({
    this.ids,
  });

  factory MeFollowingDelete$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$MeFollowingDelete$RequestBodyFromJson(json);

  static const toJsonFactory = _$MeFollowingDelete$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$MeFollowingDelete$RequestBodyToJson(this);

  @JsonKey(name: 'ids', defaultValue: <String>[])
  final List<String>? ids;
  static const fromJsonFactory = _$MeFollowingDelete$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MeFollowingDelete$RequestBody &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ids) ^ runtimeType.hashCode;
}

extension $MeFollowingDelete$RequestBodyExtension
    on MeFollowingDelete$RequestBody {
  MeFollowingDelete$RequestBody copyWith({List<String>? ids}) {
    return MeFollowingDelete$RequestBody(ids: ids ?? this.ids);
  }

  MeFollowingDelete$RequestBody copyWithWrapped({Wrapped<List<String>?>? ids}) {
    return MeFollowingDelete$RequestBody(
        ids: (ids != null ? ids.value : this.ids));
  }
}

@JsonSerializable(explicitToJson: true)
class MePlayerPut$RequestBody {
  MePlayerPut$RequestBody({
    required this.deviceIds,
    this.play,
  });

  factory MePlayerPut$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$MePlayerPut$RequestBodyFromJson(json);

  static const toJsonFactory = _$MePlayerPut$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$MePlayerPut$RequestBodyToJson(this);

  @JsonKey(name: 'device_ids', defaultValue: <String>[])
  final List<String> deviceIds;
  @JsonKey(name: 'play')
  final bool? play;
  static const fromJsonFactory = _$MePlayerPut$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MePlayerPut$RequestBody &&
            (identical(other.deviceIds, deviceIds) ||
                const DeepCollectionEquality()
                    .equals(other.deviceIds, deviceIds)) &&
            (identical(other.play, play) ||
                const DeepCollectionEquality().equals(other.play, play)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceIds) ^
      const DeepCollectionEquality().hash(play) ^
      runtimeType.hashCode;
}

extension $MePlayerPut$RequestBodyExtension on MePlayerPut$RequestBody {
  MePlayerPut$RequestBody copyWith({List<String>? deviceIds, bool? play}) {
    return MePlayerPut$RequestBody(
        deviceIds: deviceIds ?? this.deviceIds, play: play ?? this.play);
  }

  MePlayerPut$RequestBody copyWithWrapped(
      {Wrapped<List<String>>? deviceIds, Wrapped<bool?>? play}) {
    return MePlayerPut$RequestBody(
        deviceIds: (deviceIds != null ? deviceIds.value : this.deviceIds),
        play: (play != null ? play.value : this.play));
  }
}

@JsonSerializable(explicitToJson: true)
class MePlayerPlayPut$RequestBody {
  MePlayerPlayPut$RequestBody({
    this.contextUri,
    this.uris,
    this.offset,
    this.positionMs,
  });

  factory MePlayerPlayPut$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$MePlayerPlayPut$RequestBodyFromJson(json);

  static const toJsonFactory = _$MePlayerPlayPut$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$MePlayerPlayPut$RequestBodyToJson(this);

  @JsonKey(name: 'context_uri')
  final String? contextUri;
  @JsonKey(name: 'uris', defaultValue: <String>[])
  final List<String>? uris;
  @JsonKey(name: 'offset')
  final Map<String, dynamic>? offset;
  @JsonKey(name: 'position_ms')
  final int? positionMs;
  static const fromJsonFactory = _$MePlayerPlayPut$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MePlayerPlayPut$RequestBody &&
            (identical(other.contextUri, contextUri) ||
                const DeepCollectionEquality()
                    .equals(other.contextUri, contextUri)) &&
            (identical(other.uris, uris) ||
                const DeepCollectionEquality().equals(other.uris, uris)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.positionMs, positionMs) ||
                const DeepCollectionEquality()
                    .equals(other.positionMs, positionMs)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contextUri) ^
      const DeepCollectionEquality().hash(uris) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(positionMs) ^
      runtimeType.hashCode;
}

extension $MePlayerPlayPut$RequestBodyExtension on MePlayerPlayPut$RequestBody {
  MePlayerPlayPut$RequestBody copyWith(
      {String? contextUri,
      List<String>? uris,
      Map<String, dynamic>? offset,
      int? positionMs}) {
    return MePlayerPlayPut$RequestBody(
        contextUri: contextUri ?? this.contextUri,
        uris: uris ?? this.uris,
        offset: offset ?? this.offset,
        positionMs: positionMs ?? this.positionMs);
  }

  MePlayerPlayPut$RequestBody copyWithWrapped(
      {Wrapped<String?>? contextUri,
      Wrapped<List<String>?>? uris,
      Wrapped<Map<String, dynamic>?>? offset,
      Wrapped<int?>? positionMs}) {
    return MePlayerPlayPut$RequestBody(
        contextUri: (contextUri != null ? contextUri.value : this.contextUri),
        uris: (uris != null ? uris.value : this.uris),
        offset: (offset != null ? offset.value : this.offset),
        positionMs: (positionMs != null ? positionMs.value : this.positionMs));
  }
}

typedef PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks
    = List<PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item>;

@JsonSerializable(explicitToJson: true)
class PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item {
  PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item({
    this.uri,
  });

  factory PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item.fromJson(
          Map<String, dynamic> json) =>
      _$PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$ItemFromJson(json);

  static const toJsonFactory =
      _$PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$ItemToJson(this);

  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory =
      _$PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uri) ^ runtimeType.hashCode;
}

extension $PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$ItemExtension
    on PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item {
  PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item copyWith(
      {String? uri}) {
    return PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item(
        uri: uri ?? this.uri);
  }

  PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item copyWithWrapped(
      {Wrapped<String?>? uri}) {
    return PlaylistsPlaylistIdTracksDelete$RequestBody$Tracks$Item(
        uri: (uri != null ? uri.value : this.uri));
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
