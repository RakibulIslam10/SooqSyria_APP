import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/account_settings_controller.dart';
part 'account_settings_tablet_screen.dart';
part 'account_settings_mobile_screen.dart';

class AccountSettingsScreen extends GetView<AccountSettingsController> {
  const AccountSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: AccountSettingsMobileScreen(),
      tablet: AccountSettingsTabletScreen(),
    );
  }
}
