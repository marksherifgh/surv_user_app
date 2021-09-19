import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './sign_up_A.dart';

class WelcomeAuth extends StatelessWidget {
  static const String mainSVG = 'assets/svgs/Layer4.svg';
  static const String groupSVG = 'assets/svgs/Group4.svg';
  static const String mainText =
      'Every time you visit a place your friends will get discounts or offers and you will win too!';
  static const String titleText = 'Share & Win';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(mainSVG),
            SizedBox(height: 90),
            Text(
              titleText,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 290,
              child: Text(
                mainText,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 127,
            ),
            SvgPicture.asset(groupSVG),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>
                      SignUp()
                  ));
                },
                child: Text(
                  'sign Up',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(323, 49),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)))),
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
    );
  }
}
