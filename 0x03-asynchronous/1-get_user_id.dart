import '1-main.dart';
// import json
import 'dart:convert';
Future<String> getUserId() {
    return fetchUserData().then((userData) {
        final Map<String, dynamic> user = json.decode(userData);
        return user['id'];
    });
}