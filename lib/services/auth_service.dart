import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/global.dart';

class AuthService {
  static Future<Map<String, dynamic>> login(
      String username, String password) async {
    final url = Uri.parse('${Global.baseUrl}/dataEntry/login');
    final response = await http.post(url, headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Accept': 'application/json',
    }, body: {
      'username': username,
      'password': password,
    });

    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);
      final token = decoded['token'];
      final userData = decoded['data'];
      print('LOGIN DEBUG token: $token');


      return {
        'token': token,
        'isAdmin': userData['isAdmin'] ?? false,
      };
    } else {
      throw Exception('Login failed');
    }
  }

  static Future<void> loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    Global.token = prefs.getString('token') ?? '';
  }
}
