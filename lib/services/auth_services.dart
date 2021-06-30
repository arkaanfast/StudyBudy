import 'dart:convert';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final String url = "http://10.0.2.2:8000/api/";

  Future<int> registerUser(
      {required String username,
      required String email,
      required String password,
      required int phoneNo,
      required String usn,
      required bool isStudent}) async {
    Uri uri = Uri.parse(url + "register/");
    Map<String, String> headers = {
      "Content-type": "application/json; charset=utf-8"
    };
    Map<String, dynamic> json = {
      "username": username,
      "email": email,
      "password": password,
      "phone_number": phoneNo,
      "usn": usn,
      "is_student": isStudent,
    };
    String requestBody = jsonEncode(json);
    Response response = await post(uri, headers: headers, body: requestBody);
    if (response.statusCode == 201) {
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      final pref = await SharedPreferences.getInstance();
      pref.setBool("isLoggedIn", true);
      pref.setString("token", jsonResponse['token']);
    }
    return response.statusCode;
  }

  Future<int> signIn(
      {required String password,
      required String usn,
      required bool isStudent}) async {
    Uri uri = Uri.parse(url + "sign_in/");
    Map<String, String> headers = {
      "Content-type": "application/json; charset=utf-8"
    };
    Map<String, dynamic> json = {
      "password": password,
      "usn": usn,
      "is_student": isStudent,
    };
    String requestBody = jsonEncode(json);
    Response response = await post(uri, headers: headers, body: requestBody);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      final pref = await SharedPreferences.getInstance();
      pref.setBool("isLoggedIn", true);
      pref.setString("token", jsonResponse['token']);
    }
    print(response.statusCode);
    return response.statusCode;
  }
}
