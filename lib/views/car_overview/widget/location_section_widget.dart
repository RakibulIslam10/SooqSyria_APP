part of '../screen/car_overview_screen.dart';

class LocationSectionWidget extends GetView<CarOverviewController> {
  const LocationSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          padding: EdgeInsetsGeometry.symmetric(vertical: Dimensions.verticalSize * 0.4),
          Strings.location,
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.titleLarge * 0.8,
        ),
        Image.asset('assets/images/map.png'),
      ],
    );
  }
}
