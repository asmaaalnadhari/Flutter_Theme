//SharedPreferences
  //- Store data key:value.
  //save - get -delete- clear
import 'package:shared_preferences/shared_preferences.dart';

class CacheData{
 static late SharedPreferences sharedPreferences; //declare
 static Future<void> cacheInitialization() async {
    sharedPreferences= await SharedPreferences.getInstance();
  }
  //methods:
    ///1. set:
    // void setData({required String key, required bool value}){
//   sharedPreferences.setBool(key, value);
// }
  static Future<bool> setData({required String key, required dynamic value})async
  {
   if( value is bool)
     {
       print(value is bool);
       return await sharedPreferences.setBool(key, value);
     }
   else if( value is String)
     {

       return await  sharedPreferences.setString(key, value);
   }
  else if( value is double)
     {

       return await  sharedPreferences.setDouble(key, value);
   }
  else if( value is int)
     {

       return await  sharedPreferences.setInt(key, value);
   }
  return false;
  //   switch(value) {
  //     case bool:
  //       return await sharedPreferences.setBool(key, value);
  //     case String:
  //       return await sharedPreferences.setString(key, value);
  //     case double:
  //      return await sharedPreferences.setDouble(key, value);
  //     case int:
  //       return await sharedPreferences.setInt(key, value);
  //     default:
  //       return false;
  //   }

  }
    ///2. get:
  static dynamic getData({required String key})
  {
    return sharedPreferences.get(key);
  }
  ///3. delete:
  static Future<bool> deleteData({required String key})async
  {
    return await sharedPreferences.remove(key);
  }
  ///3. clear:
  static Future<bool> clearData()async
  {
    return await sharedPreferences.clear();
  }
}