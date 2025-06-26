import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../../../routes/routes.dart';
import '../controller/selection_category_controller.dart';
part 'selection_category_tablet_screen.dart';
part 'selection_category_mobile_screen.dart';

class SelectionCategoryScreen extends GetView<SelectionCategoryController> {
  const SelectionCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SelectionCategoryMobileScreen(),
      tablet: SelectionCategoryTabletScreen(),
    );
  }
}
