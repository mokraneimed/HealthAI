import 'package:flutter/material.dart';
import 'package:flutter_application_1/button.dart';

class ShiftPage extends StatefulWidget {
  const ShiftPage({Key? key}) : super(key: key);

  @override
  State<ShiftPage> createState() => _ShiftPage();
}

class _ShiftPage extends State<ShiftPage> {
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
                height: height * 0.05,
              ),
              Text(
                "Status : On shift",
                style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Check on patients monitored on",
                style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Text(
                "your respective floor",
                style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                width: width * 0.85,
                padding: EdgeInsets.symmetric(vertical: width * 0.01),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(65, 68, 113, 1),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: width * 0.07),
                      child: Row(
                        children: [
                          Image.asset("assets/images/hospital_white.png"),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "Batna Province Hospital",
                            style: TextStyle(
                                fontFamily: 'SofiaPro',
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
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
                        children: [
                          Image.asset("assets/images/location_white.png"),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "Floor 03, Hallway 04",
                            style: TextStyle(
                                fontFamily: 'SofiaPro',
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
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
                        children: [
                          Image.asset("assets/images/time.png"),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "08:00 - 20:00",
                            style: TextStyle(
                                fontFamily: 'SofiaPro',
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
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
                        children: [
                          Image.asset("assets/images/patient_white.png"),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "13 Patients under monitoring",
                            style: TextStyle(
                                fontFamily: 'SofiaPro',
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Monitored Patients",
                style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, index) {
                        return Column(children: [
                          Container(
                            width: width * 0.85,
                            padding:
                                EdgeInsets.symmetric(vertical: width * 0.01),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: width * 0.07),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/user.png"),
                                      SizedBox(
                                        width: width * 0.03,
                                      ),
                                      Text(
                                        "Moncef Samai",
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
                                    children: [
                                      Image.asset("assets/images/bed.png"),
                                      SizedBox(
                                        width: width * 0.03,
                                      ),
                                      Text(
                                        "Floor 03, Hallway 04, Ch 116",
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
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Color.fromRGBO(10, 132, 87, 1),
                                      fixedSize:
                                          Size(width * 0.7, height * 0.06),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/ok.png"),
                                        SizedBox(
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          "Normal State",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'SofiaPro',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ]),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          )
                        ]);
                      }))
            ])));
  }
}
