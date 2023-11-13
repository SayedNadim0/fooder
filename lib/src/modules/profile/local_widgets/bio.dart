import 'package:flutter/material.dart';

import '../../../data/style/colors.dart';

class Bio extends StatefulWidget {
  const Bio({super.key});

  @override
  State<Bio> createState() => _BioState();
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
      width: MediaQuery.sizeOf(context).width / 1.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2),
        color: CustomColors.whiteColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "FULL STACK FLUTTER DEVELOPER",
              style: TextStyle(color: CustomColors.paragraphTextColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
            child: Text(
              "Hey, I'm Sayed Nadim Uddin, living in Feni, Bangladesh! I'm Full Stack Flutter Developer",
              style: TextStyle(
                color: CustomColors.headingTextColor,
              ),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
