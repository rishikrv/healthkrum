import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SimpleLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleLineChart(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: charts.LineChart(seriesList, animate: animate),
    );
  }

}

/// Sample linear data type.
class SampleData {
  final int year;
  final int sales;

  SampleData(this.year, this.sales);
}
