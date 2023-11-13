import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../modules/provider/provider.dart';
import '../style/colors.dart';
import 'custom_icons.dart';


class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic customIcons = CustomIcons();
    var AppBarView_data = Provider.of<Data>(context, listen: false);

    return AppBar(
      elevation: 0,
      backgroundColor: CustomColors.fooderPrimary,
      title: Text(
        "${AppBarView_data.appBarTitle}",
        style: GoogleFonts.blackOpsOne(
            fontSize: 25.sp, color: CustomColors.orangeColor),
      ),
      titleSpacing: 0,
      centerTitle: true,
      actions: [
        IconButton(
          icon: Stack(
            alignment: Alignment.topRight,
            children: [
              SvgPicture.string(customIcons.appBarIcons[0]),
              Positioned(
                left: 22,
                child: Container(
                  width: 10.w,
                  height: 10.h,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1.w,
                    ),
                    shape: BoxShape.circle,
                    color: CustomColors.stackColor,
                  ),
                ),
              ),
            ],
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
