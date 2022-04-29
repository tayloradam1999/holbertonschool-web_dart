import 'dart:convert';
import 'package:http/http.dart' as http;
// generateQuote() accepts one argument 'id' and returns the quote associated with that id.
// url: https://breakingbadapi.com/api/quotes
// utilizes try-catch to handle errors.


Future<String> generateQuote(id) async {
  try {
    // fetch data from url
    // Uri is from dart:core
    final response = await http.get(
      Uri.https('breakingbadapi.com', '/api/quotes/$id'),
      headers: {'Content-Type': 'application/json'},
    );
    // decode json data
    final jsonData = json.decode(response.body);
    // return first quote fetched from API in this format:
    String charName = jsonData[0]['author'];
    String quote = jsonData[0]['quote'];
    return '$charName: $quote';
  } catch (e) {
    // print error
    print('There is no quotes');
  }
}