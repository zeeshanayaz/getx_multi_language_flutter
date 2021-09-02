import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'translations/locale_constant.dart';
import 'translations/LanguageTranslations.dart';
import 'screen/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        print("Preference Revoked ${locale.languageCode}");
        Get.updateLocale(locale);
        print("GET LOCALE Revoked ${Get.locale.languageCode}");
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      translations: LanguageTranslations(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en','US'),
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.amber),
      ),
      home: Home(),

    );
  }
}
