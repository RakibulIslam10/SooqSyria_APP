import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/aaccount_details_controller.dart';
part 'aaccount_details_tablet_screen.dart';
part 'aaccount_details_mobile_screen.dart';
part '../widget/user_profile_header.dart';
part '../widget/no_listing_widget.dart';


class AaccountDetailsScreen extends GetView<AaccountDetailsController> {
  const AaccountDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: AaccountDetailsMobileScreen(),
      tablet: AaccountDetailsTabletScreen(),
    );
  }
}
