
import 'package:flutter/material.dart';
import 'screen/welcome.dart';
import 'screen/temperature.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() => _TemperatureAppState();
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool showWelcomeScreen = true;

  void switchToConverter() {
    setState(() {
      showWelcomeScreen = false; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: showWelcomeScreen
              ? Welcome(onStart: switchToConverter) // Pass the callback here
              : Temperature(),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}