part of '../routes/routes.dart';

class RoutePageList {
  static var list = [
    GetPage(
      name: Routes.add_job_offer_formScreen,
      page: () => const AddJobOfferFormScreen(),
      binding: AddJobOfferFormBinding(),
    ),
    
    GetPage(
      name: Routes.car_add_formScreen,
      page: () => const CarAddFormScreen(),
      binding: CarAddFormBinding(),
    ),

    GetPage(
      name: Routes.location_addScreen,
      page: () => const LocationAddScreen(),
      binding: LocationAddBinding(),
    ),
    
    GetPage(
      name: Routes.account_reportScreen,
      page: () => const AccountReportScreen(),
      binding: AccountReportBinding(),
    ),
    
    GetPage(
      name: Routes.cchange_passwordScreen,
      page: () => const CchangePasswordScreen(),
      binding: CchangePasswordBinding(),
    ),
    
    GetPage(
      name: Routes.terms_conditionScreen,
      page: () => const TermsConditionScreen(),
      binding: TermsConditionBinding(),
    ),

    GetPage(
      name: Routes.privacy_policyScreen,
      page: () => const PrivacyPolicyScreen(),
      binding: PrivacyPolicyBinding(),
    ),

    GetPage(
      name: Routes.about_usScreen,
      page: () => const AboutUsScreen(),
      binding: AboutUsBinding(),
    ),

    GetPage(
      name: Routes.policiesScreen,
      page: () => const PoliciesScreen(),
      binding: PoliciesBinding(),
    ),

    GetPage(
      transition: Transition.rightToLeft,
      name: Routes.job_offers_categoryScreen,
      page: () => const JobOffersCategoryScreen(),
      binding: JobOffersCategoryBinding(),
    ),

    GetPage(
      transition: Transition.rightToLeft,

      name: Routes.vehicles_categoryScreen,
      page: () => const VehiclesCategoryScreen(),
      binding: VehiclesCategoryBinding(),
    ),

    GetPage(
      name: Routes.real_state_categoryScreen,
      transition: Transition.rightToLeft,
      page: () => const RealStateCategoryScreen(),
      binding: RealStateCategoryBinding(),
    ),

    GetPage(
      name: Routes.account_settingsScreen,
      page: () => const AccountSettingsScreen(),
      binding: AccountSettingsBinding(),
    ),

    GetPage(
      name: Routes.addressScreen,
      page: () => const AddressScreen(),
      binding: AddressBinding(),
    ),

    GetPage(
      name: Routes.aaccount_detailsScreen,
      page: () => const AaccountDetailsScreen(),
      binding: AaccountDetailsBinding(),
    ),

    GetPage(
      name: Routes.profile_sectionScreen,
      page: () => const ProfileSectionScreen(),
      binding: ProfileSectionBinding(),
    ),

    GetPage(
      name: Routes.my_serchesScreen,
      page: () => const MySerchesScreen(),
      binding: MySerchesBinding(),
    ),

    GetPage(
      name: Routes.my_addsScreen,
      page: () => const MyAddsScreen(),
      binding: MyAddsBinding(),
    ),

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
      transition: Transition.rightToLeft,
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
      transition: Transition.rightToLeft,
      name: Routes.servicesScreen,
      page: () => const ServicesScreen(),
      binding: ServicesBinding(),
    ),

    GetPage(
      transition: Transition.rightToLeft,
      name: Routes.animalsScreen,
      page: () => const AnimalsScreen(),
      binding: AnimalsBinding(),
    ),

    GetPage(
      transition: Transition.rightToLeft,
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
