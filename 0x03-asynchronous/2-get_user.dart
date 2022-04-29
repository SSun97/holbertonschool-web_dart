import '2-main.dart';

// getUser
Future<void> getUser() async{
    try {
        final String user = await fetchUser();
            print(user);
        } catch (e) {
            print(e);
        }
}