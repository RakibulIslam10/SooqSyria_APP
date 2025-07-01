import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/vehicles_category_controller.dart';
part 'vehicles_category_tablet_screen.dart';
part 'vehicles_category_mobile_screen.dart';

class VehiclesCategoryScreen extends GetView<VehiclesCategoryController> {
  const VehiclesCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: VehiclesCategoryMobileScreen(),
      tablet: VehiclesCategoryTabletScreen(),
    );
  }
}
