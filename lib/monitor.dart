import 'package:flutter/material.dart';

class MonitorPage extends StatefulWidget {
  const MonitorPage({Key? key}) : super(key: key);

  @override
  State<MonitorPage> createState() => _MonitorPage();
}

class _MonitorPage extends State<MonitorPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
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
        child: Column(
          children: [
            Image.asset("assets/images/HealthAI.png"),
            SizedBox(
              height: height * 0.05,
            ),
            Text(
              "Get monitored wherever\n        you are located",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SofiaPro',
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  fixedSize: Size(width * 0.85, height * 0.06),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset("assets/images/hospital.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Monitoring From Hospital',
                  style: TextStyle(
                      color: Color.fromRGBO(65, 68, 113, 1),
                      fontSize: 20,
                      fontFamily: 'SofiaPro',
                      fontWeight: FontWeight.w500),
                ),
              ]),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(65, 68, 113, 1),
                    fixedSize: Size(width * 0.85, height * 0.06),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("assets/images/home.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Monitoring From Home ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'SofiaPro',
                        fontWeight: FontWeight.w500),
                  ),
                ])),
            SizedBox(
              height: height * 0.05,
            ),
            Text(
              "Get monitored from",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SofiaPro',
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "supported devices",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SofiaPro',
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  fixedSize: Size(width * 0.85, height * 0.06),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset("assets/images/watch.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Smart Watch',
                  style: TextStyle(
                      color: Color.fromRGBO(65, 68, 113, 1),
                      fontSize: 20,
                      fontFamily: 'SofiaPro',
                      fontWeight: FontWeight.w500),
                ),
              ]),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(65, 68, 113, 1),
                    fixedSize: Size(width * 0.85, height * 0.06),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("assets/images/medical.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Medical Wirings',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'SofiaPro',
                        fontWeight: FontWeight.w500),
                  ),
                ])),
            SizedBox(
              height: height * 0.05,
            ),
            Text(
              "Final step, Scan the QR code",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SofiaPro',
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(65, 68, 113, 1),
                    fixedSize: Size(width * 0.85, height * 0.06),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("assets/images/camera.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Use Camera',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'SofiaPro',
                        fontWeight: FontWeight.w500),
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}
