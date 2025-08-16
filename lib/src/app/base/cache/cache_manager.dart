import 'package:encrypt_shared_preferences/provider.dart';

class CacheManager {
  CacheManager._();

  static final CacheManager _instance = CacheManager._();

  static CacheManager get instance => _instance;

  final EncryptedSharedPreferences _secureStorage =
      EncryptedSharedPreferences.getInstance();

  Future<void> setString({required CacheKey key, required String value}) async {
    await _secureStorage.setString(key.name, value);
  }

  Future<String?> getString({required CacheKey key}) async {
    return _secureStorage.getString(key.name);
  }

  Future<void> setBool({required CacheKey key, required bool value}) async {
    await _secureStorage.setBool(key.name, value);
  }

  Future<bool?> getBool({required CacheKey key}) async {
    return _secureStorage.getBool(key.name);
  }

  Future<void> setDouble({required CacheKey key, required double value}) async {
    await _secureStorage.setDouble(key.name, value);
  }

  Future<double?> getDouble({required CacheKey key}) async {
    return _secureStorage.getDouble(key.name);
  }

  Future<void> setInt({required CacheKey key, required int value}) async {
    await _secureStorage.setInt(key.name, value);
  }

  Future<int?> getInt({required CacheKey key}) async {
    return _secureStorage.getInt(key.name);
  }

  Future<void> delete({required CacheKey key}) async {
    await _secureStorage.remove(key.name);
  }

  Future<void> deleteMultiple(List<CacheKey> keys) async {
    await Future.wait(keys.map((key) => _secureStorage.remove(key.name)));
  }

  Future<void> deleteAll() async {
    await _secureStorage.clear();
  }
}

enum CacheKey {
  accessToken,
  dateExpired,
  themeMode,
  deviceToken,
  isFirstLogin,
  isFirstLaunchApp,
  locale,
}
