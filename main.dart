import 'package:country_code_picker/country_code_picker.dart';
import 'package:customer/controller/global_setting_conroller.dart';
//import 'package:customer/firebase_options.dart';
import 'package:customer/services/localization_service.dart';
import 'package:customer/themes/Styles.dart';
import 'package:customer/ui/contact_us/contact_us_screen.dart';
import 'package:customer/ui/coupon_screen/coupon_screen.dart';
import 'package:customer/ui/home_screens/home_screen.dart';
import 'package:customer/ui/on_boarding_screen.dart';
import 'package:customer/ui/orders/complete_order_screen.dart';
import 'package:customer/ui/orders/live_tracking_screen.dart';
import 'package:customer/ui/orders/order_details_screen.dart';
import 'package:customer/ui/profile_screen/profile_screen.dart';
import 'package:customer/ui/referral_screen/referral_screen.dart';
import 'package:customer/ui/review/review_screen.dart';
import 'package:customer/ui/settings_screen/setting_screen.dart';
//import 'package:customer/ui/auth_screen/information_screen.dart';
// import 'package:customer/ui/auth_screen/login_screen.dart';
// import 'package:customer/ui/auth_screen/otp_screen.dart';
// import 'package:customer/ui/chat_screen/FullScreenImageViewer.dart';
// import 'package:customer/ui/chat_screen/chat_screen.dart';
//import 'package:customer/ui/chat_screen/inbox_screen.dart';
//import 'package:customer/ui/dashboard_screen.dart';
//import 'package:customer/ui/auth_screen/login_screen.dart';
//import 'package:customer/ui/contact_us/contact_us_screen.dart';
//import 'package:customer/ui/dashboard_screen.dart';
// import 'package:customer/ui/faq/faq_screen.dart';
// import 'package:customer/ui/on_boarding_screen.dart';
// import 'package:customer/ui/profile_screen/profile_screen.dart';
//import 'package:customer/ui/auth_screen/login_screen.dart';
// import 'package:customer/ui/faq/faq_screen.dart';
// import 'package:customer/ui/home_screens/home_screen.dart';
//import 'package:customer/ui/splash_screen.dart';
//import 'package:customer/ui/splash_screen.dart';
import 'package:customer/utils/DarkThemeProvider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

//import 'utils/Preferences.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // await Preferences.initPref();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  void initState() {
    getCurrentAppTheme();
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(builder: (context, value, child) {
        return GetMaterialApp(
            title: 'GoRide',
            debugShowCheckedModeBanner: false,
            theme: Styles.themeData(
                themeChangeProvider.darkTheme == 0
                    ? true
                    : themeChangeProvider.darkTheme == 1
                        ? false
                        : themeChangeProvider.getSystemThem(),
                context),
            localizationsDelegates: const [
              CountryLocalizations.delegate,
            ],
            locale: LocalizationService.locale,
            fallbackLocale: LocalizationService.locale,
            translations: LocalizationService(),
            builder: EasyLoading.init(),
            home: GetBuilder<GlobalSettingController>(
                init: GlobalSettingController(),
                builder: (context) {
                  return const OnBoardingScreen();
                }));
      }),
    );
  }
}
