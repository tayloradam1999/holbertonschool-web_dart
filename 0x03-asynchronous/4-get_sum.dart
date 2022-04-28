import '4-main.dart';
import 'dart:convert';
// calculateTotal() calculates total price of items for a certain user.


Future<double> calculateTotal() async {
  try {
    // gets user data by calling fetchUserData
    final String userData = await fetchUserData();
    // extract id from user data
    final Map<String, dynamic> user = jsonDecode(userData);
    final String id = user['id'];
    // get user orders by calling fetchUserOrders(id)
    final String userOrders = await fetchUserOrders(id);
    // extract orders from userOrders
    final List<dynamic> orders = jsonDecode(userOrders);
    // initialize total to 0
    double total = 0;
    // loop through orders and calculate total price
    for (var order in orders) {
      final String product = order;
      final String productPrice = await fetchProductPrice(product);
      final double price = double.parse(jsonDecode(productPrice));
      total += price;
    }
    return total;
  } catch (e) {
    return -1;
  }
}