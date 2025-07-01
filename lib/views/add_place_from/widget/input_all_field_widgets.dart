import 'package:flutter/cupertino.dart';
import 'package:sooqyria/base/utils/basic_import.dart';
import 'package:sooqyria/views/add_place_from/controller/add_place_from_controller.dart';
import 'add_place_input_widget.dart';

class InputAllFieldWidgets extends GetView<AddPlaceFromController> {
  const InputAllFieldWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
      child: Column(
        children: [
          AddPlaceInputWidget(
            controller: controller.listingTypeController,
            hintText: Strings.listingType,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.aleppoController,
            hintText: Strings.aleppo,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.districtController,
            hintText: Strings.neighborhoodDristic,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.propertyTypeController,
            hintText: Strings.propertyType,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.numberOfRoomController,
            hintText: Strings.numberOfrooms,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.areaController,
            hintText: Strings.areaM,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.propertyConditionController,
            hintText: Strings.propertyCondition,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.floorNumberController,
            hintText: Strings.floorNumber,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.totalFloorNumberController,
            hintText: Strings.totalNumberOfFloors,
            textInputType: TextInputType.number,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.heatingTypeController,
            hintText: Strings.heatingType,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.furnishedController,
            hintText: Strings.furnished,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.bathroomsController,
            hintText: Strings.numberOfBathrooms,
            textInputType: TextInputType.number,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.belconyController,
            hintText: Strings.belconyAvailable,
          ),
          Sizes.height.betweenInputBox,
          AddPlaceInputWidget(
            controller: controller.maintenaceFeeController,
            hintText: Strings.maintenaceFee,
            textInputType: TextInputType.number,
          ),
          Sizes.height.betweenInputBox,

          AddPlaceInputWidget(
            controller: controller.priceController,
            hintText: Strings.price,
            textInputType: TextInputType.number,
          ),
          Sizes.height.betweenInputBox,

          AddPlaceInputWidget(
            controller: controller.phoneNumberOrSellerController,
            hintText: Strings.phoneNumberOfTheSeller,
            textInputType: TextInputType.number,
          ),
          Sizes.height.betweenInputBox,

          PrimaryButton(title: Strings.next, onPressed: () {}),
        ],
      ),
    );
  }
}
