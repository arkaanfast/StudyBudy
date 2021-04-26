import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          margin: EdgeInsets.fromLTRB(30, 150, 30, 30),
          child: SvgPicture.asset(
            'assets/images/welcomepage.svg',
            width: 200,
            height: 170,
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Welcome to Study Buddy",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(30, 20, 10, 10),
          alignment: Alignment.center,
          child: Text(
            "Access your courses on the go with the Study buddy mobile app!",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: RaisedButton(
            padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
            color: Colors.deepPurpleAccent,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
            ),
            onPressed: () {},
            child: Text(
              "Sign up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
        Container(margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: TextButton(child: Text('Sign in', style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,),),
        ),
        ),
      ]),
    );
  }
}
