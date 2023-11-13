import 'package:flutter/material.dart';
import 'package:fooder/src/data/style/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Data extends ChangeNotifier {
  final selectedValue = "Jl . Jayakatwang no 301";
  List<String> dropDownItems = [
    'Jl . Jayakatwang no 301',
    'Hl . Jayakatwang no 302',
    'Cl . Jayakatwang no 401',
    'DL . Jayakatwang no 801',
  ];

  String appBarTitle = "Fooder";

  //Drawer
  String drawer_header = "assets/images/drawer_header.jpg";
  dynamic drawer_list = [
    {'drawer_list_title': 'Home', 'drawer_icon': Icons.home},
    {'drawer_list_title': 'Home', 'drawer_icon': Icons.home},
    {'drawer_list_title': 'Profile', 'drawer_icon': Icons.person},
    {'drawer_list_title': 'Order', 'drawer_icon': Icons.shopping_cart},
    {'drawer_list_title': 'Purchase History', 'drawer_icon': Icons.payments},
    {'drawer_list_title': 'Favorite', 'drawer_icon': Icons.favorite},
    {'drawer_list_title': 'Share', 'drawer_icon': Icons.share},
    {'drawer_list_title': 'Rate', 'drawer_icon': Icons.star},
    {'drawer_list_title': 'Settings', 'drawer_icon': Icons.settings},
  ];

  //Promo_Item
  dynamic promoItem = [
    {
      'loc': 'JI Jaya Katwang no 1, Ngasem',
      'verify': 'Verified',
      'rating': '5.0',
      'loc_no': '1',
      'open': '8am to pm',
      'img': 'https://e1.pxfuel.com/desktop-wallpaper/656/64/desktop-wallpaper-burger-steak-fire-food-https-www-pxwall-realistic-fast-food.jpg',
      'title': 'Burger',
      'subtitle': 'Delices Burger Ngasem',
      'Discount_Price': '1,249',
      'originalPrice': '2,999',
      'Price': '1500  ',
      'button': '5 Left',
      'rating_user1': '11',
      'rating_user2': '25',
      'rating_user3': '40',
      'rating_user4': '129',
      'rating_user5': '297',
      'rating_percent': '3.75',
      'rating_star': 3.75,
      'radius_percent_value': 0.75,
      'total_user': '(502)',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam vestibulum morbi blandit cursus risus at ultrices. Risus sed vulputate odio ut. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Elit ut aliquam purus sit amet. Cursus turpis massa tincidunt dui. Adipiscing elit duis tristique sollicitudin nibh sit amet commodo. In mollis nunc sed id. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Dis parturient montes nascetur ridiculus mus mauris vitae ultricies. Tortor condimentum lacinia quis vel eros donec ac. Ante in nibh mauris cursus mattis molestie.'
    },
    {
      'loc': 'JI Jaya Katwang no 2, Ngasem',
      'verify': 'Verified',
      'rating': '4.9',
      'loc_no': '2',
      'open': '8am to pm',
      'img':
          'https://e0.pxfuel.com/wallpapers/256/32/desktop-wallpaper-delicious-pizza-food.jpg',
      'title': 'Delicious Pizza',
      'subtitle': 'Italian pizza with sausage',
      'Discount_Price': '1,316',
      'originalPrice': '2,599',
      'Price': '1999',
      'button': '5 Left',
      'rating_user1': '13',
      'rating_user2': '36',
      'rating_user3': '111',
      'rating_user4': '913',
      'rating_user5': '1960',
      'total_user': '(2979)',
      'rating_percent': '4.65',
      'rating_star': 4.65,
      'radius_percent_value': 0.93,
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam vestibulum morbi blandit cursus risus at ultrices. Risus sed vulputate odio ut. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Elit ut aliquam purus sit amet. Cursus turpis massa tincidunt dui. Adipiscing elit duis tristique sollicitudin nibh sit amet commodo. In mollis nunc sed id. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Dis parturient montes nascetur ridiculus mus mauris vitae ultricies. Tortor condimentum lacinia quis vel eros donec ac. Ante in nibh mauris cursus mattis molestie.'
    },
    {
      'loc': 'JI Jaya Katwang no 3, Ngasem',
      'verify': 'Verified',
      'loc_no': '3',
      'rating': '4.2',
      'open': '8am to pm',
      'img':
          'https://e1.pxfuel.com/desktop-wallpaper/476/517/desktop-wallpaper-best-5-sandwich-on-hip-chicken-sandwich.jpg',
      'title': 'Chicken Sandwich',
      'subtitle': 'Sandwich Ham Bread Food',
      'Discount_Price': '1,000',
      'originalPrice': '2,099',
      'button': '5 Left',
      'Price': '1799',
      'rating_user1': '37',
      'rating_user2': '78',
      'rating_user3': '185',
      'rating_user4': '780',
      'rating_user5': '1202',
      'total_user': '(2282)',
      'rating_percent': '4.32',
      'rating_star': 4.32,
      'radius_percent_value': 0.864,
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam vestibulum morbi blandit cursus risus at ultrices. Risus sed vulputate odio ut. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Elit ut aliquam purus sit amet. Cursus turpis massa tincidunt dui. Adipiscing elit duis tristique sollicitudin nibh sit amet commodo. In mollis nunc sed id. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Dis parturient montes nascetur ridiculus mus mauris vitae ultricies. Tortor condimentum lacinia quis vel eros donec ac. Ante in nibh mauris cursus mattis molestie.'
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam vestibulum morbi blandit cursus risus at ultrices. Risus sed vulputate odio ut. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Elit ut aliquam purus sit amet. Cursus turpis massa tincidunt dui. Adipiscing elit duis tristique sollicitudin nibh sit amet commodo. In mollis nunc sed id. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Dis parturient montes nascetur ridiculus mus mauris vitae ultricies. Tortor condimentum lacinia quis vel eros donec ac. Ante in nibh mauris cursus mattis molestie.',
      'loc': 'JI Jaya Katwang no 4, Ngasem',
      'verify': 'Verified',
      'loc_no': '4',
      'rating': '5.0',
      'open': '8am to pm',
      'img':
          'https://w0.peakpx.com/wallpaper/796/325/HD-wallpaper-fried-chicken-fried-food-fried-chicken-legs-fast-food.jpg',
      'title': 'Fired Chicken',
      'subtitle': 'Fried chicken legs fast food',
      'Discount_Price': '1,496',
      'originalPrice': '1,999',
      'Price': '1538',
      'button': '5 Left',
      'rating_user1': '20',
      'rating_user2': '25',
      'rating_user3': '90',
      'rating_user4': '500',
      'rating_user5': '650',
      'total_user': '(1285)',
      'rating_percent': '4.35',
      'rating_star': 4.35,
      'radius_percent_value': 0.87,
    },
    {
      'loc': 'JI Jaya Katwang no 5, Ngasem',
      'verify': 'Verified',
      'loc_no': '5',
      'rating': '3.8',
      'open': '8am to pm',
      'img':
          'https://w0.peakpx.com/wallpaper/74/336/HD-wallpaper-ymmy-koila-chicken-tikkha-muslim-cool-food-ramzan-fast.jpg',
      'title': 'Chiken Tikka',
      'subtitle': 'Ymmy koilla chiken tikka',
      'Discount_Price': '2,323',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam vestibulum morbi blandit cursus risus at ultrices. Risus sed vulputate odio ut. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Elit ut aliquam purus sit amet. Cursus turpis massa tincidunt dui. Adipiscing elit duis tristique sollicitudin nibh sit amet commodo. In mollis nunc sed id. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Dis parturient montes nascetur ridiculus mus mauris vitae ultricies. Tortor condimentum lacinia quis vel eros donec ac. Ante in nibh mauris cursus mattis molestie.',
      'originalPrice': '1,599',
      'button': '5 Left',
      'Price': '4532',
      'rating_user1': '20',
      'rating_user2': '25',
      'rating_user3': '90',
      'rating_user4': '329',
      'rating_user5': '509',
      'total_user': '(973)',
      'rating_percent': '4.31',
      'rating_star': 4.31,
      'radius_percent_value': 0.862,
    },
  ];

  String Review = "Review & Ratings";

  final promoImagesSvg = [''];

  //Food Details Data
  String Food_Details_AppBar_Title = "Food Details";

  notifyListeners();
}
