import 'package:get/get.dart';
import '../views/favorite_overview/controller/favorite_overview_controller.dart';

class FavoriteOverviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteOverviewController());
  }
}
