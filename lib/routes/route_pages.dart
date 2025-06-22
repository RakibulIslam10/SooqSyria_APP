part of '../routes/routes.dart';

class RoutePageList {
  static var list = [
    GetPage(
      name: Routes.chatScreen,
      page: () => const ChatScreen(),
      binding: ChatBinding(),
    ),
    
    GetPage(
      name: Routes.notificationScreen,
      page: () => const NotificationScreen(),
      binding: NotificationBinding(),
    ),
    
    GetPage(
      name: Routes.favorite_overviewScreen,
      page: () => const FavoriteOverviewScreen(),
      binding: FavoriteOverviewBinding(),
    ),
    
    GetPage(
      name: Routes.favorited_itemsScreen,
      page: () => const FavoritedItemsScreen(),
      binding: FavoritedItemsBinding(),
    ),
    
    GetPage(
      name: Routes.servicesScreen,
      page: () => const ServicesScreen(),
      binding: ServicesBinding(),
    ),

    GetPage(
      name: Routes.animalsScreen,
      page: () => const AnimalsScreen(),
      binding: AnimalsBinding(),
    ),

    GetPage(
      name: Routes.new_and_used_productScreen,
      page: () => const NewAndUsedProductScreen(),
      binding: NewAndUsedProductBinding(),
    ),

    GetPage(
      name: Routes.job_offersScreen,
      page: () => const JobOffersScreen(),
      binding: JobOffersBinding(),
    ),

    GetPage(
      name: Routes.real_stateScreen,
      page: () => const RealStateScreen(),
      binding: RealStateBinding(),
    ),

    GetPage(
      name: Routes.vehiclesScreen,
      page: () => const VehiclesScreen(),
      binding: VehiclesBinding(),
    ),

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
