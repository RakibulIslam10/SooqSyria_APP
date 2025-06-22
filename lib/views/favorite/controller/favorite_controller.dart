import 'package:get/get.dart';

class FavoriteController extends GetxController {


  var favoriteList = <Map<String, dynamic>>[].obs;

  void toggleFavorite(Map<String, dynamic> item) {
    if (isFavorite(item)) {
      favoriteList.removeWhere((i) => i['name'] == item['name']);
    } else {
      favoriteList.add(item);
    }
  }

  bool isFavorite(Map<String, dynamic> item) {
    return favoriteList.any((i) => i['name'] == item['name']);
  }

}
