import 'dart:convert';
import 'package:http/http.dart' as http;

class UserApi {
  static Future<bool> fetchUsers(String username, String password) async {
    final String url = 'https://api.railplot.com/users/login';
    final uri = Uri.parse(url);
    print('Username: $username');
    print('Password: $password');
    final response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'username': username, 'password': password}),
    );

    print('status code: $response.statusCode');
    print('Response body: $response.body');
    final data = jsonDecode(response.body);
    if (data['message'] == 'ok') {
      return true;
    } else {
      return false;
    }
  }
}
