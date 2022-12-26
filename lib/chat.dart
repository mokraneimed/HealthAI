import 'package:flutter/material.dart';
import 'package:flutter_application_1/scheudle.dart';
import 'package:flutter_application_1/button.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
            child: Column(children: [
              Image.asset("assets/images/HealthAI.png"),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                "Get in touch with your doctor",
                style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Button(
                  url: "assets/images/doctor.png",
                  back_color: Color.fromRGBO(65, 68, 113, 1),
                  text_color: Colors.white,
                  text: "Moncef Samai"),
              SizedBox(
                height: height * 0.02,
              ),
              Button(
                  url: "assets/images/add.png",
                  back_color: Color.fromRGBO(65, 68, 113, 1),
                  text_color: Colors.white,
                  text: "Add a request"),
              SizedBox(
                height: height * 0.06,
              ),
              Text(
                "Opened requests",
                style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (BuildContext context, index) {
                        return Column(children: [
                          Container(
                              width: width * 0.85,
                              padding:
                                  EdgeInsets.symmetric(vertical: width * 0.01),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(children: [
                                Container(
                                  margin: EdgeInsets.only(left: width * 0.07),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/black_time.png"),
                                      SizedBox(
                                        width: width * 0.03,
                                      ),
                                      Text(
                                        "08:00 - 12:00",
                                        style: TextStyle(
                                            fontFamily: 'SofiaPro',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: width * 0.07),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          "assets/images/black_message.png"),
                                      SizedBox(
                                        width: width * 0.03,
                                      ),
                                      Container(
                                        width: width * 0.6,
                                        child: Text(
                                          "Hello doctor, I took the medicine for two days and some strange symptoms occurred, you’ll find them in the attached image.",
                                          style: TextStyle(
                                              fontFamily: 'SofiaPro',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: width * 0.07),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/black_file.png"),
                                      SizedBox(
                                        width: width * 0.03,
                                      ),
                                      Text(
                                        "128 Patients",
                                        style: TextStyle(
                                            fontFamily: 'SofiaPro',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                              ])),
                          SizedBox(
                            height: height * 0.03,
                          ),
                        ]);
                      }))
            ])));
  }
}
