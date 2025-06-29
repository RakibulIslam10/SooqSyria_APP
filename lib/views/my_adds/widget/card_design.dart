part of '../screen/my_adds_screen.dart';

class CardDesign extends GetView<MyAddsController> {
  const CardDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding:  Dimensions.verticalSize.edgeVertical * 0.8,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsetsGeometry.only(right: Dimensions.widthSize),
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    border: Border.all(color: CustomColor.grayColor),
                    borderRadius: BorderRadius.circular(Dimensions.radius * 0.2),
                  ),
                ),

                Image.asset(
                  'assets/images/car.png',
                  height: Dimensions.heightSize * 8,
                ),
                Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Container(
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: Dimensions.paddingSize * 0.25,
                        vertical: Dimensions.verticalSize * 0.15,
                      ),
                      decoration: BoxDecoration(
                        color: CustomColor.primary,
                        borderRadius: BorderRadius.circular(Dimensions.radius),
                      ),
                      child: TextWidget(
                        Strings.paymentPending,
                        color: CustomColor.whiteColor,
                        fontSize: Dimensions.titleSmall * 0.7,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Sizes.height.v5,
                    TextWidget(
                      'AED 120.2120',
                      fontSize: Dimensions.titleSmall * 0.8,
                      color: CustomColor.primary,
                      fontWeight: FontWeight.bold,
                    ),
                    TextWidget(
                      padding: Dimensions.verticalSize.edgeVertical * 0.1,
                      "BYD.HAN.Extend",
                      fontSize: Dimensions.titleSmall * 0.8,
                    ),
                    TextWidget(
                      "Last update: May 20",
                      color: CustomColor.grayColor,
                      fontSize: Dimensions.titleSmall * 0.8,
                    ),

                    TextWidget(
                      padding: EdgeInsetsGeometry.only(
                        top: Dimensions.heightSize,
                      ),
                      Strings.completePayment,
                      fontSize: Dimensions.titleSmall * 0.95,
                      color: CustomColor.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
