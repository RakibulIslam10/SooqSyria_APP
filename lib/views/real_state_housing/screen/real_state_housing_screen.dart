import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import 'package:sooqyria/routes/routes.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/real_state_housing_controller.dart';
part 'real_state_housing_tablet_screen.dart';
part 'real_state_housing_mobile_screen.dart';

class RealStateHousingScreen extends GetView<RealStateHousingController> {
  const RealStateHousingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: RealStateHousingMobileScreen(),
      tablet: RealStateHousingTabletScreen(),
    );
  }
}
