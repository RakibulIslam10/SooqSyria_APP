import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../../../routes/routes.dart';
import '../controller/sub_category_controller.dart';
part 'sub_category_tablet_screen.dart';
part 'sub_category_mobile_screen.dart';

class SubCategoryScreen extends GetView<SubCategoryController> {
  const SubCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SubCategoryMobileScreen(),
      tablet: SubCategoryTabletScreen(),
    );
  }
}
