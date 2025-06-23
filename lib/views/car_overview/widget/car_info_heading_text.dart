part of '../screen/car_overview_screen.dart';

class CarInfoHeadingText extends GetView<CarOverviewController> {
  const CarInfoHeadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(controller.car.price, fontWeight: FontWeight.bold),
        Sizes.height.v5,
        TextWidget(controller.car.title),
        Sizes.height.v5,
        Wrap(
          children: [
            Wrap(
              children: [
                Icon(Icons.calendar_month_outlined),
                Sizes.width.v10,
                TextWidget('2024', fontSize: Dimensions.titleSmall),
              ],
            ),
            Sizes.width.v15,
            Icon(Icons.speed_outlined),
            Sizes.width.v5,
            TextWidget('50 Km', fontSize: Dimensions.titleSmall),
            Sizes.width.v15,
            Wrap(
              children: [
                Icon(Icons.language),
                Sizes.width.v5,
                TextWidget('Others', fontSize: Dimensions.titleSmall),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
