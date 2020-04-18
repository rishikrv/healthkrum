import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthkrum/verification_page_2.dart';

class VerificationPageOne extends StatefulWidget {
  VerificationPageOne({Key key}) : super(key: key);

  @override
  _VerificationPageOneState createState() => _VerificationPageOneState();
}

class _VerificationPageOneState extends State<VerificationPageOne> {
  TextEditingController _codeController;
  TextEditingController _phoneController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF6F6F6),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              print("Do whatever you need here.....");
            },
          )
        ],
        backgroundColor: Color(0XFFF6F6F6),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child:
                Image.asset("assets/verification.png", height: 150, width: 200),
          ),
          Text("Enter your mobile number we will send"),
          Text("you the OTP to verify later"),
          SizedBox(
            height: 25.0,
          ),
          Container(
            
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: (value) {
                                // Do something here with the entered text
                              },
                              keyboardType: TextInputType.numberWithOptions(),
                              controller: _codeController,
                              decoration: InputDecoration(
                                focusColor: Colors.white,
                                hintText: "+91",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: (value) {
                                // Do something here with the entered text
                              },
                              keyboardType: TextInputType.numberWithOptions(),
                              controller: _phoneController,
                              decoration: InputDecoration(
                                focusColor: Colors.white,
                                hintText: "987654210",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 220.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => VerificationPage2(),
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
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
