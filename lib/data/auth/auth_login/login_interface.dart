import 'package:dio/dio.dart';
import 'package:movie_apps/data/auth/model/user_model.dart';

abstract class Ilogin {
  Future<UserModel?> login(String email, String password) async {
    const apilogin = 'https://reqres.in/api/login';
    final datauser = {'email': email, 'password': password};
    final dio = Dio();
    Response response;
    response = await dio.post(apilogin, data: datauser);
    if (response.statusCode == 200) {
      final body = response.data;
      return UserModel(email: email, token: body['token']);
    } else {
      return null;
    }
  }
}
