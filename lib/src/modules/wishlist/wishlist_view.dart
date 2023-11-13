import 'package:flutter/material.dart';
import 'package:fooder/src/modules/checkout/checkout.dart';

import '../../data/style/colors.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    final WishListData = Provider.of<HomeController>(context);
    return Scaffold(
      backgroundColor: CustomColors.fooderPrimary,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "WishList",
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 24.sp,
              color: CustomColors.headingTextColor),
        ),
      ),
      body: ListView.builder(
        itemCount: WishListData.wishlist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Stack(
              children: [
                Card(
                  child:  Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 12),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  height: 120,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          WishListData.wishlists[index]['item_pic'],
                                        ),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Container(
                                    height: 30,
                                    width: 68,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Text(
                                        "Left ${WishListData.wishlists[index]['item_left']}",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  WishListData.wishlists[index]['item_name'],
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  WishListData.wishlists[index]['item_subname'],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Price: ",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      WishListData.wishlists[index]
                                      ['special_price'],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      WishListData.wishlists[index]
                                      ['regular_price'],
                                      style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                          BorderRadius.circular(50)),
                                      height: 25,
                                      width: 25,
                                      child: Center(
                                        child: Text(
                                          "%",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Free Delivery")
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap:(){
                                      WishListData.Decreement(index);
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(5)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    child: Center(
                                      child: Text(
                                        WishListData.itemLists[index]['add'].toString(),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: (){
                                      WishListData.Increement(index);
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(5)),
                                    ),
                                  ),  SizedBox(
                                    width: 8,
                                  ),

                                ],
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red),
                                  onPressed: () {},
                                  child: Text("Add to Cart"))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),



                Positioned(
                  right: 10,
                    top: 15,
                    child: InkWell(
                      onTap: (){
                        WishListData.removeToWishlist(WishListData.wishlist[index]);
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        child: WishListData.wishlist[index]["isFavorite"]?Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 30,
                        ):Icon(Icons.delete,color: Colors.green,),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    )
                )
              ],
            ),
          );
        },
      ),
    );
  }
}



/*
    InkWell(
                             onTap: (){
                                    WishListData.removeToWishlist(WishListData.wishlist[index]);
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    child: WishListData.wishlist[index]["isFavorite"]?Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                      size: 30,
                                    ):Icon(Icons.delete,color: Colors.green,),
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
 */
