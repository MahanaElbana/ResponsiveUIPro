import 'package:flutter/material.dart';
import 'package:real_state/responsive.dart';

import '../../constants.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context,
                        icon: Icons.supervisor_account,
                        text: '67+',
                        label: 'clients',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context,
                        icon: Icons.location_on,
                        text: '139+',
                        label: 'Projects',
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding * 3,
                ),
                Row(
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context,
                        icon: Icons.public,
                        text: '30+',
                        label: 'Countries',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context,
                        icon: Icons.star,
                        text: '13k+',
                        label: 'Stars',
                      ),
                    )
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconInfo(
                  context,
                  icon: Icons.supervisor_account,
                  text: '67+',
                  label: 'clients',
                ),
                buildIconInfo(
                  context,
                  icon: Icons.location_on,
                  text: '139+',
                  label: 'Projects',
                ),
                buildIconInfo(
                  context,
                  icon: Icons.public,
                  text: '30+',
                  label: 'Countries',
                ),
                buildIconInfo(
                  context,
                  icon: Icons.star,
                  text: '13k+',
                  label: 'Stars',
                ),
              ],
            ),
    );
  }

  Column buildIconInfo(BuildContext context,
      {required text, required label, required IconData icon}) {
    return Column(
      children: [
        Icon(icon, size: 50.0),
        SizedBox(height: 10),
        Text(
          "$text",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: kPrimaryColor, fontSize: 30),
        ),
        Text(
          "$label",
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
