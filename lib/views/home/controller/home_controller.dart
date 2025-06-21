import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

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

  void onImageSelected(int index) {
    selectedIndex.value = index;
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
