import 'package:flutter/material.dart';
import 'package:tp2/Screens/Components/SalatContainer.dart';
import 'package:tp2/Screens/Home/HomeScreen.dart';
import 'package:tp2/Screens/SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salati',
      debugShowCheckedModeBanner: false,
      home:SplashScreenPage(),
    );
  }
}

