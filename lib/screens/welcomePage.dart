import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          child: SvgPicture.asset('images/welcomepage.svg'),
        ),
        Container(child: Text("")),
      ]),
    );
  }
}
