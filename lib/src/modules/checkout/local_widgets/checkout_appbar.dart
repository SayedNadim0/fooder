import '../checkout.dart';

class CheckOutAppBar extends StatefulWidget {
  const CheckOutAppBar({super.key});

  Size get preferredSize => Size.fromHeight(105);
  @override
  State<CheckOutAppBar> createState() => _CheckOutAppBarState();
}

class _CheckOutAppBarState extends State<CheckOutAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 105,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: CustomColors.orangeColor,),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'Checkout',
        style: TextStyle(color: CustomColors.headingTextColor, fontSize: 24.sp, fontWeight: FontWeight.normal),
      ),
    );
  }
}