import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import 'package:sooqyria/routes/routes.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/categories_details_controller.dart';
part 'categories_details_tablet_screen.dart';
part 'categories_details_mobile_screen.dart';

class CategoriesDetailsScreen extends GetView<CategoriesDetailsController> {
  const CategoriesDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: CategoriesDetailsMobileScreen(),
      tablet: CategoriesDetailsTabletScreen(),
    );
  }
}
