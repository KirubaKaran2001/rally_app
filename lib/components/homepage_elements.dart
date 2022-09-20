import 'package:flutter/material.dart';
import 'package:rally_app/styles/text_styles.dart';

class CardDetails2 extends StatelessWidget {
  final String? alertText;
  final String? subTitle;
  final String? amount;
  final String? directionalText;
  final Color? color;

    const CardDetails2(
     {
    @required this.alertText,
    @required this.subTitle,
    @required this.amount,
    Key? key,
   @required this.directionalText,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff33333e),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 90,
            color: color!,
            child:  Text(
              '',
              style: TextStyle(
                color: color!,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  alertText!,
                  style: secondaryTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subTitle!,
                      style: tertiaryTextStyle,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${amount!}',
                          style: primaryTextStyle,
                        ),
                        Text(
                          directionalText!,
                          style: primaryTextStyle,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class CardSeeAll extends StatelessWidget {
  final String? buttonText;

  const CardSeeAll({
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: const Color(0xff33333e),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            buttonText!,
            style: buttonTextStyle.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class AlertData extends StatelessWidget {
  final String? alertText;
  final IconData? alertIcon;
  const AlertData({
    @required this.alertText,
    @required this.alertIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            alertText!,
            style: secondaryTextStyle,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Icon(
          alertIcon!,
          color: Colors.white,
        ),
      ],
    );
  }
}

class CardDetails extends StatelessWidget {
  final String? cardDesc;
  final String? subtitle;
  final String? amount;
  final Color? color;

  const CardDetails({
    @required this.cardDesc,
    @required this.subtitle,
    @required this.amount,
    @required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff33333e),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 90,
            color: color!,
            child: Text(
              '',
              style: TextStyle(
                color: color!,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardDesc!,
                  style: secondaryTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subtitle!,
                      style: tertiaryTextStyle,
                    ),
                    Text(
                      '\$${amount!}',
                      style: primaryTextStyle,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderCard extends StatelessWidget {
  final String? cardName;
  final String? cardAmount;
  const HeaderCard({
    @required this.cardName,
    @required this.cardAmount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 0,
        color: const Color(0xff33333e),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardName!,
                style: primaryTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '\$${cardAmount!}',
                style: headerTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// 0xff1eb97f