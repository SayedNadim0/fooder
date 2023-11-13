import '../home.dart';

class PromoItems extends StatefulWidget {
  const PromoItems({super.key});

  @override
  State<PromoItems> createState() => _PromoItemsState();
}

class _PromoItemsState extends State<PromoItems> {
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<HomeController>(context);
    final promo = Provider.of<Data>(context);
    return SizedBox(
      height: 270.h,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemProvider.itemList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          FoodDetails(promo.promoItem[index])));
            },
            child: Row(
              children: [
                DishItems(
                  onPress:(){
                    itemProvider.setIsFavorite(index);
                  },
                  favorite : itemProvider.itemList[index]['isFavorite'],
                  dishImage: itemProvider.itemList[index]['item_pic'],
                  dishTitle: itemProvider.itemList[index]['item_name'],
                  dishSubTitle: itemProvider.itemList[index]['item_subname'],
                  dishPrice: itemProvider.itemList[index]['special_price'],
                  dishRegularPrice: itemProvider.itemList[index]
                      ['regular_price'],
                  dishLeft: itemProvider.itemList[index]['item_left'],
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
