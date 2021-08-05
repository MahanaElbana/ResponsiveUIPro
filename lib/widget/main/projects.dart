import 'package:flutter/material.dart';
import 'package:real_state/models/projects.dart';
import 'package:real_state/responsive.dart';
import 'package:real_state/widget/main/project_card.dart';

import '../../constants.dart';

class OurProjects extends StatelessWidget {
  const OurProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Our projects",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.white),
        ),
        SizedBox(
          height: 10.0,
        ),
        Responsive(
          mobileLarge: gridviewBuilder(
            crossAxisCount: 2,
            spectRation: 1.7,
            itemCount: demoProjects.length,
            items: (context, index) {
              return ProjectsCard(
                demeo: demoProjects[index],
              );
            },
          ),
          tablet: gridviewBuilder(
            crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            spectRation: 0.7,
            itemCount: demoProjects.length,
            items: (context, index) {
              return ProjectsCard(
                demeo: demoProjects[index],
              );
            },
          ),
          desktop: gridviewBuilder(
            crossAxisCount: 3,
            spectRation: 0.75,
            itemCount: demoProjects.length,
            items: (context, index) {
              return ProjectsCard(
                demeo: demoProjects[index],
              );
            },
          ),
          mobile: gridviewBuilder(
            crossAxisCount: 1,
            spectRation: 1.7,
            itemCount: demoProjects.length,
            items: (context, index) {
              return ProjectsCard(
                demeo: demoProjects[index],
              );
            },
          ),
        ),
      ],
    );
  }

  GridView gridviewBuilder(
      {required int itemCount,
      required double spectRation,
      required IndexedWidgetBuilder items,
      required int crossAxisCount,
      required}) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demoProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 0.7,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
      ),
      itemBuilder: items,
    );
  }
}
