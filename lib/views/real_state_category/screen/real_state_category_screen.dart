import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/real_state_category_controller.dart';
part 'real_state_category_tablet_screen.dart';
part 'real_state_category_mobile_screen.dart';

class RealStateCategoryScreen extends GetView<RealStateCategoryController> {
  const RealStateCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: RealStateCategoryMobileScreen(),
      tablet: RealStateCategoryTabletScreen(),
    );
  }
}
