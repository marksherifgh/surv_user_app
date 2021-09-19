import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'text_input_form.dart';
import './sign_up_D.dart';

class SignUpB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaquerySize = MediaQuery.of(context).size;
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
              height: mediaquerySize.height * 0.1,
            ),
            SizedBox(
              width: 290,
              child: Text(
                'Enter your\nmobile number',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('We will send you confirmation code',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300)),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Container(
                  width: 89,
                  margin: EdgeInsets.only(left: 45, right: 8, top: 7),
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2A292A)),
                    child: Center(
                      child: DropdownButton(
                        dropdownColor: Color(0xff2A292A),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                        icon: Icon(Icons.keyboard_arrow_down_sharp),
                        underline: SizedBox(),
                        onChanged: (value) {},
                        value: '+20',
                        items: <String>['+20']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                TextInputForm(
                  width: 228,
                ),
              ],
            ),
            SizedBox(
              height: 46,
            ),
            SizedBox(
              width: 290,
              child: Text(
                "By proceeding to the next step, you agree to our Terms and that you have read our Data Use Policy including our Cookie use.",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 10),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignUpD()));
        },
        child: Icon(Icons.arrow_forward_ios),
        backgroundColor: Color(0xff0052D4),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
