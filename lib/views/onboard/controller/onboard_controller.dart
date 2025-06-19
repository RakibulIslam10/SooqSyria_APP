import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/extensions/extensions.dart';

import '../../../routes/routes.dart';

class OnboardController extends GetxController {
  RxInt selectedIndex = 0.obs;

  get onLogIn => Routes.loginScreen.toNamed;

  final pageController = PageController();

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
