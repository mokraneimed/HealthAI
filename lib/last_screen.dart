import 'package:flutter/material.dart';
import 'package:flutter_application_1/carousel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider.dart';

class LastScreen extends StatefulWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  State<LastScreen> createState() => _LastScreen();
}

class _LastScreen extends State<LastScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Consumer<TaskProvider>(builder: (context, taskProvider, child) {
      return Scaffold(
        body: Container(
          width: width,
          height: height,
          padding: EdgeInsets.symmetric(vertical: height * 0.08),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromRGBO(87, 214, 240, 0),
              Color.fromRGBO(79, 207, 234, 0.3)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/HealthAI.png"),
              Container(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset("assets/images/line1.png"),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Image.asset("assets/images/third.png"),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Image.asset("assets/images/line2.png"),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset("assets/images/line3.png"),
                          ),
                          SizedBox(
                            width: width * 0.07,
                          ),
                          const Text(
                            "AI Diagnosis Into",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'SofiaPro',
                                color: Color.fromRGBO(65, 68, 113, 1)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Smart Laboratories",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'SofiaPro',
                                color: Color.fromRGBO(65, 68, 113, 1)),
                          ),
                          SizedBox(
                            width: width * 0.07,
                          ),
                          Container(
                            child: Image.asset("assets/images/line4.png"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    ElevatedButton(
                        onPressed: () => taskProvider.splashIncrement(),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(65, 68, 113, 1),
                            fixedSize: Size(width * 0.6, height * 0.06),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'SofiaPro',
                              fontWeight: FontWeight.w500),
                        )),
                  ],
                ),
              ),
              Image.asset("assets/images/footer.png"),
            ],
          ),
        ),
      );
    });
  }
}
