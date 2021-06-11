import 'package:flutter/material.dart';

class SignUpTextFields extends StatelessWidget {
  final String inputText;

  SignUpTextFields(this.inputText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Container(
        // decoration: //BoxDecoration(
        //   border: Border.all(width: 2.0, color: Colors.grey),
        // ),
        width: MediaQuery.of(context).size.width * 0.86,
        height: 45.0,
        child: TextFormField(
          cursorColor: Colors.grey,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.all(
                Radius.circular(0.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.all(
                Radius.circular(0.0),
              ),
            ),
            alignLabelWithHint: true,
            labelText: inputText,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[400]),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
      ),
    );
  }
}
