import 'package:flutter/material.dart';

class PatientReports extends StatefulWidget {
  @override
  _PatientReportsState createState() => _PatientReportsState();
}

class _PatientReportsState extends State<PatientReports> {
  @override
  Widget build(BuildContext context) {
    var id = [
      "1",
      "2",
      "3",
      "4",
    ];

    var reportType = [
      "Blood Report",
      "Urine Reports",
      "Kidney Reports",
      "Nerve Reports",
    ];

    var location = [
      "Delhi",
      "Delhi",
      "Delhi",
      "Delhi",
    ];

    var lab = [
      "Lab-Name",
      "Lab-Name",
      "Lab-Name",
      "Lab-Name",
    ];

    var date = [
      "13/08/20XX",
      "13/08/20XX",
      "13/08/20XX",
      "13/08/20XX",
    ];

    var fee = [
      "3738",
      "5600",
      "1900",
      "6985",
    ];

    var reportStatus = [
      "Pending",
      "Pending",
      "Approved",
      "Waiting for approval"
    ];

    List<Color> colors = [
      Colors.redAccent,
      Colors.redAccent[100],
      Colors.teal[200],
      Colors.yellow[200]
    ];

    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 4, 0, 4),
                child: Container(
                  color: colors[position],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                id[position],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                location[position],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                lab[position],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              reportType[position],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Rs " + fee[position],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              date[position],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                              reportStatus[position],
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Divider(
                  height: 1.0,
                  color: Colors.grey,
                ),
              )
            ],
          );
        },
        itemCount: fee.length,
      ),
    );
  }
}
