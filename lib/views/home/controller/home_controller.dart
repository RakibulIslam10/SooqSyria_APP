import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sooqyria/routes/routes.dart';

import '../../../languages/strings.dart';
import '../model/car_info_model.dart';
import '../model/categories_model.dart';

class HomeController extends GetxController {
  final carouselController = CarouselSliderController();
  var currentIndexBannerImage = 0.obs;
  var selectedIndex = 0.obs;

  final List<CarInfoModel> carInfoDataList = [];
  final List<CategoryModel> categoriesInfoList = [];

  @override
  void onInit() {
    super.onInit();
    loadInitialData();
  }

  void loadInitialData() {
    carInfoDataList.addAll(CarInfoModel.carInfoList);
    categoriesInfoList.addAll(CategoryModel.categoryInfo);
  }

  PageController pageController = PageController();
  final RxList<String> sliderImageList = <String>[
    'assets/logo/image.png',
  ].obs;


  void onImageSelected(int index) {
    selectedIndex.value = index;
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 1),
      curve: Curves.easeInOut,
    );
  }

  void categoryRoute(int index, dynamic argument) {
    if (index == 0) {
      Get.toNamed(Routes.vehicles_categoryScreen, arguments: argument);
    } else if (index == 1) {
      Get.toNamed(Routes.real_state_categoryScreen, arguments: argument);
    } else if (index == 2) {
      Get.toNamed(Routes.job_offers_categoryScreen, arguments: argument);
    } else if (index == 3) {
      Get.toNamed(Routes.new_and_used_productScreen, arguments: argument);
    } else if (index == 4) {
      Get.toNamed(Routes.animalsScreen, arguments: argument);
    } else {
      Get.toNamed(Routes.servicesScreen, arguments: argument);
    }
  }
}
