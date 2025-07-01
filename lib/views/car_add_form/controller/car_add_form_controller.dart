import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CarAddFormController extends GetxController {
  late final args = Get.arguments;

  final aleppoController = TextEditingController();
  final makeModelController = TextEditingController();
  final trimController = TextEditingController();
  final regonalSpaceController = TextEditingController();
  final yearController = TextEditingController();
  final kilomitersController = TextEditingController();
  final bodyTypeController = TextEditingController();
  final priceController = TextEditingController();
  final phoneNumberController = TextEditingController();

}
