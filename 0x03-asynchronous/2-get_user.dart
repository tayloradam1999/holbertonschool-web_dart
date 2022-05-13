import '2-main.dart';
// getUser function prints user's string representation
// utilizes try-catch block to handle errors


Future<void> getUser() async {
  try {
    print(await fetchUser());
  } catch (e) {
    print('error caught: $e');
  }
}