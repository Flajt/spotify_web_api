import 'dart:async';
import 'package:chopper/chopper.dart';

///Injects your JWT into the Request for Authorization
class SpotifyAuthInterceptor extends RequestInterceptor {
  late final String _jwt;
  SpotifyAuthInterceptor(String jwt) {
    _jwt = jwt;
  }

  @override
  FutureOr<Request> onRequest(Request request) {
    return request.copyWith(headers: {"Authorization": "Bearer $_jwt"});
  }
}
