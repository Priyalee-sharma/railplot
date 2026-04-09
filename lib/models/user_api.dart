import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:railplot/models/auth_storage.dart';

class UserApi {
  static Future<bool> fetchUsers(String username, String password) async {
    final authStorage = AuthStorage();
    try {
      final String url = 'https://api.railplot.com/users/login';
      final uri = Uri.parse(url);

      final response = await http
          .post(
            uri,
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({'username': username, 'password': password}),
          )
          .timeout(Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data['message'] == 'ok') {
          final token = data['data']['access_token'];

          if (token != null) {
            await authStorage.saveToken(token);

            return true;
          } else {
            print("Token is NULL ");
            return false;
          }
        } else {
          print("Login failed: message not ok ");
          return false;
        }
      } else {
        print("HTTP error: ${response.statusCode}");
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
