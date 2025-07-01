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
          ReUseAppBarHeader(
            '${Strings.tellUsAboutYour} ${controller.args['SelectedCategory']}',
          ),
          ReUseHeading(
            controller.args['argTitle'],
            controller.args['SelectedCategory'],
          ),
          InputAllFieldWidgets(),
        ],
      ),
    );
  }
}
