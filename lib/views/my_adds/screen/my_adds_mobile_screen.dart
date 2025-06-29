part of 'my_adds_screen.dart';

class MyAddsMobileScreen extends GetView<MyAddsController> {
  const MyAddsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Strings.myAdds,
        titleColor: CustomColor.blackColor,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
        ),
        child: Column(
          children: [
            Sizes.height.v20,
            TypeSelectionWidget(),
            Sizes.height.v10,
            CardDesign(),
          ],
        ),
      ),
    );
  }
}
