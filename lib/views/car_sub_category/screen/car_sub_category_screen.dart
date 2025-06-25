import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/routes/routes.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/car_sub_category_controller.dart';
part 'car_sub_category_tablet_screen.dart';
part 'car_sub_category_mobile_screen.dart';

class CarSubCategoryScreen extends GetView<CarSubCategoryController> {
  const CarSubCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: CarSubCategoryMobileScreen(),
      tablet: CarSubCategoryTabletScreen(),
    );
  }
}
