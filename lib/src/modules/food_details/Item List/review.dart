import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';


class myFood_Review extends StatefulWidget {
  const myFood_Review({super.key});

  @override
  State<myFood_Review> createState() => _myFood_ReviewState();
}

class _myFood_ReviewState extends State<myFood_Review> {
  @override
  Widget build(BuildContext context) {
    final foodDetailsData = Provider.of<Data>(context);
    return Scaffold(
      body:  Container(
        height: 420,
        width: double.infinity,
        child:  ListView.builder(
          itemCount:1 ,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(foodDetailsData.Review, style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 20),),
                          Row(children: [
                            RatingBarIndicator(
                              rating: foodDetailsData.promoItem[index]['rating_star'],
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              itemCount: 5,
                              itemSize: 20.0,
                              direction: Axis.horizontal,
                            ),
                            Text(foodDetailsData.promoItem[index]['total_user'], style: TextStyle(fontSize: 17),)
                          ],),

                          Container(

                            height: 160,
                            width: 200,
                            child: CircularPercentIndicator(
                              animation: true,
                              animationDuration: 1000,
                              radius: 70,
                              lineWidth: 15,
                              percent: foodDetailsData.promoItem[index]['radius_percent_value'],
                              progressColor: Colors.orange,
                              backgroundColor:Colors.orange.shade100,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Text(foodDetailsData.promoItem[index]['rating_percent'], style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.orange),),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.fromLTRB(90.0,0.0,0.0,20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                height: 40,
                                width: 100,
                                color: Colors.orange,
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(Icons.add, size: 30,color: Colors.white,),
                                      Text("Review",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                              height: 160,
                              width: 200,
                              child:  Column(
                                children: [
                                  LinearPercentIndicator(
                                    trailing:Row(children: [ Text('1', style: TextStyle(color: Colors.orange, fontSize: 17, fontWeight: FontWeight.bold),), Icon(Icons.star, color: Colors.orange,), Text(foodDetailsData.promoItem[index]['rating_user1'], style: TextStyle( fontSize: 15),)],),
                                    animation: true,
                                    animationDuration: 1000,
                                    lineHeight: 10,
                                    width: 120,
                                    percent: 0.2,
                                    progressColor: Colors.orange,
                                    backgroundColor:Colors.orange.shade100,
                                  ),
                                  SizedBox(height: 5,),
                                  LinearPercentIndicator(
                                    trailing:Row(children: [ Text('2', style: TextStyle(color: Colors.orange, fontSize: 17, fontWeight: FontWeight.bold),), Icon(Icons.star, color: Colors.orange,), Text(foodDetailsData.promoItem[index]['rating_user2'], style: TextStyle( fontSize: 15),)],),
                                    animation: true,
                                    animationDuration: 1000,
                                    lineHeight: 10,
                                    width: 120,
                                    percent: 0.4,
                                    progressColor: Colors.orange,
                                    backgroundColor:Colors.orange.shade100,
                                  ),
                                  SizedBox(height: 5,),
                                  LinearPercentIndicator(
                                    trailing:Row(children: [ Text('3', style: TextStyle(color: Colors.orange, fontSize: 17, fontWeight: FontWeight.bold),), Icon(Icons.star, color: Colors.orange,), Text(foodDetailsData.promoItem[index]['rating_user3'], style: TextStyle( fontSize: 15),)],),
                                    animation: true,
                                    animationDuration: 1000,
                                    lineHeight: 10,
                                    width: 120,
                                    percent: 0.6,
                                    progressColor: Colors.orange,
                                    backgroundColor:Colors.orange.shade100,
                                  ),
                                  SizedBox(height: 5,),
                                  LinearPercentIndicator(
                                    trailing:Row(children: [ Text('4', style: TextStyle(color: Colors.orange, fontSize: 17, fontWeight: FontWeight.bold),), Icon(Icons.star, color: Colors.orange,), Text(foodDetailsData.promoItem[index]['rating_user4'], style: TextStyle( fontSize: 15),)],),
                                    animation: true,
                                    animationDuration: 1000,
                                    lineHeight: 10,
                                    width: 120,
                                    percent: 0.8,
                                    progressColor: Colors.orange,
                                    backgroundColor:Colors.orange.shade100,
                                  ),
                                  SizedBox(height: 5,),
                                  LinearPercentIndicator(
                                    trailing:Row(children: [ Text('5', style: TextStyle(color: Colors.orange, fontSize: 17, fontWeight: FontWeight.bold),), Icon(Icons.star, color: Colors.orange,), Text(foodDetailsData.promoItem[index]['rating_user5'], style: TextStyle( fontSize: 15),)],),
                                    animation: true,
                                    animationDuration: 1000,
                                    lineHeight: 10,
                                    width: 120,
                                    percent: 1.0,
                                    progressColor: Colors.orange,
                                    backgroundColor:Colors.orange.shade100,
                                  ),
                                  SizedBox(height: 15,),

                                ],
                              )

                          ),
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


    );
  }
}

