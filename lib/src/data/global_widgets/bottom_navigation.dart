import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../modules/checkout/checkout.dart';
import '../../modules/checkout/views/checkout_view.dart';

import '../../modules/profile/views/profile_view.dart';
import '../../modules/wishlist/wishlist_view.dart';
import '../style/colors.dart';
import 'custom_icons.dart';


class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({super.key});

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  final localMetaData = CustomIcons();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (_selectedIndex) {
      case 0: Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
      case 1: Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOutView()));
      case 2: Navigator.push(context, MaterialPageRoute(builder: (context)=>WishList()));
      case 3: Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileView()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
          icon: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Icon(Icons.shopping_bag_outlined),
              Positioned(
                top: 15,
                left: 15,
                child: Container(
                  height: 10.h,
                  width: 10.w,
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
          label: 'Shopping',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'WishList',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: CustomColors.orangeColor,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }
}
