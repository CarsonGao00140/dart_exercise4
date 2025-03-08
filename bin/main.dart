import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dart_exercise4/user.dart';

void main() async {
  try {
    final response = await http.get(
      Uri.parse('https://dummyjson.com/users?limit=10')
    );

    if (response.statusCode == 200) {
      final users = jsonDecode(response.body)['users']
          .map((json) => User.fromJson(json))
          .toList();

      users.forEach(print);
    } else {
      throw Exception('Request failed with status: ${response.statusCode}');
    }
  } catch (error) {
    print(error);
  }
}