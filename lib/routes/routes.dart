
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sooqyria/bindings/otp_binding.dart';
import 'package:sooqyria/bindings/register_second_binding.dart';
import 'package:sooqyria/bindings/reset_password_binding.dart';
import 'package:sooqyria/views/auth/otp_screen/screen/otp_screen.dart';
import 'package:sooqyria/views/auth/register/screen/register_screen.dart';
import 'package:sooqyria/views/auth/register_second_screen/screen/register_second_screen.dart';
import 'package:sooqyria/views/auth/reset_password/screen/reset_password_screen.dart';
import 'package:sooqyria/views/auth/reset_password_otp_screen/screen/reset_password_otp_screen.dart';

import '../bindings/Menus_binding.dart';
import '../bindings/animals_binding.dart';
import '../bindings/favorite_binding.dart';
import '../bindings/favorite_overview_binding.dart';
import '../bindings/favorited_items_binding.dart';
import '../bindings/home_binding.dart';
import '../bindings/inbox_binding.dart';
import '../bindings/job_offers_binding.dart';
import '../bindings/login_binding.dart';
import '../bindings/navigation_binding.dart';
import '../bindings/new_and_used_product_binding.dart';
import '../bindings/notification_binding.dart';
import '../bindings/onboard_binding.dart';
import '../bindings/real_state_binding.dart';
import '../bindings/register_binding.dart';
import '../bindings/reset_password_otp_binding.dart';
import '../bindings/services_binding.dart';
import '../bindings/set_password_binding.dart';
import '../bindings/splash_binding.dart';
import '../bindings/vehicles_binding.dart';
import '../views/Menus/screen/Menus_screen.dart';
import '../views/animals/screen/animals_screen.dart';
import '../views/auth/login/screen/login_screen.dart';
import '../views/favorite/screen/favorite_screen.dart';
import '../views/favorite_overview/screen/favorite_overview_screen.dart';
import '../views/favorited_items/screen/favorited_items_screen.dart';
import '../views/home/screen/home_screen.dart';
import '../views/inbox/screen/inbox_screen.dart';
import '../views/job_offers/screen/job_offers_screen.dart';
import '../views/navigation/screen/navigation_screen.dart';
import '../views/new_and_used_product/screen/new_and_used_product_screen.dart';
import '../views/notification/screen/notification_screen.dart';
import '../views/onboard/screen/onboard_screen.dart';
import '../views/real_state/screen/real_state_screen.dart';
import '../views/services/screen/services_screen.dart';
import '../views/set_password/screen/set_password_screen.dart';
import '../views/splash/screen/splash_screen.dart';
import '../views/vehicles/screen/vehicles_screen.dart';

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
  static const String navigationScreen = '/navigationScreen';
  static const String homeScreen = '/homeScreen';
  static const String inboxScreen = '/inboxScreen';
  static const String MenusScreen = '/MenusScreen';
  static const String favoriteScreen = '/favoriteScreen';
  static const String vehiclesScreen = '/vehiclesScreen';
  static const String real_stateScreen = '/real_stateScreen';
  static const String job_offersScreen = '/job_offersScreen';
  static const String new_and_used_productScreen = '/new_and_used_productScreen';
  static const String animalsScreen = '/animalsScreen';
  static const String servicesScreen = '/servicesScreen';
  static const String favorited_itemsScreen = '/favorited_itemsScreen';
  static const String favorite_overviewScreen = '/favorite_overviewScreen';
  static const String notificationScreen = '/notificationScreen';
}
