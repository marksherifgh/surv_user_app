import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './sign_up_A.dart';

class Welcome extends StatelessWidget {
  final String mainSVG;
  final String groupSVG;
  final String titleText;
  final String mainText;

  Welcome(
      {required this.mainSVG,
      required this.groupSVG,
      required this.titleText,
      required this.mainText});

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
            SizedBox(height: 127),
            SvgPicture.asset(groupSVG)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignUp()));
        },
        child: Text(
          'Skip',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
