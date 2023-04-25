import 'package:flutter/material.dart';
import 'package:spotify_web_api/spotify_web_api.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
            onPressed: () {
              final SpotifyWeb spotifyWeb = SpotifyWeb.create(
                  interceptors: [SpotifyAuthInterceptor("my-jwt-here")],
                  baseUrl: Uri.parse("https://api.spotify.com/v1"));
              spotifyWeb.meGet();
            },
            child: const Text("Don't Press")),
      )),
    );
  }
}
