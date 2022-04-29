import '3-main.dart';
//get json
import 'dart:convert';
Future<String> greetUser() async {
  final String user = await fetchUserData();
  return 'hello ${json.decode(user)['username']}\n';
}
Future<String> loginUser() async {
  final bool credentials = await checkCredentials();
  if (credentials) {
    return await greetUser();
  } else {
    return 'Access denied!';
  }
}