import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../data/global_widgets/custom_icons.dart';
import '../../../data/style/colors.dart';
import '../../provider/provider.dart';

class MenuItem extends StatefulWidget {
  const MenuItem({super.key});

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  final itemListSvg = CustomIcons();
  final foodDetailsSvg = CustomIcons();
  @override
  Widget build(BuildContext context) {
    final promo = Provider.of<Data>(context);
    return ListView.builder(
        itemCount: promo.promoItem.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                child: Container(
                  height: 130,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        promo.promoItem[index]['img']!),
                                    fit: BoxFit.cover)),
                            height: 120,
                            width: 120,
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  child: Container(
                                    height: 30.h,
                                    width: 50.w,
                                    color: CustomColors.stackColor,
                                    child: Center(
                                      child: Text(
                                        "${promo.promoItem[index]['button']}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Text(
                                promo.promoItem[index]['title']!,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                promo.promoItem[index]['Discount_Price']!,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                promo.promoItem[index]['originalPrice']!,
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  color: CustomColors.orangeColor,
                                  child: Icon(
                                    Icons.percent_rounded,
                                    color: CustomColors.whiteColor,
                                    size: 15,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Free Delivery",
                                style: TextStyle(
                                  color: CustomColors.orangeColor,
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 75,
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  child: Center(
                                      child: Icon(
                                    Icons.edit_outlined,
                                    size: 30,
                                    color: CustomColors.orangeColor,
                                  )),
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  color: Colors.grey,
                                  child: Center(
                                      child: Icon(
                                    Icons.remove,
                                    size: 30,
                                    color: CustomColors.whiteColor,
                                  )),
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  color: Colors.grey[100],
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              height: 50,
                                              width: double.infinity,
                                              color: Colors.red,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "1 item",
                                                      style: TextStyle(
                                                        color: CustomColors
                                                            .whiteColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Checkout',
                                                      style: TextStyle(
                                                        color: CustomColors
                                                            .whiteColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Rp ${promo.promoItem[index]['Discount_Price']}",
                                                      style: TextStyle(
                                                        color: CustomColors
                                                            .whiteColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    color: Colors.red,
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }
}
