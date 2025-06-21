import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/job_offers_controller.dart';
part 'job_offers_tablet_screen.dart';
part 'job_offers_mobile_screen.dart';

class JobOffersScreen extends GetView<JobOffersController> {
  const JobOffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: JobOffersMobileScreen(),
      tablet: JobOffersTabletScreen(),
    );
  }
}
