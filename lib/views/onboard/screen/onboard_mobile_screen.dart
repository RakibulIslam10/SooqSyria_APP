part of 'onboard_screen.dart';

class OnboardMobileScreen extends GetView<OnboardController> {
  const OnboardMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundScaffoldColor,
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _clipViewWidget(context),
          _otherWidget(context),
          Positioned(
            top: Dimensions.verticalSize,
            left: Dimensions.defaultHorizontalSize,
            right: Dimensions.defaultHorizontalSize,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              ],
            ),
          ),
        ],
      ),
    );
  }

  _otherWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Dimensions.horizontalSize * 0.8,
      ),
      child: Column(
        mainAxisSize: mainMin,
        crossAxisAlignment: crossStart,
        children: [

        ],
      ),
    );
  }

  _clipViewWidget(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        PageView.builder(
          controller: controller.pageController,
          itemCount:10,
          itemBuilder: (BuildContext context, int index) {
            },
          onPageChanged: (v) {
            controller.selectedIndex.value = v;
          },
        ),
      ],
    );
  }

}
