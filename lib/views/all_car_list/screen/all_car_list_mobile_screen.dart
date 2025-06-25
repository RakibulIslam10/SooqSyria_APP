part of 'all_car_list_screen.dart';

class AllCarListMobileScreen extends GetView<AllCarListController> {
  const AllCarListMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar('AllCarList Mobile Screen'),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize,vertical: Dimensions.verticalSize),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.purpleAccent,
              elevation: 10,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: CustomColor.whiteColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius * 0.4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/car.png',
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),

                    TextWidget(
                      'AED 120.2120',
                      fontSize: Dimensions.titleSmall * 0.8,
                      color: CustomColor.primary,
                      fontWeight: FontWeight.bold,
                    ),
                    TextWidget(
                      "BYD.HAN.Extend",
                      fontSize: Dimensions.titleSmall * 0.8,
                    ),
                    TextWidget(
                      "2015.15Km",
                      color: CustomColor.grayColor,
                      fontSize: Dimensions.titleSmall * 0.8,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
