part of '../screen/home_screen.dart';

class GridCardWidget extends GetView<HomeController> {
  GridCardWidget({super.key});

  final List<Map<String, dynamic>> categories = [
    {
      'title': Strings.vehicles,
      'image': 'assets/images/Vehicles.png',
      'route': Routes.vehiclesScreen,
    },
    {
      'title': Strings.realEState,
      'image': 'assets/images/home 1.png',
      'route': Routes.real_stateScreen,
    },
    {
      'title': Strings.jobOffers,
      'image': 'assets/images/job.png',
      'route': Routes.job_offersScreen,
    },
    {
      'title': Strings.newAndUsedProduct,
      'image': 'assets/images/bag 1.png',
      'route': Routes.new_and_used_productScreen,
    },
    {
      'title': Strings.animals,
      'image': 'assets/images/pawprint 1.png',
      'route': Routes.animalsScreen,
    },
    {
      'title': Strings.services,
      'image': 'assets/images/pawprint 1.png',
      'route': Routes.servicesScreen,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        final category = categories[index];
        return GestureDetector(
          onTap: () {
            Get.toNamed(categories[index]['route']);
          },
          child: Card(
            elevation: 5,
            color: CustomColor.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    category['image'],
                    height: Dimensions.iconSizeDefault * 1.4,
                    fit: BoxFit.contain,
                  ),
                  Sizes.height.v5,
                  TextWidget(
                    maxLines: 2,
                    category['title'],
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: Dimensions.titleSmall * 0.8),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
