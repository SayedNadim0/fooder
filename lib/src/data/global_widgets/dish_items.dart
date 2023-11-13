import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooder/src/modules/checkout/checkout.dart';
import '../../modules/checkout/views/checkout_view.dart';
import '../style/colors.dart';
import 'custom_icons.dart';

class DishItems extends StatelessWidget {
  final customIcons = CustomIcons();
  String dishImage,
      dishTitle,
      dishSubTitle,
      dishPrice,
      dishLeft,
      dishRegularPrice;
  bool favorite;
  dynamic onPress ;
  DishItems(
      {super.key,
      required this.dishImage,
      required this.dishTitle,
      required this.dishSubTitle,
      required this.dishPrice,
      required this.dishLeft,
        required this.onPress,
        required this.favorite,
        required this.dishRegularPrice});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.0),
          padding: const EdgeInsets.all(8),
          height: MediaQuery.sizeOf(context).height,
          width: 325,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(dishImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
              color: Colors.red),
        ),

        Positioned(
          top: 10,
          right: 10,
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              onTap: onPress,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: favorite ? Icon( Icons.favorite,color: Colors.deepOrange,) : Icon(Icons.favorite_border,),
              ),
            ),
          ),
        ),
        Positioned(

          bottom: 15,
          right:17.5,
          child: Container(
            padding: const EdgeInsets.all(16),
            height: 125,
            width: 290,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      dishTitle,
                      style: TextStyle(
                        color: CustomColors.headingTextColor,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      dishSubTitle,
                      style: TextStyle(
                          color: CustomColors.paragraphTextColor, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          dishPrice,
                          style: TextStyle(
                              color: CustomColors.headingTextColor,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          dishRegularPrice,
                          style: TextStyle(
                              color: CustomColors.paragraphTextColor,
                              fontSize: 14,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffEDA345),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        '$dishLeft Left',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
