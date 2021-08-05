import 'package:flutter/material.dart';
import 'package:real_state/models/projects.dart';

import '../../constants.dart';

class ProjectsCard extends StatelessWidget {
  final Project demeo;
  const ProjectsCard({
    required this.demeo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "${demeo.image}",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            demeo.title!,
            style: Theme.of(context).textTheme.subtitle1,
            overflow: TextOverflow.ellipsis,
          ),
          Expanded(
            child: Text(
              demeo.description!,
              style: TextStyle(height: 1.5),
            ),
          ),
          TextButton(onPressed: () {}, child: Text("More info >"))
        ],
      ),
    );
  }
}
