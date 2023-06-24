import 'package:flutter/material.dart';
import 'package:social_media/screens/forgetPassword.dart';
import 'package:social_media/screens/resetPassword.dart';
import 'package:social_media/screens/verification.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: forgertPassword(),
    );
  }
}

