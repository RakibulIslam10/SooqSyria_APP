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
              padding: EdgeInsetsGeometry.all(Dimensions.paddingSize * 0.6),
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
                  items(Assets.icons.profile, Strings.profile),
                  items(Assets.icons.acs, Strings.accountSetting),
                  items(Assets.icons.global, Strings.languageCurrrency),
                  items(Assets.icons.support, Strings.support),
                  items(Assets.icons.call, Strings.callUs),
                  items(Assets.icons.police, Strings.policies),
                  Sizes.height.v40,
                  LogoutWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  items(String path, String title) {
    return Padding(
      padding: Dimensions.verticalSize.edgeVertical * 0.4,
      child: Wrap(
        children: [
          Image.asset(path, height: Dimensions.iconSizeDefault * 1.2),
          Sizes.width.v10,
          TextWidget(title),
        ],
      ),
    );
  }
}
