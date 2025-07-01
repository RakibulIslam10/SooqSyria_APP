import 'package:flutter/cupertino.dart';
import 'package:sooqyria/base/utils/basic_import.dart';
import '../../add_place_from/widget/add_place_input_widget.dart';
import '../controller/car_add_form_controller.dart';

class CarAddInputFormWidget extends GetView<CarAddFormController> {
  const CarAddInputFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
      child: Column(
        children: [
          AddPlaceInputWidget(
            controller: controller.aleppoController,
            hintText: Strings.aleppo,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.makeModelController,
            hintText: Strings.makeModel,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.trimController,
            hintText: Strings.trim,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.regonalSpaceController,
            hintText: Strings.regionalSpace,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.yearController,
            hintText: Strings.year,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.kilomitersController,
            hintText: Strings.kilomiters,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.bodyTypeController,
            hintText: Strings.bodyTypes,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.priceController,
            hintText: Strings.price,
            textInputType: TextInputType.number,
          ),
          Sizes.height.betweenInputBox,

          AddPlaceInputWidget(
            controller: controller.phoneNumberController,
            hintText: Strings.phoneNumber,
            textInputType: TextInputType.number,
          ),
          Sizes.height.betweenInputBox,

          PrimaryButton(title: Strings.next, onPressed: () {}),
        ],
      ),
    );
  }
}
