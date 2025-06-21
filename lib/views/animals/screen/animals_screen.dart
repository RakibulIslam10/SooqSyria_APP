import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/animals_controller.dart';
part 'animals_tablet_screen.dart';
part 'animals_mobile_screen.dart';
part '../widget/categoris_widget.dart';

class AnimalsScreen extends GetView<AnimalsController> {
  const AnimalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: AnimalsMobileScreen(),
      tablet: AnimalsTabletScreen(),
    );
  }
}
