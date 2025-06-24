import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/housing_overview_controller.dart';
part 'housing_overview_tablet_screen.dart';
part 'housing_overview_mobile_screen.dart';

class HousingOverviewScreen extends GetView<HousingOverviewController> {
  const HousingOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: HousingOverviewMobileScreen(),
      tablet: HousingOverviewTabletScreen(),
    );
  }
}
