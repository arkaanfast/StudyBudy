import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List<bool> _isSelected = List.generate(2, (_) => false);
  List<Color> _changeColor = [Color(0xFFB6BE878), Color(0x66B6BE878)];
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
                  margin: EdgeInsets.only(top: 180.0, left: 25.0),
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
                  margin: EdgeInsets.only(top: 150.0, left: 5.0),
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
              margin: EdgeInsets.fromLTRB(30, 5, 30, 10),
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
                )),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 25),
              height: 42.0,
              child: ToggleButtons(
                isSelected: _isSelected,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 165.0,
                    color: _changeColor[0],
                    child: Text('Student',
                        style: TextStyle(
                            color: Color(0xFFBFFFFFF), fontSize: 20.0)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 165.0,
                    color: _changeColor[1],
                    child: Text(
                      'Teacher',
                      style:
                          TextStyle(color: Color(0xFFBFFFFFF), fontSize: 20.0),
                    ),
                  ),
                ],
                borderColor: Color(0xFFB6BE878),
                onPressed: (index) {
                  setState(() {
                    _changeColor = List.generate(_changeColor.length, (idx) {
                      if (index == idx) return Color(0xFFB6BE878);
                      return Color(0x66B6BE878);
                    });
                    // _changeColor[index] = Color(0xFFB6BE878);
                    // if (index == 0) {
                    //   _changeColor[0] = Color(0xFFB6BE878);
                    //   _changeColor[1] = Color(0x66B6BE878);
                    // } else {
                    //   _changeColor[1] = Color(0xFFB6BE878);
                    //   _changeColor[0] = Color(0x66B6BE878);
                    // }
                    _isSelected = List.generate(_isSelected.length, (idx) {
                      if (index == idx) return true;
                      return false;
                    });
                    // _isSelected[index] = !_isSelected[index];
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25, left: 28.0),
              alignment: Alignment.centerLeft,
              // ignore: deprecated_member_use
              child: RaisedButton(
                // style: OutlinedButton.styleFrom(primary: Colors.deepPurpleAccent),
                padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                color: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
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
          ],
        ),
      ),
    );
  }
}
