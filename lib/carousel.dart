import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_screen.dart';
import 'package:flutter_application_1/third_screen.dart';
import 'package:flutter_application_1/last_screen.dart';

List pages = [SecondScreen(), ThirdScreen(), LastScreen()];

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);
  @override
  State<Carousel> createState() => _Carousel();
}

class _Carousel extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return PageView.builder(
      itemCount: 3,
      pageSnapping: true,
      itemBuilder: (context, pagePosition) {
        return pages[pagePosition];
      },
    );
  }
}
