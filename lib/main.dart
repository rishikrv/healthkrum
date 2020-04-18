import 'package:flutter/material.dart';
import 'package:healthkrum/splash_screen.dart';

void main() => runApp(Splash());

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthkrum',
      home: SplashScreen1(),
    );
  }
}
