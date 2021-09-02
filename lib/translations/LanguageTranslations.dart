import 'package:get/get.dart';

class LanguageTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'appTitle': 'GetX Multi Lingual Support',
          'title': 'Easy Language Translations',
          'subtitle':
              'This text will automatically be translated into the appropriate language',
          'button1': 'Switch language',
          'chooseLanguage': 'Choose your language'
        },
        'ur_PK': {
          'appTitle': 'GetX کثیر لسانی معاونت',
          'title': 'آسان زبان کے ترجمے',
          'subtitle': 'یہ متن خود بخود مناسب زبان میں ترجمہ ہو جائے گا',
          'button1': 'زبان تبدیل کریں',
          'chooseLanguage': 'اپنی زبان کا انتخاب کریں'
        },
        'sd_PK': {
          'appTitle': 'GetX گھڻ لساني سپورٽ',
          'title': 'آسان ترجمو',
          'subtitle': 'ھي متن خود بخود مناسب وليءَ ۾ ترجمو ٿي ويندو',
          'button1': 'ولي تبديل ڪريو',
          'chooseLanguage': 'پنھنجي ولي چونڊيو'
        },
      };
}
