import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './form_signup.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Form(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 60, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset('assets/svgs/Layer5.svg'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 62,
              ),
              FormSignUp(),
              SizedBox(
                height: 30,
              ),
              Text(
                'sign up using',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 20,
              ),
              SvgPicture.asset('assets/svgs/Layer6.svg'),
              Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Log in',
                        style: TextStyle(color: Color(0xff0052D4)),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
