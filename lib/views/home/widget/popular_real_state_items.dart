part of '../screen/home_screen.dart';

class PopularRealStateItems extends GetView<HomeController> {
  const PopularRealStateItems({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: crossStart,
        children: [
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              TextWidget(
                padding: EdgeInsets.symmetric(
                  vertical: Dimensions.verticalSize * 0.4,
                ),
                Strings.popularInRealState,
                fontWeight: FontWeight.bold,
              ),
              SvgPicture.asset(Assets.icons.back),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Card(
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
              ),
            ),
          ),
        ],
      );
    
  
  }
}
