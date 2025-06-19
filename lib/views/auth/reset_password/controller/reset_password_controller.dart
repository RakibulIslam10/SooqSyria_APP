import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../base/api/services/auth_services.dart';

class ResetPasswordController extends GetxController {
  final emailAddressController = TextEditingController();
  final formKey = GlobalKey<FormState>();

}
