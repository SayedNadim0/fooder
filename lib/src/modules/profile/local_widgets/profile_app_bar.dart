import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/style/colors.dart';

class ProfileAppBar extends StatefulWidget implements PreferredSizeWidget{
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  const ProfileAppBar({super.key});

  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios),
      ),
      centerTitle: true,
      elevation: 0,
      title: Text(
        "Profile",
        style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 24.sp,
            color: CustomColors.headingTextColor),
      ),
    );
  }
}
