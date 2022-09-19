import 'package:flutter/material.dart';
import 'package:rally_app/styles/text_styles.dart';

class SignUpElement extends StatelessWidget {
  const SignUpElement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Don't Have an account ?",
          style: primaryTextStyle,
        ),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 15, 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(top: 10),
              primary: const Color(0xff33333e),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              side: const BorderSide(
                width: 1.0,
                color: Color(0xff1aa573),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 15, 20, 15),
              child: Text(
                'SIGN UP',
                style: buttonTextStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
