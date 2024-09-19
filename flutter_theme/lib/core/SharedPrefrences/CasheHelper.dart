import 'package:shared_preferences/shared_preferences.dart';

/// A class responsible for managing cached data using SharedPreferences.
class CacheManager {
  static late SharedPreferences _sharedPreferences;

  /// Initialize the SharedPreferences instance.
  static Future<void> initializeCache() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  /// Save data based on the type of value.
  static Future<bool> saveData({required String key, required dynamic value}) async {
    if (value is bool) {
      return await _sharedPreferences.setBool(key, value);
    } else if (value is String) {
      return await _sharedPreferences.setString(key, value);
    } else if (value is double) {
      return await _sharedPreferences.setDouble(key, value);
    } else if (value is int) {
      return await _sharedPreferences.setInt(key, value);
    } else {
      throw ArgumentError('Unsupported value type for SharedPreferences');
    }
  }

  /// Retrieve data by key. Returns `null` if the key does not exist.
  static dynamic getData({required String key}) {
    return _sharedPreferences.get(key);
  }

  /// Delete data for a specific key.
  static Future<bool> deleteData({required String key}) async {
    return await _sharedPreferences.remove(key);
  }

  /// Clear all stored data.
  static Future<bool> clearAllData() async {
    return await _sharedPreferences.clear();
  }
}
