import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/widget/menu/contact.dart';
import 'package:real_state/widget/menu/logo.dart';
import 'package:real_state/widget/menu/social_aacounts.dart';
import 'package:real_state/widget/menu/goals.dart';

class SIdeMenu extends StatelessWidget {
  const SIdeMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ////login
              Logo(),

              ///
              Padding(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    Contact(),
                    Divider(),
                    Goals(),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: kDefaultPadding / 2,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/icons/download.svg"),
                          SizedBox(
                            width: kDefaultPadding / 2,
                          ),
                          Text("Download Brochre")
                        ],
                      ),
                    ),
                    ///////
                    SocialAacounts(),

                    ///
                  ],
                ),
              ),

              ///
            ],
          ),
        ),
      ),
    );
  }
}
