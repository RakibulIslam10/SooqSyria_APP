import 'package:get/get.dart';
import '../views/aaccount_details/controller/aaccount_details_controller.dart';

class AaccountDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AaccountDetailsController());
  }
}
