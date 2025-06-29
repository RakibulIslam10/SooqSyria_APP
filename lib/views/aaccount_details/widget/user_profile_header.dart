part of '../screen/aaccount_details_screen.dart';

class UserProfileHeader extends GetView<AaccountDetailsController> {
  const UserProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: EdgeInsets.symmetric(
          vertical: Dimensions.verticalSize * 0.4,
        ),
        child: Row(
          children: [
            // Seller image with shimmer
            Column(
              children: [
                Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  clipBehavior: Clip.hardEdge,
                  child: CachedNetworkImage(
                    imageUrl:
                    'https://woodyworld.co/wp-content/uploads/2022/12/New-Project-2.jpg',
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: Container(color: Colors.grey.shade300),
                    ),
                    errorWidget: (context, url, error) =>
                    const Icon(Icons.error),
                  ),
                ),
                TextWidget(
                  Strings.changePicture,
                  fontSize: Dimensions.titleSmall * 0.6,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),

            // Spacing
            Sizes.width.v10,

            // Seller info
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
                      fontWeight: FontWeight.bold,
                    ),
                    Icon(
                      Icons.verified,
                      color: CustomColor.primary,
                      size: Dimensions.iconSizeSmall * 2,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsetsGeometry.only(
                    top: Dimensions.heightSize,
                  ),
                  decoration: BoxDecoration(
                    color: CustomColor.primary,
                    borderRadius: BorderRadius.circular(
                      Dimensions.radius * 0.8,
                    ),
                  ),
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: Dimensions.defaultHorizontalSize * 0.7,
                    vertical: Dimensions.verticalSize * 0.16,
                  ),
                  child: TextWidget(
                    Strings.copyProfileUrl,
                    color: CustomColor.whiteColor,
                    fontSize: Dimensions.titleSmall * 0.95,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    
  
  }
}
