import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../../data/global_widgets/custom_icons.dart';
import '../../data/style/colors.dart';
import '../home/views/home_view.dart';
import '../provider/provider.dart';
import 'Item List/menu_items.dart';

class FoodDetails extends StatefulWidget {
  final promoDetails;
  FoodDetails(this.promoDetails, {super.key});

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  final itemListSvg = CustomIcons();
  final foodDetailsSvg = CustomIcons();
  final _saveRating = 0;

  @override
  Widget build(BuildContext context) {
    final foodDetailsData = Provider.of<Data>(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: CustomColors.bgColor,
        body: ListView(
          clipBehavior: Clip.none,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                    height: 250.h,
                    width: double.infinity,
                    child: Image.network(
                      widget.promoDetails['img'],
                      fit: BoxFit.cover,
                    )),
                Positioned(
                  top: 170,
                  bottom: -130,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15).r,
                      child: Container(
                        height: 150.h,
                        width: double.infinity,
                        color: CustomColors.whiteColor,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.promoDetails['title'],
                                style: TextStyle(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.promoDetails['loc'],
                              ),
                              Text(
                                widget.promoDetails['subtitle'],
                              ),
                              Text(
                                widget.promoDetails['open'],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 25.h,
                                    width: 25.w,
                                    child: SvgPicture.string(
                                        foodDetailsSvg.foodDetailsSvg[1]),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(widget.promoDetails['loc_no']),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Container(
                                    height: 23.h,
                                    width: 23.h,
                                    child: SvgPicture.string(
                                        foodDetailsSvg.foodDetailsSvg[2]),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(widget.promoDetails['rating']),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Container(
                                    height: 22.h,
                                    width: 22.h,
                                    child: SvgPicture.string(
                                        foodDetailsSvg.foodDetailsSvg[3]),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(widget.promoDetails['verify']),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Builder(builder: (context) {
                  return Positioned(
                    top: 40,
                    left: 15,
                    child: IconButton(
                      icon: Positioned(
                        child: Container(
                          height: 40.h,
                          width: 40.h,
                          child: SvgPicture.string(
                              foodDetailsSvg.foodDetailsSvg[0]),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CustomColors.whiteColor),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    ),
                    height: 52.h,
                    width: 52.w,
                  );
                }),
                Builder(builder: (context) {
                  return Positioned(
                    top: 40,
                    right: 15,
                    child: IconButton(
                      icon: Positioned(
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          child: SvgPicture.string(itemListSvg.itemListSvg[0]),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CustomColors.whiteColor),
                        ),
                      ),
                      onPressed: () {
                        //   Nothing to here
                      },
                    ),
                    height: 52.h,
                    width: 52.w,
                  );
                }),
              ],
            ),
            SizedBox(
              height: 120.h,
            ),
            Column(
              children: [
                TabBar(tabs: [
                  Tab(
                    text: 'Menu Item',
                  ),
                  Tab(
                    text: 'Review',
                  ),
                  Tab(
                    text: 'Info',
                  )
                ]),
                Container(
                  height: 300,
                  width: double.infinity,
                  child: TabBarView(children: [
                    MenuItem(),
                    Container(
                      height: 420,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          foodDetailsData.Review,
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Row(
                                          children: [
                                            RatingBarIndicator(
                                              rating: widget
                                                  .promoDetails['rating_star'],
                                              itemBuilder: (context, index) =>
                                                  Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                              ),
                                              itemCount: 5,
                                              itemSize: 20.0,
                                              direction: Axis.horizontal,
                                            ),
                                            Text(
                                              widget.promoDetails['total_user'],
                                              style: TextStyle(fontSize: 17),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 160,
                                          width: 200,
                                          child: CircularPercentIndicator(
                                            animation: true,
                                            animationDuration: 1000,
                                            radius: 70,
                                            lineWidth: 15,
                                            percent: widget.promoDetails[
                                                'radius_percent_value'],
                                            progressColor: Colors.orange,
                                            backgroundColor:
                                                Colors.orange.shade100,
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            center: Text(
                                              widget.promoDetails[
                                                  'rating_percent'],
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.orange),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 230,
                                    width: 2,
                                    color: Colors.orange,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              90.0, 0.0, 0.0, 20.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Container(
                                              height: 40,
                                              width: 100,
                                              color: Colors.orange,
                                              child: Center(
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.add,
                                                      size: 30,
                                                      color: Colors.white,
                                                    ),
                                                    Text(
                                                      "Review",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            height: 160,
                                            width: 200,
                                            child: Column(
                                              children: [
                                                LinearPercentIndicator(
                                                  trailing: Row(
                                                    children: [
                                                      Text(
                                                        '1',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.orange,
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        widget.promoDetails[
                                                            'rating_user1'],
                                                        style: TextStyle(
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                  animation: true,
                                                  animationDuration: 1000,
                                                  lineHeight: 10,
                                                  width: 120,
                                                  percent: 0.2,
                                                  progressColor: Colors.orange,
                                                  backgroundColor:
                                                      Colors.orange.shade100,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                LinearPercentIndicator(
                                                  trailing: Row(
                                                    children: [
                                                      Text(
                                                        '2',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.orange,
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        widget.promoDetails[
                                                            'rating_user2'],
                                                        style: TextStyle(
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                  animation: true,
                                                  animationDuration: 1000,
                                                  lineHeight: 10,
                                                  width: 120,
                                                  percent: 0.4,
                                                  progressColor: Colors.orange,
                                                  backgroundColor:
                                                      Colors.orange.shade100,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                LinearPercentIndicator(
                                                  trailing: Row(
                                                    children: [
                                                      Text(
                                                        '3',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.orange,
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        widget.promoDetails[
                                                            'rating_user3'],
                                                        style: TextStyle(
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                  animation: true,
                                                  animationDuration: 1000,
                                                  lineHeight: 10,
                                                  width: 120,
                                                  percent: 0.6,
                                                  progressColor: Colors.orange,
                                                  backgroundColor:
                                                      Colors.orange.shade100,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                LinearPercentIndicator(
                                                  trailing: Row(
                                                    children: [
                                                      Text(
                                                        '4',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.orange,
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        widget.promoDetails[
                                                            'rating_user4'],
                                                        style: TextStyle(
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                  animation: true,
                                                  animationDuration: 1000,
                                                  lineHeight: 10,
                                                  width: 120,
                                                  percent: 0.8,
                                                  progressColor: Colors.orange,
                                                  backgroundColor:
                                                      Colors.orange.shade100,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                LinearPercentIndicator(
                                                  trailing: Row(
                                                    children: [
                                                      Text(
                                                        '5',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.orange,
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        widget.promoDetails[
                                                            'rating_user5'],
                                                        style: TextStyle(
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                  animation: true,
                                                  animationDuration: 1000,
                                                  lineHeight: 10,
                                                  width: 120,
                                                  percent: 1.0,
                                                  progressColor: Colors.orange,
                                                  backgroundColor:
                                                      Colors.orange.shade100,
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      height: 420,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 420,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Text(
                                    widget.promoDetails['title'],
                                    style: TextStyle(
                                      color: CustomColors.blackColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    widget.promoDetails['subtitle']!,
                                    style: TextStyle(
                                        color: CustomColors.blackColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${widget.promoDetails['description']}",
                                    style: TextStyle(
                                      color: CustomColors.blackColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
