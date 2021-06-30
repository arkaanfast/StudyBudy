import 'dart:convert';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studybudy/models/question_answer_model.dart';

class QuestionAnswerServices {
  final String url = "http://10.0.2.2:8000/api/";

  Future<QuestionAnswerModel> getAnswer({required String question}) async {
    print("here");
    final pref = await SharedPreferences.getInstance();
    final authToken = pref.getString("token");
    Uri uri = Uri.parse(url + "student_queries/");
    Map<String, String> headers = {
      "Content-type": "application/json; charset=utf-8",
      "Authorization": "Token $authToken"
    };
    Map<String, dynamic> json = {
      "question": question,
    };
    String requestBody = jsonEncode(json);
    Response response = await post(uri, headers: headers, body: requestBody);
    print(response.body);
    return QuestionAnswerModel.fromJson(jsonDecode(response.body));
  }
}
