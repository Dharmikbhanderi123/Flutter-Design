import 'package:get/get_navigation/get_navigation.dart';

//import 'package:flutter_translate/flutter_translate.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
        },
        'hi_IN': {
          'hello': 'नमस्कार',
        },
        'gu_IN': {
          'hello': 'નમસ્તે',
        },
      };
}
