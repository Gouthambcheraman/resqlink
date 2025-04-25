import 'package:flutter/material.dart';
import 'package:resqlink/screens/donations.dart';
import 'package:resqlink/screens/earthquake.dart';
import 'package:resqlink/screens/home.dart';
import 'package:resqlink/screens/login.dart';
import 'package:resqlink/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1B1919)),
          useMaterial3: true,
        ),
        home: Login());
  }
}
