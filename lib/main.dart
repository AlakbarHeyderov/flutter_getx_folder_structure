import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:ui' as UI;

import 'blinding/home_bilding.dart';
import 'roots/app_pages.dart';

final isLoged = GetStorage();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  // await Hive.initFlutter();
  // Hive.registerAdapter(SavedAddressModelAdapter());
  // await Hive.openBox<SavedAddressModel>('savedAddress');

  await GetStorage.init(); // transparent status bar
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // navigatorObservers: [FlutterSmartDialog.observer],
      // builder: FlutterSmartDialog.init(),
      title: "alo141",
      initialRoute: '/init',
      initialBinding: HomeBinding(),
      defaultTransition: Transition.cupertinoDialog,
      getPages: AppPages.pages,
      // translations: Translate(),
      // theme: Themes().darkTheme,
      // darkTheme: Themes().darkTheme,
      // locale: isLoged.read('az') == null || isLoged.read('az') == false
      //     ? UI.Locale('en', 'US')
      //     : isLoged.read('ru') == null || isLoged.read('ru') == false
      //         ? UI.Locale('az', 'AZ')
      //         : UI.Locale('ru', 'RU'),
      locale: isLoged.read('az') == null
          ? UI.Locale('en', 'US')
          : isLoged.read('az') == true
              ? UI.Locale('az', 'AZ')
              : UI.Locale('ru', 'RU'),
      fallbackLocale: isLoged.read('az') == null
          ? UI.Locale('en', 'US')
          : isLoged.read('az') == true
              ? UI.Locale('az', 'AZ')
              : UI.Locale('ru', 'RU'),
      // fallbackLocale: isLoged.read('az') == null || isLoged.read('az') == false
      //     ? UI.Locale('en', 'US')
      //     : isLoged.read('ru') == null || isLoged.read('ru') == false
      //         ? UI.Locale('az', 'AZ')
      //         : UI.Locale('ru', 'RU'),
    ),
  );
}
