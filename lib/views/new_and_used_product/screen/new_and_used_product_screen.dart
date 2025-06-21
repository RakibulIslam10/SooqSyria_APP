import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/new_and_used_product_controller.dart';
part 'new_and_used_product_tablet_screen.dart';
part 'new_and_used_product_mobile_screen.dart';
part '../widget/items_list_widget.dart';

class NewAndUsedProductScreen extends GetView<NewAndUsedProductController> {
  const NewAndUsedProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: NewAndUsedProductMobileScreen(),
      tablet: NewAndUsedProductTabletScreen(),
    );
  }
}
