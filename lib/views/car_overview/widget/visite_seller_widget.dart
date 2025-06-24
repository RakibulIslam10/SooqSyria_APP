part of '../screen/car_overview_screen.dart';


class VisiteSellerWidget extends GetView<CarOverviewController> {
  const VisiteSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.verticalSize * 0.4,
      ),
      child: Row(
        children: [
          // Seller image with shimmer
          Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius),
            ),
            clipBehavior: Clip.hardEdge,
            child: CachedNetworkImage(
              imageUrl: 'https://woodyworld.co/wp-content/uploads/2022/12/New-Project-2.jpg',
              fit: BoxFit.cover,
              placeholder: (context, url) => Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Container(color: Colors.grey.shade300),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
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
              GestureDetector(
                onTap: () => Get.toNamed(Routes.seller_profileScreen),
                child: Text(
                  Strings.visitTheSellerProfile,
                  style: TextStyle(
                    color: CustomColor.primary,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
