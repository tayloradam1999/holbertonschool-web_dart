import '3-main.dart';
import 'dart:convert';
// greetUser returns the string 'hello ' + username from loginUser()
// utilizes the fetchUserData() function to get the user data
// utilizes try-catch block to handle errors


Future<String> greetUser() async {
  try {
    final String user = await fetchUserData();
    return 'Hello ${jsonDecode(user)['username']}';
  } catch (e) {
    print('error caught: $e');
    return 'error caught: $e';
  }
}


// loginUser() calls checkCredentials()
// if checkCredentials() returns true, loginUser() should call greetUser() and return it's value.
// if checkCredentials() returns false, loginUser() should return 'Wrong credentials'
// utilize try-catch block to handle errors
Future<String> loginUser() async {
  try {
    if (await checkCredentials()) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (e) {
    print('error caught: $e');
    return 'error caught: $e';
  }
}