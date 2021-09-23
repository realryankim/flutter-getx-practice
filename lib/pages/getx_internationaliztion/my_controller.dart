import 'dart:ui';

import 'package:get/get.dart';

class MyController extends GetxController {
  void changeLagunage(String languageCode, String countryCode) {
    var locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }
}
