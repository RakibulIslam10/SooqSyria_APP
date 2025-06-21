import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/Menus_controller.dart';
part 'Menus_tablet_screen.dart';
part 'Menus_mobile_screen.dart';

class MenusScreen extends GetView<MenusController> {
  const MenusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MenusMobileScreen(),
      tablet: MenusTabletScreen(),
    );
  }
}
