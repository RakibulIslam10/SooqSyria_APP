import 'package:flutter/material.dart';
import 'package:sooqyria/views/car_overview/widget/carousel_slider_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/car_overview_controller.dart';
part 'car_overview_tablet_screen.dart';
part 'car_overview_mobile_screen.dart';
part '../widget/car_info_heading_text.dart';
part '../widget/car_overview_text.dart';
part '../widget/safety_features_widgets.dart';
part '../widget/safety_features_bottom_widget.dart';
part '../widget/description_widget.dart';



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

