import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studybudy/screens/dashboard/bloc/question_answer_bloc.dart';
import 'package:studybudy/screens/dashboard/student_dashboard.dart';
import 'package:studybudy/screens/welcome_page.dart';

void main() {
  runApp(MyApp());
}

Future<bool> getInitialState() async {
  final pref = await SharedPreferences.getInstance();
  final isLoggedIn = pref.getBool("isLoggedIn") ?? false;
  return isLoggedIn;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
          future: getInitialState(),
          builder: (context, snapshot) {
            if (snapshot.data == false) {
              return WelcomePage();
            }
            return BlocProvider<QuestionAnswerBloc>(
              create: (context) => QuestionAnswerBloc(),
              child: StudentDashboard(),
            );
          }),
    );
  }
}
