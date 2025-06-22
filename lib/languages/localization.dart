import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:sooqyria/languages/arabic.dart';
import 'package:sooqyria/languages/english.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': english,
    'ar_SA': arabic,
  };
}
