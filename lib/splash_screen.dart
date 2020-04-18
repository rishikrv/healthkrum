import 'package:flutter/material.dart';
import 'package:healthkrum/location_page.dart';

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen1> {
  @override
  void initState() {
    // TO DO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return LocationPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
            
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/splash.png'),
                ),
              ),
            ),
          )
          // Container(
          //   alignment: Alignment.bottomCenter,
          //   child: LinearProgressIndicator(
          //     backgroundColor: Colors.black,
          //     valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
          //   ),
          // )
        ],
      ),
    );
  }
}
