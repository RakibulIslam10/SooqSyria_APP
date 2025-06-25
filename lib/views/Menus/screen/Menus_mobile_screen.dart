part of 'Menus_screen.dart';

class MenusMobileScreen extends GetView<MenusController> {
  const MenusMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _bodyWidget(context));
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
          vertical: Dimensions.verticalSize * 0.4,
        ),
        child: Column(
          children: [
            MenuUserHeader(),
            AddsSearchesWidget(),
            Container(
              margin: EdgeInsetsGeometry.symmetric(
                vertical: Dimensions.verticalSize * 0.5,
              ),
              padding: EdgeInsetsGeometry.all(Dimensions.paddingSize * 0.4),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                border: Border.all(
                  color: CustomColor.grayColor.withAlpha(88),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.4),
              ),
              child: Column(
                crossAxisAlignment: crossStart,
                children: [
                  // items(Strings.profile, 'assets/icons/Vector.svg'),
                  // items(Strings.accountSetting, 'assets/images/acs.png'),
                  // items(Strings.languageCurrrency, 'assets/icons/Vector.svg' ),
                  // items(Strings.support, 'assets/icons/call.png'),
                  // items(Strings.callUs, 'assets/images/call.png'),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  items(String tag, String imagePath) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.4),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SvgPicture.asset(imagePath),
          Sizes.width.v5,
          TextWidget(tag, fontWeight: FontWeight.w500),
        ],
      ),
    );
  }
}
