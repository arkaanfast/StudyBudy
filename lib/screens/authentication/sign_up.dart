import 'package:flutter/material.dart';
import 'package:studybudy/models/sign_up_textfields.dart';
import '../authentication/sign_in.dart';

class SignUp extends StatelessWidget {
  final List<String> labelTexts = [
    'U.S.N',
    'Counselor',
    'Phone No.',
    'Email',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 40),
                height: MediaQuery.of(context).size.height * 0.25,
                child: Column(
                  children: [
                    Text(
                      'Sign',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Up',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // decoration: BoxDecoration(
                      //   border: Border.all(width: 2.0, color: Colors.grey),
                      // ),
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 45.0,
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0.0))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0.0))),
                          labelText: 'First Name',
                          labelStyle: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey[400]),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                    Container(
                      // decoration: BoxDecoration(
                      //   border: Border.all(width: 2.0, color: Colors.grey),
                      // ),
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 45.0,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        autocorrect: false,
                        cursorColor: Colors.grey,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0.0))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0.0))),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: 'Last Name',
                          labelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[400]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    return SignUpTextFields(labelTexts[index]);
                  },
                  itemCount: labelTexts.length,
                ),
              ),
              Container(
                width: 160.0,
                height: 70.0,
                padding: EdgeInsets.only(top: 25.0),
                // decoration: BoxDecoration(color: Color(0x3EC6FF)),
                child: RaisedButton(
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.lightBlue[400],
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
