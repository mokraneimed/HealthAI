import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/HealthAI.png"),
            Container(
              child: Column(
                children: [
                  Container(
                    width: width * 0.85,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 0),
                            child: const Text(
                              'ID Card Number',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'SofiaPro',
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromRGBO(65, 68, 113, 1)),
                            )),
                        SizedBox(height: height * 0.005),
                        Container(
                          width: width * 0.85,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(65, 68, 113, 0.7)),
                              color: Color.fromRGBO(79, 207, 234, 0.1),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextField(
                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    width: width * 0.85,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 0),
                            child: const Text(
                              'Email',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'SofiaPro',
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromRGBO(65, 68, 113, 1)),
                            )),
                        SizedBox(height: height * 0.005),
                        Container(
                          width: width * 0.85,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(65, 68, 113, 0.7)),
                              color: Color.fromRGBO(79, 207, 234, 0.1),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextField(
                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    width: width * 0.85,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 0),
                            child: const Text(
                              'Password',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'SofiaPro',
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromRGBO(65, 68, 113, 1)),
                            )),
                        SizedBox(height: height * 0.005),
                        Container(
                          width: width * 0.85,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(65, 68, 113, 0.7)),
                              color: Color.fromRGBO(79, 207, 234, 0.1),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextField(
                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(65, 68, 113, 1),
                            fixedSize: Size(width * 0.85, height * 0.06),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'SofiaPro',
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          fixedSize: Size(width * 0.85, height * 0.06),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/google.png"),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              'Sign up with Google',
                              style: TextStyle(
                                  color: Color.fromRGBO(65, 68, 113, 1),
                                  fontSize: 20,
                                  fontFamily: 'SofiaPro',
                                  fontWeight: FontWeight.w500),
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: Color.fromRGBO(65, 68, 113, 0.7),
                              fontSize: 20,
                              fontFamily: 'SofiaPro'),
                          text: 'Not having an account ?',
                          children: [
                        TextSpan(
                            text: '  Sign up',
                            style: TextStyle(
                                color: Color.fromRGBO(65, 68, 113, 1),
                                fontSize: 20,
                                fontFamily: 'SofiaPro',
                                fontWeight: FontWeight.w600))
                      ])),
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
