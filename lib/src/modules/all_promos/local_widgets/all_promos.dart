import '../../home/home.dart';

class AllPromos extends StatefulWidget {
  const AllPromos({super.key});

  @override
  State<AllPromos> createState() => _AllPromosState();
}

class _AllPromosState extends State<AllPromos> {

  MySnackBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor:CustomColors.orangeColor,content: Center(child: Text(message,style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)))
    );

  }@override
  Widget build(BuildContext context) {
    final allPromos = Provider.of<HomeController>(context);
    return Scaffold(
      backgroundColor: CustomColors.fooderPrimary,
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.deepOrange,
          ),
        ),
        title: Text(
          "All Promos",
          style: TextStyle(
              color: CustomColors.blackColor,
              fontWeight: FontWeight.normal,
              fontSize: 22),
        ),
      ),
      body: ListView.builder(
        itemCount: allPromos.itemList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Card(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                // height: 150,
                                // width: 150,
                                // child: Image.network(
                                //   allPromos.itemList[index]['item_pic'],
                                //   fit: BoxFit.fitHeight,
                                // ),

                                height: 100.w,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: NetworkImage(allPromos
                                            .itemList[index]['item_pic']),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: MediaQuery.sizeOf(context).width / 12,
                              child: Container(
                                height: MediaQuery.sizeOf(context).height / 23,
                                width: MediaQuery.sizeOf(context).width / 6.5,
                                decoration: BoxDecoration(
                                  color: CustomColors.stackColor,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "5 Left",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 8, 0, 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                allPromos.itemList[index]['item_name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    allPromos.itemList[index]['special_price'],
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    allPromos.itemList[index]['regular_price'],
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "%",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                      height: 25,
                                      width: 25,
                                      decoration:
                                          BoxDecoration(color: Colors.orange),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text("Discount Delivery up to 3k")
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CheckOutView()));
                            },
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            height: 35,
                            width: 35,
                            child: Center(
                              child: Text(
                                "5",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: CustomColors.deepOrange,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          MySnackBar("Item Added", context);
                          allPromos.setAddCart(index);
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          padding: EdgeInsets.all(10.w),
                          height: 35.w,
                          decoration: BoxDecoration(
                            color: CustomColors.orangeColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: allPromos.itemList[index]['isAddToCart']?Center(child: Icon(Icons.add, color: Colors.white,)):Text("Add To Cart", style: TextStyle(color: CustomColors.whiteColor),),
                          // child: allPromos.itemList[index]['isAddToCart']?Icon(Icons.add, color: Colors.white,):Text(
                          //   "Add to Cart",
                          //   style: TextStyle(color: CustomColors.whiteColor),
                          // )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
