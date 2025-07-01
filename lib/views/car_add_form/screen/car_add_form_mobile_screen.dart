part of 'car_add_form_screen.dart';

class CarAddFormMobileScreen extends GetView<CarAddFormController> {
  const CarAddFormMobileScreen({super.key});

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

          CarAddInputFormWidget(),
        ],
      ),
    );
  }
}
