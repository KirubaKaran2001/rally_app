import 'package:flutter/material.dart';
import 'package:rally_app/styles/text_styles.dart';

import '../components/homepage_elements.dart';
import '../components/rally_nav_rail.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          const RallyNavRail(),
          const SizedBox(
            width: 20,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    color:Color(0xff37eeba) ,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CardSeeAll(
                  buttonText: 'SEE ALL',
                ),
                Row(
                  children: const [
                    Expanded(
                      child: HeaderCard(
                        cardName: 'Budgets',
                        cardAmount: '48,000.90',
                      ),
                    ),
                  ],
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
                const SizedBox(
                  height: 10,
                ),
                const CardSeeAll(
                  buttonText: 'SEE ALL',
                ),
              ],
            ),
          ),
          Expanded(
            flex: 35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                HeaderCard(
                  cardName: 'Bills',
                  cardAmount: '1,343.23',
                ),
                SizedBox(
                  height: 10,
                ),
                CardDetails(
                  cardDesc: 'RedPay Credit',
                  subtitle: 'Mar 21',
                  amount: '45.96', 
                  color: Color(0Xfffcdc78),
                ),
                CardDetails(
                  cardDesc: 'Rent',
                  subtitle: 'Feb 12',
                  amount: '1200.00', 
                    color: Color(0Xfffb6952),
                ),
                CardDetails(
                  cardDesc: 'TabFine Credit',
                  subtitle: 'Jan 30',
                  amount: '34.56', 
                  color: Color(0Xfffdd7d0)
                ),
                SizedBox(
                  height: 10,
                ),
                CardSeeAll(
                  buttonText: 'SEE ALL',
                ),
              ],
            ),
          ),
          Expanded(
            flex: 30,
            child: Container(
              color: const Color(0Xff33333e),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 30,
                    ),
                    child: Text(
                      'Alerts',
                      style: primaryTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    color: const Color(0Xff33333e),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          AlertData(
                            alertText:
                                'Heads up, you\'ve used up 90% of shopping budget for this month.',
                            alertIcon: Icons.sort,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          AlertData(
                            alertText:
                                'You\'ve Spent\$120 on Restaraunts.',
                            alertIcon: Icons.sort,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          AlertData(
                            alertText:
                                'You\'ve Spent\$13 in ATM fees this month. ',
                            alertIcon: Icons.wallet,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          AlertData(
                            alertText:
                                'Good work! Your checking account is 4% higher than last month.',
                            alertIcon: Icons.attach_money,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          AlertData(
                            alertText:
                                'Increase your potential tax deduction! Assign categories to 16 unassigned transactions.',
                            alertIcon: Icons.block,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
  }
}
