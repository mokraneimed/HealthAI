import 'package:flutter/material.dart';

List days = [
  "Today",
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday"
];
List doctors = [2, 2, 1, 2, 1, 1, 2];

class ScheudlePage extends StatefulWidget {
  const ScheudlePage({Key? key}) : super(key: key);

  @override
  State<ScheudlePage> createState() => _ScheudlePage();
}

class _ScheudlePage extends State<ScheudlePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            width: width,
            height: height,
            padding: EdgeInsets.only(top: height * 0.08),
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
                height: height * 0.02,
              ),
              Container(
                height: height * 0.7,
                child: ListView.builder(
                    itemCount: days.length,
                    itemBuilder: (BuildContext context, index1) {
                      return Column(children: [
                        Row(
                          children: [
                            Image.asset("assets/images/line1.png"),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            Text(
                              days[index1],
                              style: TextStyle(
                                  fontFamily: 'SofiaPro',
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Column(
                          children: [
                            ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: doctors[index1],
                                itemBuilder: (BuildContext context, index2) {
                                  return Column(children: [
                                    Container(
                                      width: width * 0.85,
                                      padding: EdgeInsets.symmetric(
                                          vertical: width * 0.01),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: width * 0.03),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  "assets/images/black_doctor.png"),
                                              SizedBox(
                                                width: width * 0.03,
                                              ),
                                              Text(
                                                "Moncef Samai",
                                                style: TextStyle(
                                                    fontFamily: 'SofiaPro',
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: width * 0.03),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  "assets/images/black_agenda.png"),
                                              SizedBox(
                                                width: width * 0.03,
                                              ),
                                              Text(
                                                "25/12/2022",
                                                style: TextStyle(
                                                    fontFamily: 'SofiaPro',
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                              SizedBox(
                                                width: width * 0.03,
                                              ),
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
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                      ]),
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                  ]);
                                })
                          ],
                        )
                      ]);
                    }),
              ),
            ])));
  }
}
