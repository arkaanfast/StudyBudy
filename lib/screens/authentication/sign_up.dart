import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
      ],
    ));
  }
}
