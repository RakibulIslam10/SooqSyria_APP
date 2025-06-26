part of 'select_city_screen.dart';

class SelectCityMobileScreen extends GetView<SelectCityController> {
  SelectCityMobileScreen({super.key});

  final List<String> cityList = [
    "Chattogram",
    "Sylhet",
    "Rajshahi",
    "Khulna",
    "Barisal",
    "Cox's Bazar",
    "Mymensingh",
    "Comilla",
    "Narayanganj",
    "Rangpur",
    "Khulna",
    "Barisal",
    "Cox's Bazar",
    "Mymensingh",
    "Comilla",
    "Narayanganj",
    "Rangpur",
    "Khulna",
    "Barisal",
    "Cox's Bazar",
    "Mymensingh",
    "Comilla",
    "Narayanganj",
    "Rangpur",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        backgroundColor: CustomColor.whiteColor,
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
        title: Column(
          children: [
            TextWidget(
              padding: EdgeInsetsGeometry.only(
                bottom: Dimensions.verticalSize * 0.2,
              ),
              Strings.selectCity,
              fontWeight: FontWeight.w600,
              color: CustomColor.blackColor,
            ),
            TextWidget(
              Strings.whereShouldWePlaceYourAdd,
              fontSize: Dimensions.titleSmall * 0.9,
              fontWeight: FontWeight.w600,
              color: CustomColor.grayColor,
            ),
          ],
        ),
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: ListView(
          children: [
            Sizes.height.v10,
            ...List.generate(
              cityList.length,
              (index) => Column(
                crossAxisAlignment: crossStart,
                children: [
                  TextWidget(
                    onTap: () {
                      Get.toNamed(Routes.selection_categoryScreen);
                    },
                    cityList[index],
                    padding: EdgeInsetsGeometry.all(
                      Dimensions.verticalSize * 0.2,
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
