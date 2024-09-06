// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class ApiService {
//   static const baseUrl = '';

//   Future<ResponseModel> fetchData() async {
//     final response = await http.get(Uri.parse(baseUrl));
//     if (response.statusCode == 200) {
//       print("data Fetched");

//       return ResponseModel.fromJson(jsonDecode(response.body));
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }
// }
