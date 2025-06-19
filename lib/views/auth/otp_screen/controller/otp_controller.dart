import 'package:get/get.dart';

import '../../../../languages/strings.dart';
import '../../../../routes/routes.dart';
import '../../../congratulations/model/congratulations_model.dart';
import '../../../congratulations/screen/congratulations_screen.dart';

class OtpController extends GetxController{
  void confirmation() {
    Congratulation congratulation = Congratulation(
      details: "",
      route: Routes.otpScreen,
      buttonText: Strings.backToHome,
      type: Strings.confirmation,
    );

    Get.to(
          () => CongratulationsScreen(),
      arguments: congratulation,
    );
  }

}