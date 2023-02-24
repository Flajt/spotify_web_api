<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

An openapi generated wrapper for the SpotifyWebApi.
Currently not 100% typesafe, please checkout the official docs for in depth information.
Currently based on [sonallux](https://github.com/sonallux/spotify-web-api) fixed openapi docs.

## Features

All features of the Spotify Web Api should be available

## Getting started

1. Install the Package
2. Setup a Project in Spotify Developer Console
3. Figure out your OAuth scope requirements
3. Recommendation: Use service for Authentication e.g. Supabase to get the jwt (or the spotify_sdk package)
4. Ready to rumble
## Usage

```dart
final SpotifyWeb spotifyWeb = SpotifyWeb.create(
        interceptors: [SpotifyAuthInterceptor(jwt)],
        baseUrl: Uri.parse("https://api.spotify.com/v1"));
```

## Additional information
- If you run  the `build_runner generate` coomand , you get some broken files, comment the errors out for now, I have opend an issue.
- Currently I'm using a cleaned up version of the spotify openapi file, I consider switching to the offical one
- Not tested in depth
- TODO: Provide better docs at some point