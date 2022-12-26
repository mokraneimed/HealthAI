import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/third_screen.dart';

class Button extends StatelessWidget {
  String url;
  Color back_color;
  Color text_color;
  String text;
  Button(
      {Key? key,
      required this.url,
      required this.back_color,
      required this.text_color,
      required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: back_color,
          fixedSize: Size(width * 0.85, height * 0.06),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(url),
        SizedBox(
          width: width * 0.03,
        ),
        Text(
          text,
          style: TextStyle(
            color: text_color,
            fontSize: 20,
            fontFamily: 'SofiaPro',
            fontWeight: FontWeight.w500,
          ),
        )
      ]),
    );
  }
}
