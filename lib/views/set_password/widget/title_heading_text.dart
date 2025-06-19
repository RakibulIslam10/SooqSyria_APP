part of '../screen/set_password_screen.dart';

class TitleHeadingText extends GetView<SetPasswordController> {
  const TitleHeadingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Card(
      elevation: 0,
      margin: EdgeInsets.only(
        left: Dimensions.defaultHorizontalSize,
        right: Dimensions.defaultHorizontalSize,
        top: Dimensions.verticalSize * 0.67,
      ),
      color: Colors.pink,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.radius),
      ),
      child: Padding(
        padding: EdgeInsets.all(
          Dimensions.paddingSize * 0.42,
        ),
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            TextWidget(
              'TitleHeadingText Widget',
              typographyStyle: TypographyStyle.titleLarge,
              color: CustomColor.whiteColor,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
    
  
  }
}
