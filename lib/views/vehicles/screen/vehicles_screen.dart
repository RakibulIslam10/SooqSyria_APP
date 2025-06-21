import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/vehicles_controller.dart';
part 'vehicles_tablet_screen.dart';
part 'vehicles_mobile_screen.dart';

class VehiclesScreen extends GetView<VehiclesController> {
  const VehiclesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: VehiclesMobileScreen(),
      tablet: VehiclesTabletScreen(),
    );
  }
}
