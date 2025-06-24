part of '../screen/car_overview_screen.dart';

class SmillerCarWidgets extends GetView<CarOverviewController> {
  const SmillerCarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return 
   Column(children: [
     Row(
       mainAxisAlignment: mainSpaceBet,
       children: [
         TextWidget(
           padding: EdgeInsets.symmetric(
             vertical: Dimensions.verticalSize * 0.4,
           ),
           Strings.smillerCar,
           fontWeight: FontWeight.bold,
           fontSize: Dimensions.titleLarge * 0.8,
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

                 Row(
                   mainAxisAlignment: mainSpaceBet,
                   crossAxisAlignment: crossEnd,
                   children: [
                   Column(
                     crossAxisAlignment: crossStart,
                     children: [
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
                   ],),
                     GestureDetector(
                       onTap: () {
                         controller.toggleFavorite(controller.car);
                       },
                       child: Container(
                         padding: EdgeInsets.all(Dimensions.paddingSize * 0.24),
                         decoration: BoxDecoration(
                           color: Colors.white,
                           shape: BoxShape.circle,
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black.withOpacity(0.15),
                               blurRadius: 6,
                               offset: Offset(0, 3),
                             ),
                           ],
                         ),
                         child: Icon(Icons.bookmark_outline_outlined),
                       ),
                     ),
                 ],)
               ],
             )
           ),
         ),
       ),
     ),
   ],);
    
  
  }
}
