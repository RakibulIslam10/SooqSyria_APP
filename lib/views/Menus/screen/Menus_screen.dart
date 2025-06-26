import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sooqyria/app_assets/app_assets.dart';
import 'package:sooqyria/assets/assets.dart';
import 'package:sooqyria/views/Menus/screen/menus_screen.dart';
import 'package:sooqyria/views/Menus/widget/menu_user_header.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/Menus_controller.dart';
import '../widget/adds_searches_widget.dart';
import '../widget/logout_widget.dart';
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
