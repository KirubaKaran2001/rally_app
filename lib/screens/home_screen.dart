import 'package:flutter/material.dart';
import 'package:rally_app/layouts/desktop_view.dart';
import 'package:rally_app/styles/text_styles.dart';

import '../layouts/mobile_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                        setState(() {
                           Navigator.pushNamed(context, '/home');
                        });
                       
                      }),
                    ),
                    IconButton(
                      icon: const Icon(Icons.attach_money),
                      color: Colors.white,
                      onPressed: () {setState(() {
                        Navigator.pushNamed(context, '/accounts');
                      });
                         
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.money_off),
                      color: Colors.white,
                      onPressed: () { setState(() {
                         Navigator.pushNamed(context, '/bills');
                      });
                       },
                    ),
                    IconButton(
                      icon: const Icon(Icons.account_balance),
                      color: Colors.white,
                      onPressed: () { setState(() {
                         Navigator.pushNamed(context, '/total');
                      });      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings),
                      color: Colors.white,
                      onPressed: () { setState(() {
                        Navigator.pushNamed(  context, '/settings');
                      });    },
                    ),
                  ],
                ),
              )
            : null,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton.extended(
              backgroundColor: const Color(0xffeff3f3),
              onPressed: () {
                Navigator.pop(context);
              },
              label: Text(
                'Back',
                style: buttonTextStyle,
              ),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: (MediaQuery.of(context).size.width > 800)
            ? const DesktopView()
            : const MobileView(),
      ),
    );
  }
}
