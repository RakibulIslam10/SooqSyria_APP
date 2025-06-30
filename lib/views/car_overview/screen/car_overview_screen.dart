import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import 'package:sooqyria/routes/routes.dart';
import 'package:sooqyria/views/car_overview/widget/carousel_slider_widget.dart';
import '../../../assets/assets.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/car_overview_controller.dart';
part 'car_overview_tablet_screen.dart';
part 'car_overview_mobile_screen.dart';
part '../widget/car_info_heading_text.dart';
part '../widget/car_overview_text.dart';
part '../widget/safety_features_widgets.dart';
part '../widget/safety_features_bottom_widget.dart';
part '../widget/description_widget.dart';
part '../widget/visite_seller_widget.dart';
part '../widget/location_section_widget.dart';
part '../widget/buttons_widget.dart';
part '../widget/smiller_car_widgets.dart';




class CarOverviewScreen extends GetView<CarOverviewController> {
  const CarOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: CarOverviewMobileScreen(),
      tablet: CarOverviewTabletScreen(),
    );
  }
}

