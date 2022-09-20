import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

import '../../components/homepage_elements.dart';

class ChartPage extends StatelessWidget {
  ChartPage({Key? key}) : super(key: key);
  final List<charts.Series<PieChartModel, String>> series = [
    charts.Series(
      id: "financial",
      data: [
        PieChartModel(
          description: "Checking",
          balance: 2235,
          color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
        ),
        PieChartModel(
          description: "Home Savings",
          balance: 3535,
          color: charts.ColorUtil.fromDartColor(Colors.red),
        ),
        PieChartModel(
          description: "Car Savings",
          balance: 7890,
          color: charts.ColorUtil.fromDartColor(Colors.red),
        ),
        PieChartModel(
          description: "Vacation",
          balance: 253,
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
      appBar: (MediaQuery.of(context).size.width <= 800)
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
          : null,
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
              cardDesc: 'Checking',
              subtitle: '1243',
              amount: '2,234.56',
              color: Color(0Xff0d5d57),
            ),
            const CardDetails(
              cardDesc: 'Home Savings',
              subtitle: '5678',
              amount: '3,534.56',
              color: Color(0Xff1eb97f),
            ),
            const CardDetails(
              cardDesc: 'Car Savings',
              subtitle: '9101',
              amount: '7,890.56',
              color: Color(0xff37eeba),
            ),
            const CardDetails(
              cardDesc: 'Vacation',
              subtitle: '3456',
              amount: '253',
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
