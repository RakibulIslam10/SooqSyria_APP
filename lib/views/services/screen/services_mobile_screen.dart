part of 'services_screen.dart';

class ServicesMobileScreen extends GetView<ServicesController> {
  const ServicesMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "200 Result",
        titleColor: CustomColor.blackColor,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(
          children: [
            Sizes.height.v20,
            Row(
              children: [
                Wrap(children: [TextWidget(Strings.steering)]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
