import 'package:flutter/material.dart';

import 'package:real_state/screens/home_screen.dart';
import 'package:real_state/widget/main/home_banner.dart';
import 'package:real_state/widget/main/icon_info.dart';
import 'package:real_state/widget/main/projects.dart';

import 'package:real_state/widget/main/recommendations.dart';

import '../../constants.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              HomeBanner(),
              IconInfo(),
              OurProjects(),

              ///
              Recommendations()
              //
            ],
          ),
        ),
      ),
    );
  }
}
