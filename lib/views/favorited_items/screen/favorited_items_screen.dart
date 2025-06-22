import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';
import 'package:sooqyria/routes/routes.dart';
import '../../../assets/assets.dart';
import '../../../base/utils/basic_import.dart';
import '../../favorite/controller/favorite_controller.dart';
import '../controller/favorited_items_controller.dart';
part 'favorited_items_tablet_screen.dart';
part 'favorited_items_mobile_screen.dart';
part '../widget/text_header.dart';
part '../widget/items_card.dart';

class FavoritedItemsScreen extends GetView<FavoritedItemsController> {
  const FavoritedItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: FavoritedItemsMobileScreen(),
      tablet: FavoritedItemsTabletScreen(),
    );
  }
}

