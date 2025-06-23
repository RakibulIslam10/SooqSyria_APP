import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sooqyria/base/widgets/app_bar_widget.dart';

import '../controller/car_overview_controller.dart';
import '/views/home/controller/home_controller.dart';
import '../../../base/api/endpoint/api_endpoint.dart';
import '../../../base/utils/basic_import.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key, required this.controller});

  final CarOverviewController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.19,
            width: double.infinity,
            child: CarouselSlider(
              carouselController: controller.carouselController,
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlayAnimationDuration: const Duration(seconds: 1),
                height: MediaQuery.sizeOf(context).height * 0.2,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  controller.currentIndexBannerImage.value = index;
                },
              ),
              items: controller.sliderImageList
                  .map(
                    (e) => Image.asset(
                      e,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                  )
                  .toList(),
            ),
          ),
          Padding(
            padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
            child: Row(
              mainAxisAlignment: mainEnd,
              children: [
                ...List.generate(
                  controller.sliderImageList.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    height: 10,
                    width: controller.currentIndexBannerImage.value == index
                        ? 10
                        : 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: controller.currentIndexBannerImage.value == index
                          ? CustomColor.whiteShadeBlue
                          : Colors.grey.shade400,
                    ),
                  ),
                ),
                Sizes.width.v40,
                Wrap(
                  children: [
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        padding: EdgeInsets.all(Dimensions.paddingSize * 0.25),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Icon(Icons.bookmark_outline_outlined),
                      ),
                    ),
                    Sizes.width.v10,
                    Container(
                      padding: EdgeInsets.all(Dimensions.paddingSize * 0.25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Icon(Icons.share_outlined),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
