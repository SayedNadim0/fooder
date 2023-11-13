import '../checkout.dart';

class MyBucket extends StatefulWidget {
  const MyBucket({super.key});

  @override
  State<MyBucket> createState() => _MyBucketState();
}

class _MyBucketState extends State<MyBucket> {
  @override
  Widget build(BuildContext context) {
    final ItemData = Provider.of<HomeController>(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: ListView.builder(
          itemCount: ItemData.AddCartLists.length,
          itemBuilder: (context, index) {
            return Card(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              ItemData.AddCartLists[index]
                                              ['item_pic'],
                                            ),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(5.r)
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
                                        "Left ${ItemData.AddCartLists[index]['item_left']}",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),),
                              ],
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ItemData.AddCartLists[index]['item_name'],
                                  style:
                                  TextStyle(fontSize: 22, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  ItemData.AddCartLists[index]['item_subname'],
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
                                      ItemData.AddCartLists[index]['special_price'],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      ItemData.AddCartLists[index]['regular_price'],
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
                                          borderRadius: BorderRadius.circular(50)),
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
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 5, 16, 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
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
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    child: Center(
                                        child: Text(
                                          "0",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
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
                                ],
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red),
                                  onPressed: () {},
                                  child: Text("Add to Cart"))
                            ],
                          ),
                        )
                      ],
                    ),

                    Positioned(
                        right: 10,
                        top: 15,
                        child: InkWell(
                          onTap: (){
                            ItemData.removeToAddCart(ItemData.AddCartList[index]);
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            child: ItemData.AddCartList[index]["isAddToCart"]?Icon(
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
          }),
    );
  }
}




