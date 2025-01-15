// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class ApiService {
//   static const String baseUrl = 'http://127.0.0.1:8000/api/auth';

//   // Register User
//   static Future<Map<String, dynamic>> registerUser(String username, String email, String password) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/register/'),
//       body: jsonEncode({'username': username, 'email': email, 'password': password}),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode == 201) {
//       return {"success": true, "message": "User registered successfully"};
//     } else {
//       return {"success": false, "message": jsonDecode(response.body)['error']};
//     }
//   }

//   // Login User
//   static Future<Map<String, dynamic>> loginUser(String username, String password) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/login/'),
//       body: jsonEncode({'username': username, 'password': password}),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode == 200) {
//       return {"success": true, "message": "Login successful"};
//     } else {
//       return {"success": false, "message": jsonDecode(response.body)['error']};
//     }
//   }
// }

