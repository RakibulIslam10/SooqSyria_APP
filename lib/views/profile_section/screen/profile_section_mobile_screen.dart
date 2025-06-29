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
