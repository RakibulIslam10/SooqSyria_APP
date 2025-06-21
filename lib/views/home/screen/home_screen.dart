import 'package:flutter/cupertino.dart' hide BorderStyle;
import 'package:flutter/material.dart' hide BorderStyle;
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sooqyria/assets/assets.dart';
import 'package:sooqyria/routes/routes.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/home_controller.dart';
import '../widget/carousel_slider_widget.dart';
part 'home_tablet_screen.dart';
part 'home_mobile_screen.dart';
part '../widget/search_header.dart';
part '../widget/grid_card_widget.dart';
part '../widget/new_offer_card.dart';
part '../widget/recommended_listing.dart';
part '../widget/recent_serches_card.dart';
part '../widget/popular_car_items.dart';
part '../widget/popular_product.dart';
part '../widget/keep_looking_items.dart';
part '../widget/popular_real_state_items.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: HomeMobileScreen(),
      tablet: HomeTabletScreen(),
    );
  }
}


