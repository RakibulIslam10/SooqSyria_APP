import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../../../base/widgets/app_bar_widget.dart';
import '../controller/my_serches_controller.dart';
part 'my_serches_tablet_screen.dart';
part 'my_serches_mobile_screen.dart';
part '../widget/serches_items_card.dart';

class MySerchesScreen extends GetView<MySerchesController> {
  const MySerchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MySerchesMobileScreen(),
      tablet: MySerchesTabletScreen(),
    );
  }
}
