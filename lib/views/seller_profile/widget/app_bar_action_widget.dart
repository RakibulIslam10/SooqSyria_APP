part of '../screen/seller_profile_screen.dart';

class AppBarActionWidget extends GetView<SellerProfileController> {
  const AppBarActionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
        ),
        child: Builder(
          builder: (context) {
            return InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                final RenderBox button =
                context.findRenderObject() as RenderBox;
                final Offset position = button.localToGlobal(Offset.zero);
                final Size size = button.size;
                final result = await showMenu(
                  color: CustomColor.whiteColor,
                  context: context,
                  position: RelativeRect.fromLTRB(
                    position.dx,
                    position.dy + size.height,
                    position.dx + size.width,
                    position.dy,
                  ),
                  items: [
                    PopupMenuItem(
                      value: Strings.report,
                      child: Text(
                        Strings.report.tr,
                        style: TextStyle(
                          color: CustomColor.rejected.withAlpha(999),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: Strings.compyProfileURL,
                      child: Text(Strings.compyProfileURL.tr),
                    ),
                  ],
                  elevation: 8.0,
                );
                if (result == Strings.report) {
                  Get.toNamed(Routes.account_reportScreen);
                } else if (result == Strings.compyProfileURL) {}
              },
              child: Icon(Icons.more_horiz, size: Dimensions.iconSizeLarge),
            );
          },
        ),
      );
    
  
  }
}
