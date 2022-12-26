import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/patient_home.dart';
import 'package:flutter_application_1/nurse_home.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider.dart';

class RolePage extends StatefulWidget {
  const RolePage({Key? key}) : super(key: key);

  @override
  State<RolePage> createState() => _RolePage();
}

class _RolePage extends State<RolePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Consumer<TaskProvider>(builder: (context, taskProvider, child) {
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
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/HealthAI.png"),
                    Container(
                        child: Column(children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(65, 68, 113, 1),
                            fixedSize: Size(width * 0.85, height * 0.07),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/admin.png"),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Text(
                                'Admin',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'SofiaPro',
                                    fontWeight: FontWeight.w500),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(65, 68, 113, 1),
                            fixedSize: Size(width * 0.85, height * 0.07),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/doctor.png"),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Text(
                                'Doctor',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'SofiaPro',
                                    fontWeight: FontWeight.w500),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PatientHome()),
                          );
                          taskProvider.init();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(65, 68, 113, 1),
                            fixedSize: Size(width * 0.85, height * 0.07),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/white_patient.png"),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Text(
                                'Patient',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'SofiaPro',
                                    fontWeight: FontWeight.w500),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NurseHome()),
                          );
                          taskProvider.init();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(65, 68, 113, 1),
                            fixedSize: Size(width * 0.85, height * 0.07),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/nurse.png"),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Text(
                                'Nurse',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'SofiaPro',
                                    fontWeight: FontWeight.w500),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(65, 68, 113, 1),
                            fixedSize: Size(width * 0.85, height * 0.07),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/ambu.png"),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Text(
                                'Ambulance',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'SofiaPro',
                                    fontWeight: FontWeight.w500),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                    ])),
                    Image.asset("assets/images/footer.png"),
                  ])));
    });
  }
}
