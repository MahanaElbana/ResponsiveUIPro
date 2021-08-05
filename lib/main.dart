import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_state/constants.dart';

import 'package:real_state/widget/main/main_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Real_state",

      //----- copyWith allows us to copy a T and   -----//
      //----- pass in arguments that overwrite settable values.--//

      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(
              bodyColor: Colors.white,
            )
            .copyWith(
              bodyText1: TextStyle(color: Colors.yellow),
              bodyText2: TextStyle(color: kBodyTextColor),
            ),
      ),
      home: MainSection(),
    );
  }
}
