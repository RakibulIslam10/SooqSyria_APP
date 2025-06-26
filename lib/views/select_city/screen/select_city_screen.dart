import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/routes/routes.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/select_city_controller.dart';
part 'select_city_tablet_screen.dart';
part 'select_city_mobile_screen.dart';

class SelectCityScreen extends GetView<SelectCityController> {
  const SelectCityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SelectCityMobileScreen(),
      tablet: SelectCityTabletScreen(),
    );
  }
}
