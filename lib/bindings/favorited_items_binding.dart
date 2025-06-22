import 'package:get/get.dart';
import '../views/favorited_items/controller/favorited_items_controller.dart';

class FavoritedItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoritedItemsController());
  }
}
