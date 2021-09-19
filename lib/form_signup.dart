import 'package:flutter/material.dart';

import './text_input_form.dart';
import './sign_up_B.dart';

class FormSignUp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(44, 0, 0, 0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Name',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          TextInputForm(),
          SizedBox(
            height: 22,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(44, 0, 0, 0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Email',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          TextInputForm(),
          SizedBox(
            height: 22,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(44, 0, 0, 0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Password',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Container(
            width: 326,
            height: 44,
            margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
            child: TextFormField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Please fill in the above box';
                }
                return null;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9.0)),
                  fillColor: Color(0xff2A292A),
                  filled: true),
            ),
          ),
          SizedBox(height: 54),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpB()));
              }
            },
            child: Text(
              'Get Started',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff0052D4),
                fixedSize: Size(326, 48),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          ),

        ],
      ),
    );
  }
}
