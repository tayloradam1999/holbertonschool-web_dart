import '1-main.dart';
import 'dart:convert';
// getUserID() returns a Future string representing the user id


Future<String> getUserId() async {
  final String userData = await fetchUserData();
  final Map<String, dynamic> user = jsonDecode(userData);
  return user['id'];
}