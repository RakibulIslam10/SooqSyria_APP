part of '../screen/add_place_from_screen.dart';

class ReUseHeading extends GetView<AddPlaceFromController> {
  final String first;
  final String second;

  const ReUseHeading(this.first, this.second, {super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
          vertical: Dimensions.verticalSize * 0.4,
        ),
        child: Row(
          children: [
            TextWidget(
              first,
              color: CustomColor.primary,
            ),
            TextWidget('> ${second}'),
          ],
        ),
      );

  }
}
