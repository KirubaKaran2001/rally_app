import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:rally_app/screens/chart1.dart';
import 'package:rally_app/screens/charts/chart.dart' as charts;
import 'package:rally_app/screens/charts/chart.dart';
import 'package:rally_app/screens/charts/spends.dart';
import 'package:rally_app/screens/home_screen.dart';
import 'package:rally_app/screens/login_page.dart';
import 'package:rally_app/screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Series<dynamic, String>> data;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        debugPrint('build route for ${settings.name}');
        var routes = <String, WidgetBuilder>{
          '/login': (BuildContext context) => const LoginPage(),
          '/home': (BuildContext context) => const HomeScreen(),
          '/accounts': (BuildContext context) => ChartPage(),
          '/bills': (BuildContext context) => Budgets(),
          '/total': (BuildContext context) =>  MoneySpends(),
          '/settings': (BuildContext context) =>  const Settings(),

        };

        WidgetBuilder? builder = routes[settings.name]!;

        return MaterialPageRoute(
          builder: (ctx) => builder(ctx),
        );
      },
    );
  }
}
