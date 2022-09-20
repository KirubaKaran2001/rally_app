import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class PieChartModel {
  String year;
  int financial;
  final charts.Color color;

  PieChartModel({
    required this.year,
    required this.financial,
    required this.color,
  });
}

class ChartPage extends StatelessWidget {
  ChartPage({Key? key}) : super(key: key);
  final List<PieChartModel> data = [
    PieChartModel(
      year: "2014",
      financial: 250,
      color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
    ),
    PieChartModel(
      year: "2015",
      financial: 300,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    PieChartModel(
      year: "2016",
      financial: 100,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<PieChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (PieChartModel series, _) => series.year,
        measureFn: (PieChartModel series, _) => series.financial,
        colorFn: (PieChartModel series, _) => series.color,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pie Chart"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: charts.PieChart(
          series,
          animate: true,
        ),
      ),
    );
  }
}
