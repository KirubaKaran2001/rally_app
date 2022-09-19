import 'package:flutter/material.dart';
import 'package:rally_app/styles/text_styles.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xff26282f),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              labelText: 'Username',
              labelStyle: secondaryTextStyle,
              hintText: 'Please provide a Username.',
              hintStyle: secondaryTextStyle.copyWith(
                color: const Color(0xff1aa573),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: const Color(0xff26282f),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              labelText: 'Password',
              labelStyle: secondaryTextStyle,
              hintText: 'The password should be atleast 6 chars.',
              hintStyle: secondaryTextStyle.copyWith(
                color: const Color(0xff1aa573),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.check_circle_outline,
                  color: Color(0xff1aa573),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Remember Me',
                  style: secondaryTextStyle,
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff1aa573),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 15, 20, 15),
                child: Row(
                  children: [
                    const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'LOGIN',
                      style: buttonTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}