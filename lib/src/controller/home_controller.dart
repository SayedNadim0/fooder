import 'package:flutter/widgets.dart';

class HomeController extends ChangeNotifier {
  dynamic itemList = [
    {
      'isFavorite': false,
      'isAddToCart': false,
      'id': 1,
      'item_pic':
          'https://e1.pxfuel.com/desktop-wallpaper/656/64/desktop-wallpaper-burger-steak-fire-food-https-www-pxwall-realistic-fast-food.jpg',
      'item_name': 'Burger',
      'item_subname': 'Delices Burger Ngasem',
      'special_price': '1,249',
      'regular_price': '2,999',
      'item_left': '1',
      'add': 0
    },
    {
      'isFavorite': false,
      'isAddToCart': false,
      'id': 2,
      'item_pic':
          'https://e0.pxfuel.com/wallpapers/256/32/desktop-wallpaper-delicious-pizza-food.jpg',
      'item_name': 'Delicious Pizza',
      'item_subname': 'Italian pizza with sausage',
      'special_price': '1,316',
      'regular_price': '2,599',
      'item_left': '2',
      'add': 0
    },
    {
      'isFavorite': false,
      'isAddToCart': false,
      'id': 3,
      'item_pic':
          'https://e1.pxfuel.com/desktop-wallpaper/476/517/desktop-wallpaper-best-5-sandwich-on-hip-chicken-sandwich.jpg',
      'item_name': 'Chicken Sandwich',
      'item_subname': 'Sandwich Ham Bread Food',
      'special_price': '1,000',
      'regular_price': '2,099',
      'item_left': '3',
      'add': 0
    },
    {
      'isFavorite': false,
      'isAddToCart': false,
      'id': 4,
      'item_pic':
          'https://w0.peakpx.com/wallpaper/796/325/HD-wallpaper-fried-chicken-fried-food-fried-chicken-legs-fast-food.jpg',
      'item_name': 'Fired Chicken',
      'item_subname': 'Fried chicken legs fast food',
      'special_price': '1,496',
      'regular_price': '1,999',
      'item_left': '4',
      'add': 0
    },
    {
      'isFavorite': false,
      'isAddToCart': false,
      'id': 5,
      'item_pic':
          'https://w0.peakpx.com/wallpaper/74/336/HD-wallpaper-ymmy-koila-chicken-tikkha-muslim-cool-food-ramzan-fast.jpg',
      'item_name': 'Chiken Tikka',
      'item_subname': 'Ymmy koilla chiken tikka',
      'special_price': '1,599',
      'regular_price': '2,323',
      'item_left': '5',
      'add': 0
    },
  ];

  List wishlist = [];
  List get wishlists => wishlist;

  setToWishlistItem(item) {
    if (item["isFavorite"]) {
      wishlist.add(item);
    } else {
      wishlist.remove(item);
    }
    print(wishlist.length);
    print("wishlist");
    notifyListeners();
  }

  void removeToWishlist(item) {
    itemList.asMap().forEach((ind, value) => {
          if (item["id"] == value["id"])
            {wishlist.remove(item), itemList[ind]['isFavorite'] = false}
        });

    // print(item);
    // itemList[index]['isFavorite'] = false;
    // setToWishlistItem(itemList[index]);
    notifyListeners();
  }

  List get itemLists => itemList;

  void setIsFavorite(index) {
    if (itemList[index]['isFavorite']) {
      itemList[index]['isFavorite'] = false;
      setToWishlistItem(itemList[index]);
    } else {
      itemList[index]['isFavorite'] = true;
      setToWishlistItem(itemList[index]);
    }
    notifyListeners();
  }

  List AddCartList = [];
  List get AddCartLists => AddCartList;

  setAddCartList(item) {
    if (item["isAddToCart"]) {
      AddCartList.add(item);
    } else {
      AddCartList.remove(item);
    }
    notifyListeners();
  }

  void removeToAddCart(item) {
    itemList.asMap().forEach((ind, value) => {
          if (item["id"] == value["id"])
            {AddCartList.remove(item), itemList[ind]['isAddToCart'] = false}
        });

    // print(item);
    // itemList[index]['isFavorite'] = false;
    // setToWishlistItem(itemList[index]);
    notifyListeners();
  }

  List get AddCartItem => itemList;

  void setAddCart(index) {
    if (itemList[index]['isAddToCart']) {
      itemList[index]['isAddToCart'] = false;
      setAddCartList(itemList[index]);
    } else {
      itemList[index]['isAddToCart'] = true;
      setAddCartList(itemList[index]);
    }
    notifyListeners();
  }

  void Increement(index) {
    itemList[index]['add']++;
    notifyListeners();
  }

  void Decreement(index) {
    if (itemList[index]['add'] >= 1) {
      itemList[index]['add']--;
    }

    notifyListeners();
  }
}
