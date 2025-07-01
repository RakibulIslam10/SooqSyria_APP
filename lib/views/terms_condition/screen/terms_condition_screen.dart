import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/terms_condition_controller.dart';
part 'terms_condition_tablet_screen.dart';
part 'terms_condition_mobile_screen.dart';

class TermsConditionScreen extends GetView<TermsConditionController> {
  const TermsConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: TermsConditionMobileScreen(),
      tablet: TermsConditionTabletScreen(),
    );
  }
}
