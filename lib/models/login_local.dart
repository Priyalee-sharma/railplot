// import 'package:shared_preferences/shared_preferences.dart';

// class LoginLocal {
//   static Future<void> saveLogin(String userName, String password) async {
//     final prefs = await SharedPreferences.getInstance();

//     await prefs.setString('userName', userName);
//     await prefs.setString('password', password);
//   }

//   static Future<Map<String, String?>> getLogin() async {
//     final prefs = await SharedPreferences.getInstance();

//     String? userName = prefs.getString('userName');
//     String? password = prefs.getString('password');
//     return {'userName': userName, 'password': password};
//   }
// }
