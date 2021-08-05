import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state/constants.dart';

class SocialAacounts extends StatelessWidget {
  const SocialAacounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: kDefaultPadding * 2,
        ),
        child: Container(
          height: 50,
          color: kSecondaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: SvgPicture.asset("assets/icons/github.svg"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: SvgPicture.asset("assets/icons/linkedin.svg"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: SvgPicture.asset("assets/icons/twitter.svg"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: SvgPicture.asset("assets/icons/dribble.svg"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
