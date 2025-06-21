import 'package:get/get.dart';
import '../views/job_offers/controller/job_offers_controller.dart';

class JobOffersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobOffersController());
  }
}
