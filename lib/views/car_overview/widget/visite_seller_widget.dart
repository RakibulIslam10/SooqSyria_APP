part of '../screen/car_overview_screen.dart';

class VisiteSellerWidget extends GetView<CarOverviewController> {
  const VisiteSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: EdgeInsetsGeometry.symmetric(
          vertical: Dimensions.verticalSize * 0.4,
        ),

        child: Row(
          children: [
            Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimensions.radius,
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://woodyworld.co/wp-content/uploads/2022/12/New-Project-2.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Sizes.width.v10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TextWidget(
                      padding: EdgeInsets.only(
                        right: Dimensions.defaultHorizontalSize * 0.5,
                      ),
                      'Edhem Is.',
                      fontSize: Dimensions.titleSmall,
                      fontWeight: FontWeight.bold,
                    ),
                    Icon(
                      Icons.verified,
                      color: CustomColor.primary,
                      size: Dimensions.iconSizeSmall * 1.6,
                    ),
                  ],
                ),
                TextWidget(
                  "Dealer",
                  color: CustomColor.grayColor,
                  fontSize: Dimensions.titleSmall * 0.9,
                ),
                RichText(
                  textAlign: TextAlign.start,
                  text:                TextSpan(
                      text: Strings.visitTheSellerProfile,
                      style: TextStyle(
                        color: CustomColor.primary,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                    // ..onTap = () async {
                    //   final url = Uri.parse("https://www.instagram.com/chinaskymotors/");
                    //   if (await canLaunchUrl(url)) {
                    //     await launchUrl(url, mode: LaunchMode.externalApplication);
                    //   }
                    // },
                  ),
                ),
              ],
            ),

          ],
        ),
      );
    
  
  }
}
