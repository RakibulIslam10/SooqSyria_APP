part of '../screen/seller_profile_screen.dart';

class UserInfoWidget extends GetView<SellerProfileController> {
  const UserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Row(
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
                TextWidget(
                  "Dealer",
                  color: CustomColor.grayColor,
                  fontSize: Dimensions.titleSmall * 0.9,
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Dimensions.verticalSize),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: Dimensions.heightSize * 3.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Dimensions.radius * 0.8,
                    ),
                    color: CustomColor.primary,
                  ),
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: Dimensions.defaultHorizontalSize * 2,
                    vertical: Dimensions.verticalSize * 0.21,
                  ),
                  child: Row(
                    mainAxisAlignment: mainCenter,

                    children: [
                      Icon(
                        Icons.call_outlined,
                        color: CustomColor.whiteColor,
                      ),
                      Sizes.width.v5,
                      TextWidget(
                        Strings.call,
                        color: CustomColor.whiteColor,
                      ),
                    ],
                  ),
                ),
              ),
              Sizes.width.v10,
              Expanded(
                child: Container(
                  height: Dimensions.heightSize * 3.2,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Dimensions.radius * 0.8,
                    ),
                    color: CustomColor.primary,
                  ),
                  padding: EdgeInsetsGeometry.symmetric(
                    vertical: Dimensions.verticalSize * 0.3,
                  ),
                  child: Row(
                    mainAxisAlignment: mainCenter,
                    children: [
                      Icon(
                        Icons.chat_outlined,
                        color: CustomColor.whiteColor,
                      ),
                      Sizes.width.v5,
                      TextWidget(
                        Strings.chat,
                        color: CustomColor.whiteColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
