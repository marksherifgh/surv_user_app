import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './get_started.dart';

class SignUpD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
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
              height: 100,
            ),
            CircleAvatar(
              radius: 105,
              backgroundColor: Color(0xff2A292A),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 15, bottom: 5),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff0052D4),
                      child: Icon(
                        CupertinoIcons.camera_fill,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'Complete your profile',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Add your profile picture',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 15),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 10, right: 10),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => GetStarted()));
          },
          child: Icon(Icons.arrow_forward_ios),
          backgroundColor: Color(0xff0052D4),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
