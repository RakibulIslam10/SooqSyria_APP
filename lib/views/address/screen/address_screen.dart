import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/address_controller.dart';

part 'address_tablet_screen.dart';

part 'address_mobile_screen.dart';

part '../widget/address_not_found_widgets.dart';

class AddressScreen extends GetView<AddressController> {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: AddressMobileScreen(),
      tablet: AddressTabletScreen(),
    );
  }
}
