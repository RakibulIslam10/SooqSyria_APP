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
          AddPlaceInputWidget(
            controller: controller.listingTypeController,
            hintText: Strings.listingType,
          ),
        ],
      ),
    );
  }
}
