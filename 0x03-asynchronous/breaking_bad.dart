import 'dart:convert';
import 'package:http/http.dart' as http;
// printBbCharacters() prints all breaking bad characters.
// url: https://breakingbadapi.com/api/characters
// utilizes try-catch to handle errors.


Future<void> printBbCharacters() async {
  try {
    // fetch data from url
    // Uri is from dart:core
    final response = await http.get(
      Uri.https('breakingbadapi.com', '/api/characters'),
      headers: {'Content-Type': 'application/json'},
    );
    // decode json data
    final jsonData = json.decode(response.body);
    // loop through jsonData to print all character names on their own line
    for (var character in jsonData) {
      print(character['name']);
    }
  } catch (e) {
    // print error
    print('error caught: $e');
  }
}