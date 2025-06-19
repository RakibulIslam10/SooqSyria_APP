import 'package:flutter/cupertino.dart';
import 'package:sooqyria/views/auth/register/controller/register_controller.dart';
import 'package:sooqyria/views/auth/register/widget/register_input_widget.dart';
import '../../../../base/utils/basic_import.dart';
import '../../../../base/widgets/custom_date_picker.dart';

class RegisterFirstField extends GetView<RegisterController> {
  const RegisterFirstField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        RegisterInputWidget(
          label: Strings.yourEmail,
          controller: controller.firstNameController,
          hintText: Strings.firstName,
        ),
        Sizes.height.betweenInputBox,
        RegisterInputWidget(
          label: Strings.lastName,
          controller: controller.lastNameController,
          hintText: Strings.lastName,
        ),
        Sizes.height.betweenInputBox,
        CustomDatePicker(
          label: Strings.dateOfBirth,
          selectedDate: controller.dateOfBrith,
          showBorder: true,
        ),
        Sizes.height.betweenInputBox,

        TextWidget(
          fontSize: Dimensions.titleMedium * 0.9,
          Strings.gender,
          style: CustomStyle.labelSmall.copyWith(fontWeight: FontWeight.bold),
          color: Color(0xfff1D1D1D),
        ),
        Sizes.height.btnInputTitleAndBox,
        CustomDropDown(
          itemsList: controller.genderList,
          selectMethod: RxString('Male'),
        ),
      ],
    );
  }
}
