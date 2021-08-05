import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image(
              image: AssetImage('assets/images/logo.png'),
              width: 100.0,
            ),
            Spacer(),
            Text("Estate"),
            Text(
              'Modern home with \n greate interior design',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
