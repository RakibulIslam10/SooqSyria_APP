
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:sooqyria/bindings/otp_binding.dart';
import 'package:sooqyria/bindings/register_second_binding.dart';
import 'package:sooqyria/bindings/reset_password_binding.dart';
import 'package:sooqyria/views/auth/otp_screen/screen/otp_screen.dart';
import 'package:sooqyria/views/auth/register/screen/register_screen.dart';
import 'package:sooqyria/views/auth/register_second_screen/screen/register_second_screen.dart';
import 'package:sooqyria/views/auth/reset_password/screen/reset_password_screen.dart';
import 'package:sooqyria/views/auth/reset_password_otp_screen/screen/reset_password_otp_screen.dart';

import '../bindings/login_binding.dart';
import '../bindings/onboard_binding.dart';
import '../bindings/register_binding.dart';
import '../bindings/reset_password_otp_binding.dart';
import '../bindings/set_password_binding.dart';
import '../bindings/splash_binding.dart';
import '../views/auth/login/screen/login_screen.dart';
import '../views/onboard/screen/onboard_screen.dart';
import '../views/set_password/screen/set_password_screen.dart';
import '../views/splash/screen/splash_screen.dart';

part '../routes/route_pages.dart';

class Routes {
  // Page List
  static var list = RoutePageList.list;

  // Route Names
  static const String splashScreen = '/splashScreen';
  static const String onboardScreen = '/onboardScreen';
  static const String loginScreen = '/loginScreen';
  static const String registerScreen = '/registerScreen';
  static const String registerSecondScreen = '/registerSecondScreen';
  static const String otpScreen = '/otpScreen';
  static const String forgotPasswordScreen = '/resetPasswordScreen';
  static const String forgotPasswordOtpScreen = '/resetPasswordOtpScreen';

  static const String set_passwordScreen = '/set_passwordScreen';
}
