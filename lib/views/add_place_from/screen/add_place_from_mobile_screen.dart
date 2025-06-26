part of 'add_place_from_screen.dart';

class AddPlaceFromMobileScreen extends GetView<AddPlaceFromController> {
  const AddPlaceFromMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _bodyWidget(context));
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          AppBarHeader(),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: Dimensions.defaultHorizontalSize,
              vertical: Dimensions.verticalSize * 0.4,
            ),
            child: Row(
              children: [
                TextWidget('Real State', color: CustomColor.primary),
                TextWidget('> Housing'),
              ],
            ),
          ),
          InputAllFieldWidgets()
        ],
      ),
    );
  }
}
