import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../home/model/categories_model.dart';

class AddPlaceFromController extends GetxController {
  late final args = Get.arguments;


  final listingTypeController = TextEditingController();
  final aleppoController = TextEditingController();
  final districtController = TextEditingController();
  final propertyTypeController = TextEditingController();
  final numberOfRoomController = TextEditingController();
  final areaController = TextEditingController();
  final propertyConditionController = TextEditingController();
  final floorNumberController = TextEditingController();
  final totalFloorNumberController = TextEditingController();
  final heatingTypeController = TextEditingController();
  final furnishedController = TextEditingController();
  final bathroomsController = TextEditingController();
  final belconyController = TextEditingController();
  final maintenaceFeeController = TextEditingController();
  final priceController = TextEditingController();
  final phoneNumberOrSellerController = TextEditingController();
}
