import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqyria/base/themes/token.dart';
import 'package:sooqyria/routes/routes.dart';
import 'package:sooqyria/views/splash/controller/splash_controller.dart';
import 'initializer.dart';
import 'languages/localization.dart';
import 'languages/strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      designSize: const Size(375, 812),
      builder: (_, child) => GetMaterialApp(
        translations: Languages(),
        locale: Locale('en', 'US'),
        fallbackLocale: Locale('en', 'US'),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        title: Strings.appName,
        theme: ThemeData(
          fontFamily: 'Inter',
          scaffoldBackgroundColor: CustomColor.whiteColor,
        ),

        getPages: Routes.list,
        initialBinding: BindingsBuilder(() {
          Get.lazyPut(() => SplashController());
        }),
        builder: (context, widget) {
          ScreenUtil.init(context);
          return MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: TextScaler.linear(1.0)),
            child: Directionality(
              textDirection: Get.locale?.languageCode == 'ar'
                  ? TextDirection.rtl
                  : TextDirection.ltr,
              child: widget!,
            ),
          );
        },
      ),
    );
  }
}
