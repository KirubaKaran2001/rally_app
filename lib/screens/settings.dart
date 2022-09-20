import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rally_app/styles/text_styles.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0Xff33333e),
        appBar: (((MediaQuery.of(context).size.width <= 800)
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
            : null)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: const Color(0Xff33333e),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Manage Accounts',
                        style: primaryTextStyle,
                      ),
                    )
                  ],
                ),
              ),
              Card(
                color: const Color(0Xff33333e),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Tax Documents',
                          style: primaryTextStyle,
                        ))
                  ],
                ),
              ),
              Card(
                color: const Color(0Xff33333e),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Passcode and Touch Id',
                          style: primaryTextStyle,
                        ))
                  ],
                ),
              ),
              Card(
                color: const Color(0Xff33333e),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Notification',
                          style: primaryTextStyle,
                        ))
                  ],
                ),
              ),
              Card(
                color: const Color(0Xff33333e),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Personal Information',
                          style: primaryTextStyle,
                        ))
                  ],
                ),
              ),
              Card(
                color: const Color(0Xff33333e),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Paperless Settings',
                          style: primaryTextStyle,
                        ))
                  ],
                ),
              ),
              Card(
                color: const Color(0Xff33333e),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Find ATMs",
                        style: primaryTextStyle,
                      ),
                    )
                  ],
                ),
              ),
              Card(
                color: const Color(0Xff33333e),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Help',
                          style: primaryTextStyle,
                        ))
                  ],
                ),
              ),
              Card(
                color: const Color(0Xff33333e),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Sign Out',
                          style: primaryTextStyle,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
