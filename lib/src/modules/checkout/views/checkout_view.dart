import '../checkout.dart';

class CheckOutView extends StatefulWidget {
   CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.white, elevation: 0),
      ),
      child: Scaffold(
        backgroundColor: CustomColors.fooderPrimary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(105),
          child: CheckOutAppBar(),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  CustomHeight(height: 15.0),
                  KeepSocialDistancing(),
                  CustomHeight(height: 15.0),
                  DeliverTo(),
                  CustomHeight(height: 15.0),
                  SizedBox(
                    height: 200.h,
                    child: MyBucket(),
                  ),
                  CustomHeight(height: 5.0),
                  Payment(),
                ],
              ),
            ),
            CheckoutBottom()
          ],
        ),
      ),
    );
  }
}
