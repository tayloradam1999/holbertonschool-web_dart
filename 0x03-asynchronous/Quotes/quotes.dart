import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
// generateQuote() accepts one argument 'id' and returns the quote associated with that id.
// url: https://breakingbadapi.com/api/quotes
// utilizes try-catch to handle errors.


Future<String> generateQuote(id) async {
  try {
    // fetch data from url
    // Uri is from dart:core
    var response = await http.get(Uri.parse('https://breakingbadapi.com/api/quotes/$id'), headers: {"Accept": "application/json"});
    // decode json data
    var jsonData = json.decode(response.body);
    // return the quote
    return jsonData[0]['author'] + ' : ' + jsonData[0]['quote'];
  } catch (e) {
    // print error
    return('There are no quotes');
  }
}