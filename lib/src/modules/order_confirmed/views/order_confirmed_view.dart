import 'package:flutter/material.dart';
import 'package:fooder/src/data/style/colors.dart';

class OrderConfirmed extends StatefulWidget {
  const OrderConfirmed({super.key});

  @override
  State<OrderConfirmed> createState() => _OrderConfirmedState();
}

class _OrderConfirmedState extends State<OrderConfirmed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.fooderPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/delivery-amico.png"),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
              child: Text(
                "Your order is confirmed!",
                style: TextStyle(
                    fontSize: 26, color: CustomColors.headingTextColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Text(
                "we'll deliver your order immediately, \nmake sure your order put on the doorstep",
                textAlign: TextAlign.center,
                style: TextStyle(color: CustomColors.paragraphTextColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 55,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: CustomColors.orangeColor,
                  ),
                  child: Center(
                    child: Text(
                      "Check order status",
                      style: TextStyle(
                          color: CustomColors.whiteColor, fontSize: 17),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
