import 'package:flutter/cupertino.dart';
import 'package:sooqyria/base/utils/basic_import.dart';

class LocationAddController extends GetxController {
  final apartmentOrVilaNumberController = TextEditingController();
  final neighhorhoodController = TextEditingController();
  final buldingOrStateNameController = TextEditingController();

  final List<String> choiceListText = [
    Strings.addCustomevel,
    Strings.home,
    Strings.work,
  ];

}
