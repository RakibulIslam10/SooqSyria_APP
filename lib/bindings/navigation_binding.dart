import 'package:get/get.dart';
import 'package:sooqyria/views/Menus/controller/Menus_controller.dart';
import 'package:sooqyria/views/home/controller/home_controller.dart';
import 'package:sooqyria/views/inbox/controller/inbox_controller.dart';
import '../views/favorite/controller/favorite_controller.dart';
import '../views/navigation/controller/navigation_controller.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NavigationController());
    Get.put(HomeController());
    Get.put(InboxController());
    Get.put(MenusController());
    Get.put(FavoriteController());
  }
}
