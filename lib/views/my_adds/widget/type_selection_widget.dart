part of '../screen/my_adds_screen.dart';

class TypeSelectionWidget extends GetView<MyAddsController> {
  TypeSelectionWidget({super.key});

  final List<String> typeTextList = [
    Strings.allAdds,
    Strings.live,
    Strings.paymentPending,
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: Dimensions.horizontalSize * 0.5,
      children: List.generate(
        3,
        (index) => Container(
          padding: EdgeInsetsGeometry.all(Dimensions.paddingSize * 0.25),
          decoration: BoxDecoration(
            border: Border.all(color: CustomColor.primary),

            borderRadius: BorderRadius.circular(Dimensions.radius * 2),
          ),
          child: TextWidget(
            '${typeTextList[index]} (1)',
            fontWeight: FontWeight.bold,
            fontSize: Dimensions.titleSmall * 0.9,
          ),
        ),
      ),
    );
  }
}
