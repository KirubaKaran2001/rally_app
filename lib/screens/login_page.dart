import 'package:flutter/material.dart';
import 'package:rally_app/components/login_text_field.dart';
import 'package:rally_app/components/signup_element.dart';
import 'package:rally_app/styles/text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    debugPrint(MediaQuery.of(context).size.width.toString());
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff33333e),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton.extended(
              backgroundColor: const Color(0xffeff3f3),
              onPressed: () {},
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
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            'https://play-lh.googleusercontent.com/ZaGzaQC0aHnAgAcTIKu3t8q44OIlhiSH7m4ML2iJ4Yd-F6qnD3bDU8nMutQzPo7-AOn6=w240-h480-rw',
                            height: 100,
                            width: 100,
                          ),
                          Text(
                            "Login to Rally",
                            style: headerTextStyle,
                          ),
                        ],
                      ),
                      if (MediaQuery.of(context).size.width > 755)
                        const SignUpElement(),
                    ],
                  ),
                  if (MediaQuery.of(context).size.width < 755)
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: SignUpElement(),
                    ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: (MediaQuery.of(context).size.width > 755)
                    ? MediaQuery.of(context).size.width * 0.40
                    : MediaQuery.of(context).size.width * 0.80,
                child: const LoginTextField(),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
