import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthkrum/home_page.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class VerificationPage2 extends StatefulWidget {
  VerificationPage2({Key key}) : super(key: key);

  @override
  _VerificationPage2State createState() => _VerificationPage2State();
}

class _VerificationPage2State extends State<VerificationPage2> {
  TextEditingController _otpController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pin code")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Enter code",
              style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            Text(
              "******",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.green),
              ),
            ),
            Text(
              "We have sent you an sms on +91 9876543210",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Colors.black26),
              ),
            ),
            Text(
              "with 6 digit verification code.",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Colors.black26),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 8.0, top: 10.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, bottom: 25.0, top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: PinCodeTextField(
                            autofocus: true,
                            controller: _otpController,
                            hideCharacter: true,
                            highlight: true,
                            highlightColor: Colors.blue,
                            defaultBorderColor: Colors.black26,
                            //  hasTextBorderColor: Colors.green,
                            maxLength: 6,
                            maskCharacter: "*",
                            onTextChanged: (text) {
                              setState(() {});
                            },
                            onDone: (text) {
                              print("DONE $text");
                              print("DONE CONTROLLER ${_otpController.text}");
                            },
                            wrapAlignment: WrapAlignment.spaceAround,
                            pinBoxDecoration: ProvidedPinBoxDecoration
                                .defaultPinBoxDecoration,
                            pinBoxWidth: 40,
                            pinTextStyle: TextStyle(fontSize: 30.0),
                            pinTextAnimatedSwitcherTransition:
                                ProvidedPinBoxTextAnimation.scalingTransition,
                            //pinBoxColor: Colors.black,
                            pinTextAnimatedSwitcherDuration:
                                Duration(milliseconds: 300),
//                    highlightAnimation: true,
                            highlightAnimationBeginColor: Colors.black,
                            highlightAnimationEndColor: Colors.white12,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        child: RaisedButton(
                          onPressed: () {
                            print("Moving to next page");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => HomePage(),
                              ),
                            );
                          },
                          child: Text("Submit",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(fontSize: 12.0))),
                          color: Color(0XFF31B4B8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "Did not receive the code?",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 12.0, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  child: Text(
                    "Re-Send",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 14.0, color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    // Execute function for get a call now
                  },
                  child: Text(
                    "Get a call now",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 14.0, color: Colors.blue),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
