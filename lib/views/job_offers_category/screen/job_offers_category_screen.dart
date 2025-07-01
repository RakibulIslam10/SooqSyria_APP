import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/job_offers_category_controller.dart';
part 'job_offers_category_tablet_screen.dart';
part 'job_offers_category_mobile_screen.dart';

class JobOffersCategoryScreen extends GetView<JobOffersCategoryController> {
  const JobOffersCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: JobOffersCategoryMobileScreen(),
      tablet: JobOffersCategoryTabletScreen(),
    );
  }
}
