import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWorks extends StatefulWidget {
  final image;
  final workName;
  final Uri socialUrl;
  const MyWorks(
      {super.key,
      required this.image,
      required this.workName,
      required this.socialUrl});

  @override
  State<MyWorks> createState() => _MyWorksState();
}

class _MyWorksState extends State<MyWorks> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(widget.socialUrl);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFE9ECF0)),
          height: 62,
          width: MediaQuery.sizeOf(context).width / 1.1,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(widget.image))),
                ),
              ),
              Text(widget.workName)
            ],
          ),
        ),
      ),
    );
  }
}
