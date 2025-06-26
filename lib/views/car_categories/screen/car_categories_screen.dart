import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/routes/routes.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/car_categories_controller.dart';
part 'car_categories_tablet_screen.dart';
part 'car_categories_mobile_screen.dart';

class CarCategoriesScreen extends GetView<CarCategoriesController> {
  const CarCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: CarCategoriesMobileScreen(),
      tablet: CarCategoriesTabletScreen(),
    );
  }
}
