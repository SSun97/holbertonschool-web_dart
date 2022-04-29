import '3-main.dart';
//get json
import 'dart:convert';
Future<String> greetUser() async {
  final String user = await fetchUserData();
  return 'Hello, ${json.decode(user)['username']}!';
}
Future<String> loginUser() async {
  final bool credentials = await checkCredentials();
  if (credentials) {
    return await greetUser();
  } else {
    return 'Access denied!';
  }
}