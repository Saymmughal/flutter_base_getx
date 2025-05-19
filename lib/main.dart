import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_getx/helper/routes_helper.dart';
import 'package:flutter_base_getx/utils/colors.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // For Firebase Initialization
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // FirebaseMessaging.instance.getToken().then((value) {
  //   debugPrint("Token =======================>>>>>>>>>>> : $value");
  // });
  // FirebaseMessaging.instance.requestPermission();
  // To initialize Push notifications
  // await NotificationService().initialize();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Base GetX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: const MaterialColor(0x306A99, primaryColor),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      // localizationsDelegates: const [
      //         CountryLocalizations.delegate,
      //       ],
      //       locale: LocalizationService.locale,
      //       fallbackLocale: LocalizationService.locale,
      //       translations: LocalizationService(),
      // builder: EasyLoading.init(),
      initialRoute: RouterHelper.initial,
      getPages: RouterHelper.routes,
    );
  }
}
