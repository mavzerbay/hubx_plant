import 'package:hubx/src/app/di/locator.dart';
import 'package:talker_flutter/talker_flutter.dart';

class EnvConstants {
  static final Talker _logger = locator<Talker>();

  static const _baseAPIURLKEY = 'BASE_API_URL_KEY';
  static const _encryptedSharedPrefKey = 'ENCRYPTED_SHARED_PREF_KEY';

  static String get baseApiURL => const String.fromEnvironment(_baseAPIURLKEY);

  static String get encryptedSharedPrefKey =>
      const String.fromEnvironment(_encryptedSharedPrefKey);

  static void init() {
    _logger
      ..info('$_baseAPIURLKEY : $baseApiURL')
      ..info('$_encryptedSharedPrefKey : $encryptedSharedPrefKey');
  }
}
