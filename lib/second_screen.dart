import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
                  Image.asset("assets/images/radio.png"),
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
                          "Real Time",
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
                          "Monitoring System",
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
                  )
                ],
              ),
            ),
            Image.asset("assets/images/footer.png"),
          ],
        ),
      ),
    );
  }
}
