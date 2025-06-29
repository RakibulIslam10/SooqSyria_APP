part of '../screen/my_serches_screen.dart';

class SerchesItemsCard extends GetView<MySerchesController> {
  const SerchesItemsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
   Column(children: [
     Divider(color: CustomColor.whiteShade),
     Padding(
       padding:  EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
       child: Row(
         children: [
           Expanded(
             child: Column(
               crossAxisAlignment: crossStart,
               children: [
                 TextWidget(
                   'Mobile phone . Apple',
                   color: CustomColor.borderColor.withAlpha(981),
                   fontSize: Dimensions.titleSmall *1.1,
                 ),
                 TextWidget(
                   padding: EdgeInsetsGeometry.symmetric(vertical: Dimensions.verticalSize * 0.1),
                   'My Apple Serach 65456',
                   color: CustomColor.borderColor.withAlpha(981),
                   fontSize: Dimensions.titleSmall *1.1,
                 ),
                 TextWidget(
                   'Dubai',
                   color: CustomColor.borderColor.withAlpha(981),
                   fontSize: Dimensions.titleSmall *1.1,
                 ),
                 TextWidget(
                   padding: EdgeInsetsGeometry.symmetric(vertical: Dimensions.verticalSize * 0.1),

                   'Save on : June 01',
                   color: CustomColor.borderColor.withAlpha(981),
                   fontSize: Dimensions.titleSmall *1.1,
                 )
               ],
             ),
           ),
           Wrap(
             children: [
               Image.asset(
                 'assets/images/car.png',
                 height: 120.h,
                 width: 70.w,
               ),
               Sizes.width.v20,
               Image.asset(
                 'assets/images/car.png',
                 height: 120.h,
                 width: 70.w,
               ),
             ],
           ),
         ],
       ),
     ),
     Divider(color: CustomColor.whiteShade),
   ],);
    
  
  }
}
