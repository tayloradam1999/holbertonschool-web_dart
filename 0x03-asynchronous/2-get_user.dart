import '2-main.dart';
// getUser function prints user's string representation
// utilizes try-catch block to handle errors


Future<void> getUser() async {
  try {
    final String user = await fetchUserData();
    print(user);
  } catch (e) {
    print('error caught: $e');
  }
}