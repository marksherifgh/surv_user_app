import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './welcome.dart';
import './welcome_auth.dart';

void main() {
  runApp(MyApp());
}

final Map welcomeA = {
  'mainSVG': 'assets/svgs/Layer1.svg',
  'mainText':
      'We are so excited to take you on a surprising adventure,\nAre you ready?',
  'titleText': 'This is hello!',
  'groupSVG': 'assets/svgs/Group1.svg'
};

final Map welcomeB = {
  'mainSVG': 'assets/svgs/Layer2.svg',
  'mainText':
      'hundreds of offers and promo-codes posted daily on SURV by more then 1000+ different brand',
  'titleText': 'Save Money!',
  'groupSVG': 'assets/svgs/Group2.svg'
};

final Map welcomeC = {
  'mainSVG': 'assets/svgs/Layer3.svg',
  'mainText':
      'explore places, exclusive discounts, recommendations and more across surv',
  'titleText': 'Explore & enjoy!',
  'groupSVG': 'assets/svgs/Group3.svg'
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Surv',
        theme: ThemeData(
          fontFamily: GoogleFonts.openSans().fontFamily,
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.black,
        ),
        home: PageView(
          controller: PageController(initialPage: 0),
          children: [
            Welcome(
              mainSVG: welcomeA['mainSVG'],
              groupSVG: welcomeA['groupSVG'],
              titleText: welcomeA['titleText'],
              mainText: welcomeA['mainText'],
            ),
            Welcome(
              mainSVG: welcomeB['mainSVG'],
              groupSVG: welcomeB['groupSVG'],
              titleText: welcomeB['titleText'],
              mainText: welcomeB['mainText'],
            ),
            Welcome(
              mainSVG: welcomeC['mainSVG'],
              groupSVG: welcomeC['groupSVG'],
              titleText: welcomeC['titleText'],
              mainText: welcomeC['mainText'],
            ),
            WelcomeAuth()
          ],
        ));
  }
}
