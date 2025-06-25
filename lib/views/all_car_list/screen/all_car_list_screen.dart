import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/all_car_list_controller.dart';
part 'all_car_list_tablet_screen.dart';
part 'all_car_list_mobile_screen.dart';

class AllCarListScreen extends GetView<AllCarListController> {
  const AllCarListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: AllCarListMobileScreen(),
      tablet: AllCarListTabletScreen(),
    );
  }
}
