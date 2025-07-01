import 'package:get/get.dart';
import '../views/job_offers_category/controller/job_offers_category_controller.dart';

class JobOffersCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobOffersCategoryController());
  }
}
