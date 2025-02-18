import 'package:auth_getx/views/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetX auth',
      theme: ThemeData(
        primaryColor: Color(0xFF493AD5)
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}