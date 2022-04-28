import '0-main.dart';
Future<void> usersCount() async {
  final int usersCount = await fetchUsersCount();
  print('$usersCount');
}    
