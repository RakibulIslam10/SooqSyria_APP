part of 'car_overview_screen.dart';

class CarOverviewMobileScreen extends GetView<CarOverviewController> {
  const CarOverviewMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.whiteColor,
        scrolledUnderElevation: 0,
        leading: InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => Get.back(),
          child: Container(
            margin: EdgeInsets.all(Dimensions.paddingSize * 0.25),
            decoration: BoxDecoration(
              color: CustomColor.primary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                size: Dimensions.iconSizeLarge * 0.65,
                color: CustomColor.whiteColor,
              ),
            ),
          ),
        ),
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          CarouselSliderWidget(controller: controller),
          SizedBox(height: 16),
          Padding(
            padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
            child: Column(
              crossAxisAlignment: crossStart,
              children: [
                CarInfoHeadingText(),
                Sizes.height.v20,
                CarOverviewText(),
                DescriptionWidget(),
                SafetyFeaturesWidgets(),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    vertical: Dimensions.verticalSize * 0.4,
                  ),

                  child: Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            Dimensions.radius,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://woodyworld.co/wp-content/uploads/2022/12/New-Project-2.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Sizes.width.v10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              TextWidget(
                                padding: EdgeInsets.only(
                                  right: Dimensions.defaultHorizontalSize * 0.5,
                                ),
                                'Edhem Is.',
                                fontSize: Dimensions.titleSmall,
                                fontWeight: FontWeight.bold,
                              ),
                              Icon(
                                Icons.verified,
                                color: CustomColor.primary,
                                size: Dimensions.iconSizeSmall * 1.6,
                              ),
                            ],
                          ),
                          TextWidget(
                            "Dealer",
                            color: CustomColor.grayColor,
                            fontSize: Dimensions.titleSmall * 0.9,
                          ),
                          RichText(
                            textAlign: TextAlign.start,
                            text:                TextSpan(
                                text: 'visite the seller profile',
                                style: TextStyle(
                                  color: CustomColor.primary,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                              // ..onTap = () async {
                              //   final url = Uri.parse("https://www.instagram.com/chinaskymotors/");
                              //   if (await canLaunchUrl(url)) {
                              //     await launchUrl(url, mode: LaunchMode.externalApplication);
                              //   }
                              // },
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
