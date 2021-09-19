import 'package:flutter/material.dart';

class TextInputForm extends StatelessWidget {
  final double width;
  final double height;

  TextInputForm({this.width=326.0, this.height=44});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        validator: (val) {
          if (val == null || val.isEmpty) {
            return 'Please fill in the above box';
          }
          return null;
        },
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(9.0)),
            fillColor: Color(0xff2A292A),
            filled: true),
      ),
    );
  }
}
