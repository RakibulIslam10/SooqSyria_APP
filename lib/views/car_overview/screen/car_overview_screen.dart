import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/views/car_overview/widget/carousel_slider_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/car_overview_controller.dart';
part 'car_overview_tablet_screen.dart';
part 'car_overview_mobile_screen.dart';

class CarOverviewScreen extends GetView<CarOverviewController> {
  const CarOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: CarOverviewMobileScreen(),
      tablet: CarOverviewTabletScreen(),
    );
  }
}
