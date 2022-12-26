import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:flutter_application_1/status.dart';
import 'package:flutter_application_1/scheudle.dart';
import 'package:flutter_application_1/chat.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/role.dart';
import 'package:flutter_application_1/homepage_n.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/shift.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TaskProvider(),
        child: const MaterialApp(
          home: Home(),
        ));
  }
}
