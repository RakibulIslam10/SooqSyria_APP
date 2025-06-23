import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:sooqyria/views/favorite/controller/favorite_controller.dart';

import '../../home/controller/home_controller.dart';
import '../../home/model/car_info_model.dart';

class CarOverviewController extends GetxController {
  final CarInfoModel car = Get.arguments as CarInfoModel;
  RxBool showMore = false.obs;

  final favController = Get.put(FavoriteController());
  final homeController = Get.find<HomeController>();


  final carouselController = CarouselSliderController();
  var currentIndexBannerImage = 0.obs;
  RxString baseCurrency = ''.obs;
  var selectedIndex = 0.obs;
  PageController pageController = PageController();

  List<String> sliderImageList = [
    'assets/images/car2.png',
    'assets/images/car2.png',
    'assets/images/car2.png',
    'assets/images/car2.png',
  ];

  Future<void> shareContent() async {
    await FlutterShare.share(
      title: 'Check this out',
      text: 'Here is some awesome content to share!',
      // You can also add linkUrl or chooserTitle if you want
    );
  }

  void toggleFavorite(CarInfoModel item) {
    if (isFavorite(item)) {
      favController.allFavoriteCar.remove(item);
    } else {
      favController.allFavoriteCar.add(item);
    }
  }

  bool isFavorite(CarInfoModel item) {
    return favController.allFavoriteCar.contains(item);
  }

  void onImageSelected(int index) {
    selectedIndex.value = index;
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 1),
      curve: Curves.easeInOut,
    );
  }

  var currentPage = 0.obs;
}
