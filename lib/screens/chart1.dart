import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

import '../../components/homepage_elements.dart';

class Budgets extends StatelessWidget {
  Budgets({Key? key}) : super(key: key);
  final List<charts.Series<PieChartModel, String>> series = [
    charts.Series(
      id: "financial",
      data: [
        PieChartModel(
          description: "Red Pay Credit",
          balance: 46,
          color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
        ),
        PieChartModel(
          description: "Rent",
          balance: 1200,
          color: charts.ColorUtil.fromDartColor(Colors.red),
        ),
        PieChartModel(
          description: "Tab Fine",
          balance: 87,
          color: charts.ColorUtil.fromDartColor(Colors.green),
        ),
        PieChartModel(
          description: "Abc Loans",
          balance: 783,
          color: charts.ColorUtil.fromDartColor(Colors.green),
        ),
      ],
      domainFn: (PieChartModel series, _) => series.description,
      measureFn: (PieChartModel series, _) => series.balance,
      colorFn: (PieChartModel series, _) => series.color,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff33333e),
      appBar: ((MediaQuery.of(context).size.width <= 800)
          ? AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: const Color(0Xff33333e),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.bookmark_border,
                    ),
                    color: Colors.white,
                    onPressed: (() {
                      Navigator.pushNamed(context, '/home');
                    }),
                  ),
                  IconButton(
                    icon: const Icon(Icons.attach_money),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.money_off),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.account_balance),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            )
          : null),
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child: charts.PieChart(
                  series,
                  animate: true,
                ),
              ),
            ),
            const CardDetails(
              cardDesc: 'Red Pay Credit',
              subtitle: 'jan 29',
              amount: '45.76',
              color: Color(0Xff0d5d57),
            ),
            const CardDetails(
              cardDesc: 'Home Savings',
              subtitle: '5678',
              amount: '1,200.56',
              color: Color(0Xff1eb97f),
            ),
            const CardDetails(
              cardDesc: 'Car Savings',
              subtitle: '9101',
              amount: '87.33',
              color: Color(0xff37eeba),
            ),
            const CardDetails(
              cardDesc: 'Abc Loans',
              subtitle: 'Feb 8',
              amount: '783',
              color: Color(0xff37eeba),
            ),
          ],
        ),
      ),
    );
  }
}

class PieChartModel {
  String description;
  int balance;
  final charts.Color color;

  PieChartModel({
    required this.description,
    required this.balance,
    required this.color,
  });
}
