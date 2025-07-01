import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../../add_place_from/screen/add_place_from_screen.dart';
import '../../add_place_from/widget/add_place_input_widget.dart';
import '../controller/add_job_offer_form_controller.dart';
part 'add_job_offer_form_tablet_screen.dart';
part 'add_job_offer_form_mobile_screen.dart';

class AddJobOfferFormScreen extends GetView<AddJobOfferFormController> {
  const AddJobOfferFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: AddJobOfferFormMobileScreen(),
      tablet: AddJobOfferFormTabletScreen(),
    );
  }
}
