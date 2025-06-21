import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/services_controller.dart';
part 'services_tablet_screen.dart';
part 'services_mobile_screen.dart';
part '../widget/categories_list_widget.dart';


class ServicesScreen extends GetView<ServicesController> {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ServicesMobileScreen(),
      tablet: ServicesTabletScreen(),
    );
  }
}
