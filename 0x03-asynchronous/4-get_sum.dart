import '4-main.dart';
import 'dart:convert';
// calculateTotal() calculates total price of items for a certain user.


Future<double> calculateTotal() async {
  try {
    // await is ONLY used in this function to wait for the return of
    // functions from 4-main.dart

    // gets user data by calling fetchUserData
    final Map<String, dynamic> userData = json.decode(await fetchUserData());
    // gets user's orders by calling fetchCart with id
    final String id = userData['id'];
    final List<dynamic> userOrders = json.decode(await fetchUserOrders(id));
    // calculates total price of items
    double total = 0;
    for (final product in userOrders) {
      total += json.decode(await fetchProductPrice(product));
    }
    return total;
  } catch (e) {
    return -1;
  }
}