import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/seller_profile_controller.dart';
part 'seller_profile_tablet_screen.dart';
part 'seller_profile_mobile_screen.dart';

class SellerProfileScreen extends GetView<SellerProfileController> {
  const SellerProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SellerProfileMobileScreen(),
      tablet: SellerProfileTabletScreen(),
    );
  }
}
