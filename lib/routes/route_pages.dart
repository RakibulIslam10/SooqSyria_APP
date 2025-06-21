part of '../routes/routes.dart';

class RoutePageList {
  static var list = [
    GetPage(
      name: Routes.favoriteScreen,
      page: () => const FavoriteScreen(),
      binding: FavoriteBinding(),
    ),
    
    GetPage(
      name: Routes.MenusScreen,
      page: () => const MenusScreen(),
      binding: MenusBinding(),
    ),


    
    GetPage(
      name: Routes.inboxScreen,
      page: () => const InboxScreen(),
      binding: InboxBinding(),
    ),

    
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    
    GetPage(
      name: Routes.navigationScreen,
      page: () => const NavigationScreen(),
      binding: NavigationBinding(),
    ),

    GetPage(
      name: Routes.set_passwordScreen,
      page: () => const SetPasswordScreen(),
      binding: SetPasswordBinding(),
    ),

    GetPage(
      name: Routes.splashScreen,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.onboardScreen,
      page: () => OnboardScreen(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.registerScreen,
      page: () => RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.registerSecondScreen,
      page: () => RegisterSecondScreen(),
      binding: RegisterSecondBinding(),
    ),
    GetPage(
      name: Routes.otpScreen,
      // transition: Transition.rightToLeft,
      page: () => OtpScreen(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordScreen,
      // transition: Transition.rightToLeft,
      page: () => ResetPasswordScreen(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordOtpScreen,
      // transition: Transition.rightToLeft,
      page: () => ResetPasswordOtpScreen(),
      binding: ResetPasswordOtpBinding(),
    ),
  ];
}
