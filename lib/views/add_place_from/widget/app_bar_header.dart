part of '../screen/add_place_from_screen.dart';

class AppBarHeader extends GetView<AddPlaceFromController> {
  const AppBarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return 
   Column(children: [
     Row(
       mainAxisAlignment: mainSpaceBet,
       children: [
         InkWell(
           hoverColor: Colors.transparent,
           splashColor: Colors.transparent,
           highlightColor: Colors.transparent,
           onTap: () => Get.back(),
           child: Container(
             padding: EdgeInsetsGeometry.all(Dimensions.paddingSize * 0.2),
             margin: EdgeInsets.all(Dimensions.paddingSize * 0.25),
             decoration: BoxDecoration(
               color: CustomColor.primary,
               shape: BoxShape.circle,
             ),
             child: Center(
               child: Icon(
                 Icons.arrow_back_ios_new,
                 size: Dimensions.iconSizeLarge * 0.8,
                 color: CustomColor.whiteColor,
               ),
             ),
           ),
         ),
         TextWidget(
           Strings.placeAnAdd,fontWeight: FontWeight.bold,),
         SizedBox()
       ],),
     Divider(color: CustomColor.grayColor.withAlpha(88),height: 1.2,),
     TextWidget(
       padding: EdgeInsetsGeometry.symmetric(vertical: Dimensions.verticalSize * 0.4),
       Strings.tellUsAboutYourHousing,fontWeight: FontWeight.bold,fontSize: Dimensions.titleLarge * 0.8,),
   ],);
    
  
  }
}
