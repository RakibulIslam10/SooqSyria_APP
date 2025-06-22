part of '../screen/notification_screen.dart';

class NotificationListWidget extends GetView<NotificationController> {
  const NotificationListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: Dimensions.verticalSize * 0.5),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue.shade900, width: 2),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpK1noS9RwpA351YDfG9dRCvSON-j5nZHU0A&s',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: CustomColor.primary,
                        shape: BoxShape.circle,
                      ),
                      child: TextWidget(
                        fontSize: Dimensions.titleSmall * 0.6,
                        '2',
                        color: CustomColor.whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Sizes.width.v10,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      'Jon',
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.titleSmall,
                    ),
                    SizedBox(height: 2),
                    TextWidget(
                      'New Listing Alert!',
                      fontSize: Dimensions.titleSmall * 0.8,
                      color: CustomColor.blackColor.withAlpha(968),
                    ),
                  ],
                ),
              ),
              TextWidget(
                '1m ago.',
                fontWeight: FontWeight.bold,
                color: CustomColor.grayColor,
                fontSize: Dimensions.titleSmall * 0.8,
              ),
            ],
          ),
        );
      },
    );
  }
}
