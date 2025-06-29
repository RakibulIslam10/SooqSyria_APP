import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/assets/assets.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/my_adds_controller.dart';
part 'my_adds_tablet_screen.dart';
part 'my_adds_mobile_screen.dart';
part '../widget/type_selection_widget.dart';
part '../widget/card_design.dart';


class MyAddsScreen extends GetView<MyAddsController> {
  const MyAddsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MyAddsMobileScreen(),
      tablet: MyAddsTabletScreen(),
    );
  }
}
