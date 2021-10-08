import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:movie_apps/data/auth/auth_api_path.dart';
import 'package:movie_apps/data/auth/model/guest_response.dart';
import 'package:movie_apps/data/dio_logging.dart';
import 'package:movie_apps/data/movies/movie_api_client.dart';

const String keyGuestSessionId = 'GUEST_SESSION_ID';

class AuthApiClient {
  final storage = FlutterSecureStorage();

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseurl,
      connectTimeout: 30000,
      sendTimeout: 30000,
    ),
  )..interceptors.add(Logging());

  Future<GuestResponse?> loginAsGuest() async {
    GuestResponse? guestResponse;
    try {
      Response response = await _dio.get(loginGuest, queryParameters: {
        'api_key': apikey,
      });

      print('RESPONSE LOGIN : ${response.data}');

      guestResponse = GuestResponse.fromJson(response.data);

      await storage.write(
          key: keyGuestSessionId, value: guestResponse.guestSessionId);
    } on DioError catch (e) {
      if (e.response != null) {
        print(
            'Error(loginAsGuest): ${e.response!.statusCode} - ${e.response!.data}');
      } else {
        print('Something went wrong: ${e.message}');
      }
    }
    return guestResponse;
  }
}
