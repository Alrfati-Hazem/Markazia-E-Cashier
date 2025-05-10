import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

enum PreferencesKey { token }

@lazySingleton
class AppPreferences {
  final FlutterSecureStorage _secureStorage;
  AppPreferences(this._secureStorage);

  void setAccessToken(String value) {
    _secureStorage.write(key: PreferencesKey.token.name, value: value);
  }

  Future<String?> get accessToken async =>
      await _secureStorage.read(key: PreferencesKey.token.name);

  void deleteAccessToken() {
    _secureStorage.delete(key: PreferencesKey.token.name);
  }
}
