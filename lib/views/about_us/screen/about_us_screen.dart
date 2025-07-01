import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/about_us_controller.dart';
part 'about_us_tablet_screen.dart';
part 'about_us_mobile_screen.dart';

class AboutUsScreen extends GetView<AboutUsController> {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: AboutUsMobileScreen(),
      tablet: AboutUsTabletScreen(),
    );
  }
}
