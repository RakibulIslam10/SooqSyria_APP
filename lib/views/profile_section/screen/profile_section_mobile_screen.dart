part of 'profile_section_screen.dart';

class ProfileSectionMobileScreen extends GetView<ProfileSectionController> {
  ProfileSectionMobileScreen({super.key});

  final List<String> sectionTextList = [
    Strings.myProfile,
    Strings.myAddresses,
    Strings.myJobProfile,
    Strings.myPublicProfile,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsetsGeometry.symmetric(
          vertical: Dimensions.verticalSize * 0.4,
        ),
        margin: EdgeInsetsGeometry.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
          vertical: Dimensions.verticalSize * 2,
        ),
        decoration: BoxDecoration(
          color: CustomColor.whiteColor,

          borderRadius: BorderRadius.circular(Dimensions.radius * 1.5),
          border: Border.all(color: CustomColor.whiteShade),
        ),

        child: GestureDetector(
          onTap: () {
            Get.dialog(
              AlertDialog(
                backgroundColor: CustomColor.whiteColor,
                title: TextWidget(
                  Strings.deleteAccount,
                  fontSize: Dimensions.titleLarge,
                  fontWeight: FontWeight.bold,
                ),
                content: TextWidget(
                  Strings.deleteACountConfirmationTex,
                  fontSize: Dimensions.titleSmall,
                ),
                actions: [
                  Wrap(
                    children: [
                      Container(
                        padding: EdgeInsetsGeometry.symmetric(
                          horizontal: Dimensions.defaultHorizontalSize * 0.8,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: CustomColor.whiteShade),
                          borderRadius: BorderRadius.circular(
                            Dimensions.radius * 2,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () => Get.back(),
                          child: TextWidget(
                            Strings.no,
                            fontSize: Dimensions.titleSmall,
                          ),
                        ),
                      ),
                      Sizes.width.v10,
                      Container(
                        padding: EdgeInsetsGeometry.symmetric(
                          horizontal: Dimensions.defaultHorizontalSize * 0.8,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffFF3636),
                          borderRadius: BorderRadius.circular(
                            Dimensions.radius * 2,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () => Get.back(),
                          child: TextWidget(
                            Strings.yes,
                            fontSize: Dimensions.titleSmall,
                            color: CustomColor.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          child: Row(
            mainAxisAlignment: mainCenter,
            children: [
              Icon(Icons.delete_forever_outlined, color: CustomColor.rejected),
              TextWidget(
                Strings.deleteAccount,
                color: CustomColor.rejected,
                fontSize: Dimensions.titleSmall,
                padding: EdgeInsetsGeometry.only(left: Dimensions.widthSize),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBarWidget(
        title: Strings.profile,
        titleColor: CustomColor.blackColor,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
        ),
        child: Column(
          children: [
            ...List.generate(
              sectionTextList.length,
              (index) => Column(
                crossAxisAlignment: crossStart,
                children: [
                  GestureDetector(
                    onTap: () => controller.handleRoute(index),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          sectionTextList[index],
                          padding: EdgeInsetsGeometry.all(
                            Dimensions.verticalSize * 0.25,
                          ),
                        ),
                        if (sectionTextList[index] == Strings.myProfile ||
                            sectionTextList[index] == Strings.myAddresses)
                          Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
