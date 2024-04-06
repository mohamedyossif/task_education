import 'package:shared_preferences/shared_preferences.dart';
class LocalData{
   static String logInUserKey='LogIn';
  //save Data
  static Future<bool> saveLogIn(bool value) async
   {
    SharedPreferences preferences= await SharedPreferences.getInstance();
    return await preferences.setBool(logInUserKey, value); 
   }
   //getData
  static Future<bool?> getLogIn() async
   {
    SharedPreferences preferences= await SharedPreferences.getInstance();
    return   preferences.getBool(logInUserKey) ; 
   }

  
}