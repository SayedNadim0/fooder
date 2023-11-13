import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fooder/src/data/style/colors.dart';
import 'package:fooder/src/modules/provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({super.key});

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    var myData = Provider.of<Data>(context);
    return Drawer(
        child: ListView.builder(
      itemCount: myData.drawer_list.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          return DrawerHeader(
            padding: EdgeInsets.zero,
            child: Card(
              child: Image.asset(
                myData.drawer_header,
                fit: BoxFit.cover,
              ),
            ),
          );
        }
        return Card(
          child: ListTile(
            //leading: myData.drawer_list[index]['drawer_icon'],
            leading: Icon(
              Icons.add,
              color: CustomColors.orangeColor,
              size: 25.sp,
            ),
            title: Text(
              "${myData.drawer_list[index]['drawer_list_title']},",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  color: CustomColors.orangeColor),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: CustomColors.orangeColor,
              size: 20.sp,
            ),
          ),
        );
      },
    ));
  }
}
