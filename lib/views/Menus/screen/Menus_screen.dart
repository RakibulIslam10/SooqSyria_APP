import 'package:flutter/material.dart';
import 'package:sooqyria/views/Menus/widget/menu_user_header.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/Menus_controller.dart';
import '../widget/adds_searches_widget.dart';
part 'Menus_tablet_screen.dart';
part 'Menus_mobile_screen.dart';



class MenusScreen extends GetView<MenusController> {
  const MenusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MenusMobileScreen(),
      tablet: MenusTabletScreen(),
    );
  }
}
