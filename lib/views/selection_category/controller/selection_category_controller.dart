import 'package:get/get.dart';

import '../../../languages/strings.dart';
import '../../home/model/categories_model.dart';

class SelectionCategoryController extends GetxController {

  final List<CategoryModel> categories = [
    CategoryModel(title: Strings.vehicles, image: 'assets/images/Vehicles.png'),
    CategoryModel(title: Strings.realEState, image: 'assets/images/home 1.png'),
    CategoryModel(title: Strings.jobOffers, image: 'assets/images/job.png'),
    CategoryModel(
      title: Strings.newAndUsedProduct,
      image: 'assets/images/bag 1.png',
    ),
    CategoryModel(
      title: Strings.animals,
      image: 'assets/images/pawprint 1.png',
    ),
    CategoryModel(
      title: Strings.services,
      image: 'assets/images/service.png',
    ),
  ];
}
