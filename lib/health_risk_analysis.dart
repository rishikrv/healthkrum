import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthkrum/chart_widget.dart';
import 'package:healthkrum/home_page.dart';

class HealthRiskAnalysis extends StatelessWidget {
  const HealthRiskAnalysis({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
           padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Card(
              color: Colors.greenAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                      child: Text(
                        "Any Health Risk",
                        style: GoogleFonts.poppins(fontSize: 18.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        "Progress health since last month",
                        style: GoogleFonts.poppins(fontSize: 12.0),
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Card(
                        child: SimpleLineChart(
                          seriesList,
                          animate: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 35.0,
        ),
      Expanded(
          child: Padding(
           padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Card(
              color: Colors.blueAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                      child: Text(
                        "Any Health Risk",
                        style: GoogleFonts.poppins(fontSize: 18.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        "Progress health since last month",
                        style: GoogleFonts.poppins(fontSize: 12.0),
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Card(
                        child: SimpleLineChart(
                          seriesList,
                          animate: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
