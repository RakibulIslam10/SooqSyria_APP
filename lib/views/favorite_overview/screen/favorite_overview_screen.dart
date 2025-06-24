import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../../../base/widgets/app_bar_widget.dart';
import '../../home/model/car_info_model.dart';
import '../controller/favorite_overview_controller.dart';
part 'favorite_overview_tablet_screen.dart';
part 'favorite_overview_mobile_screen.dart';
part '../widget/buttons.dart';
part '../widget/image_and_text.dart';

class FavoriteOverviewScreen extends GetView<FavoriteOverviewController> {
  const FavoriteOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: FavoriteOverviewMobileScreen(),
      tablet: FavoriteOverviewTabletScreen(),
    );
  }
}

