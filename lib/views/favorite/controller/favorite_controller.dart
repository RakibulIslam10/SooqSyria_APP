import 'package:get/get.dart';

class FavoriteController extends GetxController {
  var showAll = false.obs;

  void showAllItems() {
    showAll.value = true;
  }
}
