import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';

class Contact extends StatelessWidget {
  const Contact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        contactInfo(
          title: 'Country',
          text: 'Japan',
        ),
        contactInfo(
          title: 'Email',
          text: 'email@website.com',
        ),
        contactInfo(
          title: 'Mobile',
          text: '+43 123 456 789',
        ),
        contactInfo(
          title: 'Website',
          text: 'my@website.com',
        ),
      ],
    );
  }

  Padding contactInfo({required title, required text}) {
    return Padding(
      padding: const EdgeInsets.only(
          top: kDefaultPadding / 2, bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title",
            style: TextStyle(color: Colors.white),
          ),
          Text(" $text ")
        ],
      ),
    );
  }
}
