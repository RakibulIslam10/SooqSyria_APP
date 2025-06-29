part of '../screen/address_screen.dart';

class AddressNotFoundWidgets extends GetView<AddressController> {
  const AddressNotFoundWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisAlignment: mainCenter,
        crossAxisAlignment: crossCenter,
        children: [
          TextWidget(Strings.addressNotFound, fontWeight: FontWeight.bold),
          TextWidget(
            padding: EdgeInsetsGeometry.only(
              top: Dimensions.heightSize * 0.2,
              bottom: Dimensions.verticalSize,
            ),
            Strings.youHaveNoAddressCurrentlyRegister,
            fontSize: Dimensions.titleSmall,
          ),
          Container(
            decoration: BoxDecoration(
              color: CustomColor.primary,
              borderRadius: BorderRadius.circular(Dimensions.radius),
            ),
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: Dimensions.defaultHorizontalSize * 5,
              vertical: Dimensions.verticalSize * 0.4,
            ),
            child: TextWidget(Strings.reload, color: CustomColor.whiteColor),
          ),
          Sizes.height.v20,
          Container(
            alignment: Alignment.center,
            height: Dimensions.heightSize * 4,
            decoration: BoxDecoration(
              border: Border.all(color: CustomColor.primary),
              borderRadius: BorderRadius.circular(Dimensions.radius),
            ),

            child: TextWidget(
              Strings.addNewLocation,
              color: CustomColor.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    
  
  }
}
