

import 'package:flutter/material.dart';
import 'package:sooqyria/views/Menus/controller/Menus_controller.dart';

import '../../../base/utils/basic_import.dart';

class MenusTabletScreen extends GetView<MenusController> {
  const MenusTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('Menus Tablet Screen'),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [],
      ),
    );
  }
}
