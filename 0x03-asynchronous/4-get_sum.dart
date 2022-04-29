import '4-main.dart';
import 'dart:convert';
import 'dart:core';
Future<double> calculateTotal() async {
    try {
        final String user = await fetchUserData();
        final Map<String, dynamic> userData = json.decode(user);
        final String id = userData['id'];
        final List<dynamic> userOrder = json.decode(await fetchUserOrders(id));
        double total = 0;
        for (var i = 0; i < userOrder.length; i++) {
            total += json.decode(await fetchProductPrice(userOrder[i]));
        }
        return total;
    } catch (e) {
        print('error caught: $e');
        return 1;
    }
}