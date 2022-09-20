import 'package:flutter/material.dart';

import '../components/homepage_elements.dart';
import '../styles/text_styles.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            color: const Color(0xff33333e),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Alerts',
                        style: primaryTextStyle,
                      ),
                      Text(
                        'SEE ALL',
                        style: headerTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'Heads up, you\'ve used up 90% of shopping budget for this month.',
                          style: secondaryTextStyle,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.sort,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const HeaderCard(
            cardName: 'Accounts',
            cardAmount: '12,134.32',
          ),
          const SizedBox(
            height: 10,
          ),
          const CardDetails(
            cardDesc: 'Checking',
            subtitle: '1243',
            amount: '2,234.56',
            color: Color(0Xff0d5d57),
          ),
          const SizedBox(
            height: 10,
          ),
          const CardDetails(
            cardDesc: 'Home Savings',
            subtitle: '5678',
            amount: '3,534.56',
            color: Color(0Xff1eb97f),
          ),
          const SizedBox(
            height: 10,
          ),
          const CardDetails(
            cardDesc: 'Car Savings',
            subtitle: '9101',
            amount: '7,890.56',
            color: Color(0xff37eeba),
          ),
          const SizedBox(
            height: 10,
          ),
          const CardSeeAll(
            buttonText: 'SEE ALL',
          ),
          const SizedBox(
            height: 10,
          ),
          const HeaderCard(
            cardName: 'Bills',
            cardAmount: '1,343.23',
          ),
          const SizedBox(
            height: 10,
          ),
          const CardDetails(
            cardDesc: 'RedPay Credit',
            subtitle: 'Mar 21',
            amount: '45.96',
            color: Color(0Xfffcdc78),
          ),
          const SizedBox(
            height: 10,
          ),
          const CardDetails(
            cardDesc: 'Rent',
            subtitle: 'Feb 12',
            amount: '1200.00',
            color: Color(0Xfffb6952),
          ),
          const SizedBox(
            height: 10,
          ),
          const CardDetails(
            cardDesc: 'TabFine Credit',
            subtitle: 'Jan 30',
            amount: '34.56',
            color: Color(0Xfffdd7d0),
          ),
          const SizedBox(
            height: 10,
          ),
          const HeaderCard(
            cardName: 'Budgets',
            cardAmount: '48,000.90',
          ),
          const SizedBox(
            height: 10,
          ),
            const CardDetails2
           (
            alertText: 'Coffee Shops',
            subTitle: '45.79/\$78.80',
            amount: '24.51',
            directionalText: 'Left',
            color: Color(0Xffb2f2ff),
          ),
          const SizedBox(
            height: 10,
          ),
            const CardDetails2 (
            alertText: 'Groceries',
            subTitle: '16.90/\$178',
            amount: '153',
            directionalText: 'Left',
            color: Color(0Xffb2f2ff),
          ),
          const SizedBox(
            height: 10,
          ),
            const CardDetails2(
            alertText: 'Restaraunts',
            subTitle: '123.89/\$170',
            amount: '46.75',
            directionalText: 'Left',
            color: Color(0Xffb15dff),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
