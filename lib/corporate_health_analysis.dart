import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:healthkrum/home_page.dart';

class CorporateHealthAnalysis extends StatefulWidget {
  CorporateHealthAnalysis({Key key}) : super(key: key);

  @override
  _CorporateHealthAnalysisState createState() =>
      _CorporateHealthAnalysisState();
}

class _CorporateHealthAnalysisState extends State<CorporateHealthAnalysis> {
  String dropdownValue1 = 'Filter By';
  String dropdownValue2 = 'Select';
  String dropdownValue3 = 'Gender';
  List<charts.Series<OrdinalSales, String>> seriesList;
  String _picked = "Good";

  @override
  void initState() {
    super.initState();
    seriesList = _createSampleData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Card(
                    child: DropdownButton<String>(
                      value: dropdownValue1,
                      icon: Icon(Icons.expand_more),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue1 = newValue;
                        });
                      },
                      items: <String>['Filter By', 'Two', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Card(
                    child: DropdownButton<String>(
                      value: dropdownValue2,
                      icon: Icon(Icons.expand_more),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue2 = newValue;
                        });
                      },
                      items: <String>['Select', 'Two', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Card(
                    child: DropdownButton<String>(
                      value: dropdownValue3,
                      icon: Icon(Icons.expand_more),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue3 = newValue;
                        });
                      },
                      items: <String>['Gender', 'Two', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              "Age:",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
          RadioButtonGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            // margin: const EdgeInsets.only(left: 12.0),
            onSelected: (String selected) => setState(() {
              _picked = selected;
            }),
            labels: <String>["< 35 ", "35-40", "41-50", "> 50"],
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
          Container(
            margin: EdgeInsets.only(left: 12.0),
            width: 100,
            child: RaisedButton(
              color: Colors.blue,
              onPressed: () {},
              child: Center(
                child: Text("Filter"),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Text(
                          "Simple Bar Chart",
                          style: GoogleFonts.poppins(fontSize: 18.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                        child: Text(
                          "Bar chart",
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
                          child: charts.BarChart(
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
      ),
    );
  }

  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
