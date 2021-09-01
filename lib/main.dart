import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'translations/LanguageTranslations.dart';
import 'screen/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      translations: LanguageTranslations(),
      locale: Get.deviceLocale,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.amber),
      ),
      home: Home(),

    );
  }
}