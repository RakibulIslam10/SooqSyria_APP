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
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: CustomColor.grayColor.withAlpha(88),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.4),
              ),
              child: Column(
                children: [
                  Wrap(
                    children: [Icon(Icons.person), TextWidget(Strings.profile)],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
