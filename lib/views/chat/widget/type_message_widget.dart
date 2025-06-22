part of '../screen/chat_screen.dart';

class TypeMessageWidget extends GetView<ChatController> {
  const TypeMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.8),
                border: Border.all(color: CustomColor.grayColor, width: 1.5),
              ),
              child: TextFormField(
                controller: controller.textController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.emoji_emotions_outlined,
                    color: CustomColor.grayColor,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: controller.pickImageFromGallery,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        'assets/icons/Icon.svg',
                        fit: BoxFit.contain,
                        color: CustomColor.grayColor,
                      ),
                    ),
                  ),

                  hintText: Strings.typeMessage,
                  hintStyle: TextStyle(
                    color: CustomColor.grayColor,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      Dimensions.radius * 0.8,
                    ),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: CustomColor.whiteColor,
                ),
              ),
            ),
          ),

          SizedBox(width: Dimensions.widthSize),
          GestureDetector(
            onTap: controller.sendMessage,
            child: Container(
              padding: EdgeInsetsGeometry.all(Dimensions.paddingSize * 0.4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.8),
                color: CustomColor.primary,
              ),
              child: Icon(
                Icons.send,
                size: Dimensions.iconSizeSmall * 2,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
