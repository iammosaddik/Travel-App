import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uitest/Repository/server_config.dart';

import '../Model/sign_in_model.dart';

class AuthRepo {
  Future<bool> signInWithEmail(String email, String password) async {
    final prefes = await SharedPreferences.getInstance();
    String signIn = Config.serverUrl + Config.signInUrl;
    var respones = await http.post(Uri.parse(signIn), body: <String, String>{
      'email': email,
      'password': password,
    });
    var data = jsonDecode(respones.body);
    if (respones.statusCode == 200) {
      var decodedData = SignInModel.fromJson(data);
      await prefes.setString('token', decodedData.data!.token.toString());
      print(prefes.get('token'));
      return true;
    }
    return false;
  }

  // Sign Up AuthRepo Start here....................

  Future<bool> signUpWithEmail(String name, String email, String phone,
      String password, String confirmPassword) async {
    final prefes = await SharedPreferences.getInstance();
    String signUp = Config.serverUrl + Config.signUpUrl;
    var respones = await http.post(Uri.parse(signUp), body: <String, String>{
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
    });
    var data = jsonDecode(respones.body);
    if (respones.statusCode == 200) {
      var decodedData = SignInModel.fromJson(data);
      await prefes.setString('token', decodedData.data!.token.toString());
      print(prefes.get('token'));
      return true;
    }
    return false;
  }
}
