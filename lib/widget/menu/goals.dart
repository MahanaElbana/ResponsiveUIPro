import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state/constants.dart';

class Goals extends StatelessWidget {
  const Goals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Text(
            "Goals",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        buildGoals(text: 'Planning stage'),
        buildGoals(text: 'Development'),
        buildGoals(text: 'Execution phase'),
        buildGoals(text: 'New way to living'),
      ],
    );
  }

  Padding buildGoals({required text}) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: kDefaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
