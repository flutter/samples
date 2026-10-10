import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  // Android Emulator -> เครื่อง Windows ใช้ 10.0.2.2
  static const String baseUrl = 'http://10.0.2.2:8000';

  Future<Map<String, dynamic>> login(
    String username,
    String password,
  ) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/token/'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    throw Exception(
      'Login failed: ${response.statusCode}\n${response.body}',
    );
  }
}