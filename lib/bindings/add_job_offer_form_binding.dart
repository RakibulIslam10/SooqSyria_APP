import 'package:get/get.dart';
import '../views/add_job_offer_form/controller/add_job_offer_form_controller.dart';

class AddJobOfferFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddJobOfferFormController());
  }
}
