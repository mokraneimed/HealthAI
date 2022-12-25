import 'package:flutter/material.dart';

int curentIndex = 0;

class HospitalsPage extends StatefulWidget {
  const HospitalsPage({Key? key}) : super(key: key);

  @override
  State<HospitalsPage> createState() => _HospitalsPage();
}

class _HospitalsPage extends State<HospitalsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(vertical: height * 0.075),
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
              height: height * 0.65,
              child: Column(
                children: [
                  Text(
                    "Hospitals near you :",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'SofiaPro',
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (BuildContext context, index) {
                          return Column(children: [
                            (index != curentIndex)
                                ? GestureDetector(
                                    onTap: () => changeIndex(index),
                                    child: Container(
                                      width: width * 0.85,
                                      padding: EdgeInsets.symmetric(
                                          vertical: width * 0.01),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: width * 0.07),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    "assets/images/hospital.png"),
                                                SizedBox(
                                                  width: width * 0.03,
                                                ),
                                                Text(
                                                  "Batna Province Hospital",
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
                                                left: width * 0.07),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    "assets/images/location.png"),
                                                SizedBox(
                                                  width: width * 0.03,
                                                ),
                                                Text(
                                                  "Rue 1954, N:16",
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
                                                left: width * 0.07),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    "assets/images/patient.png"),
                                                SizedBox(
                                                  width: width * 0.03,
                                                ),
                                                Text(
                                                  "128 Patients",
                                                  style: TextStyle(
                                                      fontFamily: 'SofiaPro',
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))
                                : GestureDetector(
                                    onTap: () => changeIndex(index),
                                    child: Container(
                                      width: width * 0.85,
                                      padding: EdgeInsets.symmetric(
                                          vertical: width * 0.01),
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(65, 68, 113, 1),
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: width * 0.07),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    "assets/images/hospital_white.png"),
                                                SizedBox(
                                                  width: width * 0.03,
                                                ),
                                                Text(
                                                  "Batna Province Hospital",
                                                  style: TextStyle(
                                                      fontFamily: 'SofiaPro',
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: width * 0.07),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    "assets/images/location_white.png"),
                                                SizedBox(
                                                  width: width * 0.03,
                                                ),
                                                Text(
                                                  "Rue 1954, N:16",
                                                  style: TextStyle(
                                                      fontFamily: 'SofiaPro',
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: width * 0.07),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    "assets/images/patient_white.png"),
                                                SizedBox(
                                                  width: width * 0.03,
                                                ),
                                                Text(
                                                  "128 Patients",
                                                  style: TextStyle(
                                                      fontFamily: 'SofiaPro',
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                            SizedBox(
                              height: height * 0.025,
                            ),
                          ]);
                        }),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(65, 68, 113, 1),
                          fixedSize: Size(width * 0.7, height * 0.06),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text(
                        'Submit',
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
  }

  void changeIndex(int index) {
    setState(() {
      curentIndex = index;
    });
  }
}
