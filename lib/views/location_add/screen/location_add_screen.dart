import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/location_add_controller.dart';
part 'location_add_tablet_screen.dart';
part 'location_add_mobile_screen.dart';

class LocationAddScreen extends GetView<LocationAddController> {
  const LocationAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: LocationAddMobileScreen(),
      tablet: LocationAddTabletScreen(),
    );
  }
}
