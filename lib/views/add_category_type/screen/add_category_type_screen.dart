import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/routes/routes.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/add_category_type_controller.dart';
part 'add_category_type_tablet_screen.dart';
part 'add_category_type_mobile_screen.dart';

class AddCategoryTypeScreen extends GetView<AddCategoryTypeController> {
  const AddCategoryTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: AddCategoryTypeMobileScreen(),
      tablet: AddCategoryTypeTabletScreen(),
    );
  }
}
