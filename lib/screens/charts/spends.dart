import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

import '../../components/homepage_elements.dart';

class MoneySpends extends StatelessWidget {
  MoneySpends({Key? key}) : super(key: key);
  final List<charts.Series<PieChartModel, String>> series = [
    charts.Series(
      id: "financial",
      data: [
        PieChartModel(
          description: "Coffee Shops",
          balance: 25,
          color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
        ),
        PieChartModel(
          description: "Groceries",
          balance: 153,
          color: charts.ColorUtil.fromDartColor(Colors.red),
        ),
        PieChartModel(
          description: "Restaraunts",
          balance: 47,
          color: charts.ColorUtil.fromDartColor(Colors.green),
        ),
        PieChartModel(
          description: "clothing",
          balance: 44,
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
            const CardDetails2(
              alertText: 'Coffee Shops',
              subTitle: '45.79/\$78.80',
              amount: '24.51',
              directionalText: 'Left',
              color: Color(0Xffb2f2ff),
            ),
            const CardDetails2(
              alertText: 'Groceries',
              subTitle: '16.90/\$178',
              amount: '153',
              directionalText: 'Left',
              color: Color(0Xffb15dff),
            ),
            const CardDetails2(
              alertText: 'Restaraunts',
              subTitle: '123.89/\$170',
              amount: '46.75',
              directionalText: 'Left',
              color: Color(0Xff72deff),
            ),
            const CardDetails2(
              alertText: 'Clothing',
              subTitle: '243.89/\$70',
              amount: '46.75',
              directionalText: 'Left',
              color: Color(0Xff72deff),
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
