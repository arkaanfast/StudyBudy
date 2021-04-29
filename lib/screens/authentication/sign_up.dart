import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 180.0, left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(fontSize: 28.0),
                      ),
                      Text(
                        "Welcome !",
                        style: TextStyle(fontSize: 28.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 160.0, left: 20.0),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/images/signUp.svg',
                    width: 200,
                    height: 170,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: TextField(
                maxLength: 10,
                decoration: InputDecoration(labelText: 'USN'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              // ignore: deprecated_member_use
              child: RaisedButton(
                // style: OutlinedButton.styleFrom(primary: Colors.deepPurpleAccent),
                padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                color: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                onPressed: () {
                  //Navigator.push(context,
                  // MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            /*Container(
              padding: EdgeInsets.only(left: 30),
              child: ToggleButtons(
                isSelected: [],
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Student'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Teacher'),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
