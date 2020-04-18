import 'package:flutter/material.dart';
import 'package:healthkrum/corporate_health_analysis.dart';
import 'package:healthkrum/feedback.dart';
import 'package:healthkrum/health_risk_analysis.dart';
import 'package:healthkrum/health_status.dart';
import 'package:healthkrum/pastappts.dart';
import 'package:healthkrum/Registeration.dart';
import 'package:healthkrum/patientreports.dart';
import 'package:healthkrum/todaysappt.dart';
import 'package:healthkrum/upcomingappt.dart';
import 'chart_widget.dart';
import 'package:healthkrum/landing_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:charts_flutter/flutter.dart' as charts;

// landing
// appointments,
//    healthstatus,
//    healthriskanalysis,
//    myreports,
//    prescription,
//    myorders,
//    eligibleservices,
//    feedback

String screenState = "";
String appbarTitle = "";
List<charts.Series> seriesList;

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    screenState = "landing";
    appbarTitle = "Healthcrum";
    seriesList = _createSampleData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // backgroundColor: Color(0xFF19A1B9),
        appBar: AppBar(
          backgroundColor: Color(0xFF19A1B9),
          title: Text(appbarTitle, style: TextStyle(color: Colors.white)),
          // centerTitle: true,
        ),
        drawer: Drawer(
          child: Container(
            color: Color(0xFF19A1B9),
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/logo1.jpeg'),
                          radius: 30.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Hr Name",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      screenState = "landing";
                      appbarTitle = "Heathcrum";
                      Navigator.pop(context);
                    });
                  },
                  title: Text("Home", style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.home, color: Colors.white),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      screenState = "Events";
                      appbarTitle = "Events and Articles";
                      Navigator.pop(context);
                    });
                  },
                  title: Text("Events and Articles",
                      style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.assignment, color: Colors.white),
                ),
                // ListTile(
                //   onTap: () {
                //     setState(() {
                //       screenState = "healthstatus";
                //       appbarTitle = "Health Status";
                //       Navigator.pop(context);
                //     });
                //   },
                //   title: Text("Health Status",
                //       style: TextStyle(color: Colors.white)),
                //   leading: Icon(Icons.image, color: Colors.white),
                // ),
                ListTile(
                  onTap: () {
                    setState(() {
                      screenState = "healthriskanalysis";
                      appbarTitle = "Overall Health Status";
                      Navigator.pop(context);
                    });
                  },
                  title: Text("Overall Health Status",
                      style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.favorite, color: Colors.white),
                ),
                // ListTile(
                //   onTap: () {
                //     setState(() {
                //       screenState = "myreports";
                //       appbarTitle = "My Reports";
                //       Navigator.pop(context);
                //     });
                //   },
                //   title:
                //       Text("My Reports", style: TextStyle(color: Colors.white)),
                //   leading: Icon(Icons.assignment, color: Colors.white),
                // ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Registeration(),
                      ),
                    );
                  },
                  title: Text("Registration",
                      style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.assignment, color: Colors.white),
                ),
                // ListTile(
                //   title:
                //       Text("My Orders", style: TextStyle(color: Colors.white)),
                //   leading: Icon(Icons.shopping_basket, color: Colors.white),
                // ),
                ListTile(
                  title: Text("Employee tracking",
                      style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.gps_fixed, color: Colors.white),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      screenState = "corporatehealthanalysis";
                      appbarTitle = "Corporate Health Analysis";
                      Navigator.pop(context);
                    });
                  },
                  title:
                      Text("Corporate Health Analysis", style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.trending_up ,color: Colors.white),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      screenState = "feedback";
                      appbarTitle = "Feeback";
                      Navigator.pop(context);
                    });
                  },
                  title:
                      Text("Feedback", style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.feedback, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        body: BodyWidget(),
      ),
    );
  }

  static List<charts.Series<SampleData, int>> _createSampleData() {
    final data = [
      SampleData(0, 5),
      SampleData(1, 25),
      SampleData(2, 80),
      SampleData(3, 30),
      SampleData(4, 52),
    ];

    return [
      charts.Series<SampleData, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (SampleData sales, _) => sales.year,
        measureFn: (SampleData sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (screenState == "landing") {
      return Container(
        child: SearchDoctor(),
      );
    } else if (screenState == "Events") {
      return Center(
        child: Container(
          color: Color(0xFF19A1B9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => UpcomingAppts(),
                    ),
                  );
                },
                child: Container(
                  height: 100,
                  width: 300,
                  child: Card(
                    child: Center(
                      child: Text(
                        "Events",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => TodaysAppts(),
                    ),
                  );
                },
                child: Container(
                  height: 100,
                  width: 300,
                  child: Card(
                    child: Center(
                      child: Text(
                        "Articles",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      );
    } else if (screenState == "healthstatus") {
      return Container(
        child: HealthStatus(),
      );
    } else if (screenState == "healthriskanalysis") {
      return Container(
        child: HealthRiskAnalysis(),
      );
    } else if (screenState == "feedback") {
      return Container(
        child: FeedBack(),
      );
    } else if (screenState == "Registeration") {
      return Container(child: Registeration());
    } else if (screenState == "myreports") {
      return Container(child: Registeration());
    }
    else if (screenState == "corporatehealthanalysis") {
      return Container(child: CorporateHealthAnalysis());
    } 
    else {
      return Container();
    }
  }
}
