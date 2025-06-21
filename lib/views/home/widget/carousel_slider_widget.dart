import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '/views/home/controller/home_controller.dart';
import '../../../base/utils/basic_import.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: CarouselSlider(
        carouselController: controller.carouselController,
        options: CarouselOptions(
          autoPlayAnimationDuration: Duration(seconds: 1),
          height: 200,
          autoPlay: true,
          aspectRatio: 1,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            controller.currentIndexBannerImage.value = index;
          },
        ),
        items: controller.sliderImageList
            .map(
              (e) => ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius),
                  topLeft: Radius.circular(Dimensions.radius),
                ),
                child: Image.asset('assets/logo/image.png', fit: BoxFit.cover),
              ),
            )
            .toList(),
      ),
    );
  }
}
