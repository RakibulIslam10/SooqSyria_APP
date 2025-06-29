import 'package:get/get.dart';
import 'package:sooqyria/routes/routes.dart';

class ProfileSectionController extends GetxController {

  void handleRoute(index) {
    switch (index) {
      case 0:
        Get.toNamed(Routes.aaccount_detailsScreen);
        break;
      case 1:
        Get.toNamed(Routes.addressScreen);
        break;
    }
  }
}
