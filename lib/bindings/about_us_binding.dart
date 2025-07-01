import 'package:get/get.dart';
import '../views/about_us/controller/about_us_controller.dart';

class AboutUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutUsController());
  }
}
