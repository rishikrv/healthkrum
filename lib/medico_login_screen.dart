import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthkrum/verificaton_page_one.dart';

class MedicoLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(
        onPressed: () 
        {
          print("Moving on to next page");
          Navigator.push(context, MaterialPageRoute(
            builder: (_) => VerificationPageOne()
          ) );
        },
        backgroundColor: Color(0XFF31B4B8), // The blue color you see
        child: Icon(Icons.subdirectory_arrow_right),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                "Healthkrum",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(
              color: Color(0Xff31B4B8),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(120.0),
                bottomRight: Radius.circular(220.0),
              ),
            ),
          ),
          SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: RaisedButton(
              onPressed: () {
                print("Mobile number pressed");
              },
              child: Center(
                child: Text("Mobile Number"),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: RaisedButton(
              onPressed: () {
                print("Facebook login pressed");
              },
              child: Center(
                child: Text(
                  "Facebook",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: RaisedButton(
              onPressed: () {
                print("Google login pressed");
              },
              child: Center(
                child: Text(
                  "Google",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "By continuing, you agree to Terms & Conditions",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Text(" "),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
              color:  Color(0Xff31B4B8),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(180.0),
                topRight: Radius.circular(10.0),
              ),
            ),
              )
            ],
          )
        ],
      ),
    );
  }
}
