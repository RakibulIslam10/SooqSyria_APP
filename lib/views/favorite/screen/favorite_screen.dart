import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/routes/routes.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/favorite_controller.dart';
part 'favorite_tablet_screen.dart';
part 'favorite_mobile_screen.dart';
part '../widget/text_heading_bar.dart';
part '../widget/all_favourites_default.dart';

class FavoriteScreen extends GetView<FavoriteController> {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: FavoriteMobileScreen(),
      tablet: FavoriteTabletScreen(),
    );
  }
}
