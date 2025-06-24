import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../languages/strings.dart';
import '../model/car_info_model.dart';
import '../model/categories_model.dart';

class HomeController extends GetxController {
  final carouselController = CarouselSliderController();
  var currentIndexBannerImage = 0.obs;
  var selectedIndex = 0.obs;

  PageController pageController = PageController();
  final RxList<String> sliderImageList = <String>[
    'assets/logo/image.png',
    'assets/logo/image.png',
    'assets/logo/image.png',
  ].obs;

  final List<CarInfoModel> carInfoList = [
    CarInfoModel(
      image: "assets/images/car.png",
      price: "AED 150,500",
      title: "Tesla Model 3",
      distance: "3000 Km",
    ),
    CarInfoModel(
      image: "assets/images/car2.png",
      price: "AED 120,000",
      title: "BYD HAN Extend",
      distance: "2015 Km",
    ),
    CarInfoModel(
      image: "assets/images/car2.png",
      price: "AED 120,000",
      title: "BYD HAN Extend",
      distance: "2015 Km",
    ),
    CarInfoModel(
      image: "assets/images/car2.png",
      price: "AED 120,000",
      title: "BYD HAN Extend",
      distance: "2015 Km",
    ),
    CarInfoModel(
      image: "assets/images/car2.png",
      price: "AED 120,000",
      title: "BYD HAN Extend",
      distance: "2015 Km",
    ),
  ];

  final List<CategoryModel> categories = [
    CategoryModel(title: Strings.vehicles, image: 'assets/images/Vehicles.png'),
    CategoryModel(title: Strings.realEState, image: 'assets/images/home 1.png'),
    CategoryModel(title: Strings.jobOffers, image: 'assets/images/job.png'),
    CategoryModel(
      title: Strings.newAndUsedProduct,
      image: 'assets/images/bag 1.png',
    ),
    CategoryModel(
      title: Strings.animals,
      image: 'assets/images/pawprint 1.png',
    ),
    CategoryModel(
      title: Strings.services,
      image: 'assets/images/pawprint 1.png',
    ),
  ];

  void onImageSelected(int index) {
    selectedIndex.value = index;
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
