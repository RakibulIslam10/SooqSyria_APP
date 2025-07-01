import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/account_report_controller.dart';
part 'account_report_tablet_screen.dart';
part 'account_report_mobile_screen.dart';

class AccountReportScreen extends GetView<AccountReportController> {
  const AccountReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: AccountReportMobileScreen(),
      tablet: AccountReportTabletScreen(),
    );
  }
}
