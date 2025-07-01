import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/views/car_add_form/widget/car_add_input_form_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../../add_place_from/screen/add_place_from_screen.dart';
import '../controller/car_add_form_controller.dart';
part 'car_add_form_tablet_screen.dart';
part 'car_add_form_mobile_screen.dart';

class CarAddFormScreen extends GetView<CarAddFormController> {
  const CarAddFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: CarAddFormMobileScreen(),
      tablet: CarAddFormTabletScreen(),
    );
  }
}
