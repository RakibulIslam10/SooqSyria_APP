part of '../screen/inbox_screen.dart';

class EmptyChatListWidget extends GetView<InboxController> {
  EmptyChatListWidget({super.key});

  final List textList = [
    Strings.all,
    Strings.buying,
    Strings.selling,
    Strings.unread,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: CustomColor.whiteShadeBlue,
            borderRadius: BorderRadius.circular(Dimensions.radius * 0.3),
          ),
          padding: EdgeInsets.all(Dimensions.paddingSize * 0.6),
          width: double.infinity,
          margin: EdgeInsetsGeometry.symmetric(
            horizontal: Dimensions.defaultHorizontalSize * 0.5,
          ),
          height: 80.h,
          child: Column(
            crossAxisAlignment: crossStart,
            children: [
              TextWidget(Strings.areYouVerified, fontWeight: FontWeight.bold),
              TextWidget(
                Strings.getMoreVisibilityAndEnhanceYourCredibility,
                fontSize: Dimensions.titleSmall * 0.8,
                color: CustomColor.grayColor,
              ),
            ],
          ),
        ),
        Sizes.height.v20,
        Wrap(
          children: List.generate(
            4,
            (index) => Container(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: Dimensions.verticalSize * 0.18,
              ),
              margin: EdgeInsetsGeometry.symmetric(
                horizontal: Dimensions.defaultHorizontalSize * 0.4,
              ),
              alignment: Alignment.center,
              width: 60.w,
              decoration: BoxDecoration(
                border: Border.all(color: CustomColor.primary),
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.6),
              ),
              child: TextWidget(
                textList[index],
                fontSize: Dimensions.titleSmall * 0.8,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Sizes.height.v40,
        Sizes.height.v40,
        TextWidget(
          Strings.yourChatIsEmpty,
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.titleLarge,
        ),
        Sizes.height.v10,
        TextWidget(
          textAlign: TextAlign.center,
          Strings.postAnAdOrMessageASellerToStart,
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.titleSmall,
        ),
        Sizes.height.v40,
        Sizes.height.v10,
        Container(
          margin: EdgeInsetsGeometry.symmetric(
            horizontal: Dimensions.defaultHorizontalSize * 5,
          ),
          padding: EdgeInsetsGeometry.symmetric(
            vertical: Dimensions.verticalSize * 0.4,
          ),
          decoration: BoxDecoration(
            color: CustomColor.primary,
            borderRadius: BorderRadius.circular(Dimensions.radius),
          ),
          child: Center(
            child: TextWidget(
              Strings.exploree,
              color: CustomColor.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Sizes.height.v5,
        TextButton(
          onPressed: () {},
          child: TextWidget(
            Strings.postANAdd,
            fontWeight: FontWeight.bold,
            color: CustomColor.blackColor.withAlpha(941),
          ),
        ),
      ],
    );
  }
}
