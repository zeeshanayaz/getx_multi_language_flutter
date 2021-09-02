import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_multi_language_flutter/translations/locale_constant.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final locales = [
    {'name': 'English', 'locale': Locale('en', 'US')},
    {'name': 'اردو', 'locale': Locale('ur', 'PK')},
    {'name': 'سنڌي', 'locale': Locale('sd', 'PK')},
  ];

  showLocaleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('chooseLanguage'.tr),
        content: Container(
          width: double.maxFinite,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => InkWell(
              child: Padding(
                child: Text(locales[index]['name']),
                padding: EdgeInsets.symmetric(vertical: 8),
              ),
              onTap: () => updateLocale(
                locales[index]['locale'],
                context,
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              color: Colors.black,
            ),
            itemCount: locales.length,
          ),
        ),
      ),
    );
  }

  updateLocale(Locale locale, BuildContext context) {
    Navigator.of(context).pop();
    setLocale(locale.languageCode, locale.countryCode);
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("appTitle".tr)),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app_rounded),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 200,
              ),
              SizedBox(height: 24),
              Text(
                'title'.tr,
                style: TextStyle(fontSize: 36, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              Text(
                'subtitle'.tr,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(height: 24),
              TextButton(
                child: Text(
                  'button1'.tr,
                  style: TextStyle(fontSize: 18, color: Colors.amberAccent),
                ),
                onPressed: () => {showLocaleDialog(context)},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
