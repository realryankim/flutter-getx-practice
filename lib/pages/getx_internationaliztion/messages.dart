import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
        },
        'ko_KO': {
          'hello': '안녕하세요',
        },
        'es_ES': {
          'hello': 'Hola',
        }
      };
}
