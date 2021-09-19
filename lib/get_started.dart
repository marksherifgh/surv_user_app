import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 60,),
          SvgPicture.asset('assets/svgs/Layer7.svg'),
          SizedBox(height: 70),
          Text(
            'Congrats!',
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
              'You have a surv account now Enjoy lots of freaking offers and share it with your friends and loved ones.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 60),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Yalla Bena!',
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
          ),        ],
      ),
    ));
  }
}
