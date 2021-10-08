import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:movie_apps/data/auth/auth_api_client.dart';
import 'package:movie_apps/data/auth/auth_login/login_interface.dart';
import 'package:movie_apps/data/auth/auth_login/login_service.dart';
import 'package:movie_apps/data/auth/model/guest_response.dart';
import 'package:movie_apps/data/auth/model/user_model.dart';
import 'package:movie_apps/ui/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Ilogin _loginService = LoginService();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  AuthApiClient _authApiClient = AuthApiClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Card(
                  borderOnForeground: true,
                  shadowColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(hintText: 'Email'),
                          textInputAction: TextInputAction.next,
                        ),
                        TextField(
                          controller: _passwordController,
                          decoration:
                              const InputDecoration(hintText: 'Password'),
                          textInputAction: TextInputAction.done,
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                    child: Text('Login Guest'),
                    onPressed: () async {
                      if (_emailController.text.isNotEmpty &&
                          _passwordController.text.isNotEmpty) {
                        EasyLoading.show(status: 'loading...');
                        UserModel? user = await _loginService.login(
                            _emailController.text, _passwordController.text);
                        GuestResponse? response =
                            await _authApiClient.loginAsGuest();
                        if (response != null) {
                          if (response.success!) {
                            print('Login Success');
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) => HomeScreens()),
                            );
                          }
                        } else {
                          print('Login failed');
                        }
                        EasyLoading.dismiss();
                      }
                    }),
                ElevatedButton(
                  child: Text('Logout'),
                  onPressed: () async {
                    final FlutterSecureStorage storage = FlutterSecureStorage();
                    storage.delete(key: keyGuestSessionId);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
