import 'package:flutter/material.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              // image: DecorationImage(
              //     image: NetworkImage(
              //         "https://cdn.beacons.ai/user_content/4ErDHyfZzBOkWX5lN6AeqFli0yM2/profile_developernoor.png?q=1672061217.2599726"),
              //     fit: BoxFit.cover),
        ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(120),
            child: Image.asset('assets/images/profile/N.png',
            //fit: BoxFit.cover,
            ),
          )
        ),
      ),
    );
  }
}
