import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  String _picked = "Good";
  String _picked2 = "Good";
  String _picked3 = "Good";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Feedback About Doctor",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  RadioButtonGroup(
                    orientation: GroupedButtonsOrientation.HORIZONTAL,
                    margin: const EdgeInsets.only(left: 12.0),
                    onSelected: (String selected) => setState(() {
                      _picked = selected;
                    }),
                    labels: <String>["Bad", "Average", "Good"],
                    picked: _picked,
                    itemBuilder: (Radio rb, Text txt, int i) {
                      return Row(
                        children: <Widget>[
                          rb,
                          txt,
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Feedback About Services",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  RadioButtonGroup(
                    orientation: GroupedButtonsOrientation.HORIZONTAL,
                    margin: const EdgeInsets.only(left: 12.0),
                    onSelected: (String selected) => setState(() {
                      _picked2 = selected;
                    }),
                    labels: <String>["Bad", "Average", "Good"],
                    picked: _picked2,
                    itemBuilder: (Radio rb2, Text txt, int i) {
                      return Row(
                        children: <Widget>[
                          rb2,
                          txt,
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Healthcrum Feedback",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  RadioButtonGroup(
                    orientation: GroupedButtonsOrientation.HORIZONTAL,
                   
                    onSelected: (String selected) => setState(() {
                      _picked3 = selected;
                    }),
                    labels: <String>["Bad", "Average", "Good"],
                    picked: _picked3,
                    itemBuilder: (Radio rb, Text txt, int i) {
                      return Row(
                        children: <Widget>[
                          rb,
                          txt,
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
