import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import 'package:sooqyria/views/add_place_from/widget/input_all_field_widgets.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/add_place_from_controller.dart';
import '../widget/add_place_input_widget.dart';
part 'add_place_from_tablet_screen.dart';
part 'add_place_from_mobile_screen.dart';
part '../widget/app_bar_header.dart';


class AddPlaceFromScreen extends GetView<AddPlaceFromController> {
  const AddPlaceFromScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: AddPlaceFromMobileScreen(),
      tablet: AddPlaceFromTabletScreen(),
    );
  }
}
