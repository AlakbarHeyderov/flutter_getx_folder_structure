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
 

  await GetStorage.init(); // transparent status bar
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
 
 
      initialRoute: '/init',
      initialBinding: HomeBinding(),
      defaultTransition: Transition.cupertinoDialog,
      getPages: AppPages.pages,
    
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
 
    ),
  );
}
