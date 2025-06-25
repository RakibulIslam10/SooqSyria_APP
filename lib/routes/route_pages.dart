part of '../routes/routes.dart';

class RoutePageList {
  static var list = [
    GetPage(
      name: Routes.add_place_fromScreen,
      page: () => const AddPlaceFromScreen(),
      binding: AddPlaceFromBinding(),
    ),
    
    GetPage(
      name: Routes.add_category_typeScreen,
      page: () => const AddCategoryTypeScreen(),
      binding: AddCategoryTypeBinding(),
    ),
    
    GetPage(
      name: Routes.selection_categoryScreen,
      page: () => const SelectionCategoryScreen(),
      binding: SelectionCategoryBinding(),
    ),
    
    GetPage(
      name: Routes.select_cityScreen,
      page: () => const SelectCityScreen(),
      binding: SelectCityBinding(),
    ),
    
    
    GetPage(
      transition: Transition.rightToLeft,
      name: Routes.car_categoriesScreen,
      page: () => const CarCategoriesScreen(),
      binding: CarCategoriesBinding(),
    ),

    GetPage(
      name: Routes.all_car_listScreen,
      page: () => const AllCarListScreen(),
      binding: AllCarListBinding(),
    ),

    GetPage(
      name: Routes.housing_overviewScreen,
      page: () => const HousingOverviewScreen(),
      binding: HousingOverviewBinding(),
    ),

    GetPage(
      name: Routes.real_state_housingScreen,
      page: () => const RealStateHousingScreen(),
      binding: RealStateHousingBinding(),
    ),

    GetPage(
      name: Routes.sub_categoryScreen,
      transition: Transition.rightToLeft,
      page: () => const SubCategoryScreen(),
      binding: SubCategoryBinding(),
    ),

    GetPage(
      transition: Transition.rightToLeft,
      name: Routes.car_sub_categoryScreen,
      page: () => const CarSubCategoryScreen(),
      binding: CarSubCategoryBinding(),
    ),

    GetPage(
      name: Routes.categories_detailsScreen,
      page: () => const CategoriesDetailsScreen(),
      binding: CategoriesDetailsBinding(),
    ),

    GetPage(
      name: Routes.seller_profileScreen,
      page: () => const SellerProfileScreen(),
      binding: SellerProfileBinding(),
    ),

    GetPage(
      name: Routes.car_overviewScreen,
      page: () => const CarOverviewScreen(),
      binding: CarOverviewBinding(),
    ),

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
