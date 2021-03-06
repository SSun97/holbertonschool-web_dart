import '6-password.dart';
class User extends Password {
  int id = 0;
  String name = "";
  int age = 0;
  double height = 0.0;
  String user_password = "";

  User({required this.id, required this.name, required this.age, required this.height, required this.user_password, super(password: _password)});

  String showName() {
    return "Hello $name";
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
        user_password: userJson['user_password'],
    );
  }

  // instance method toJson()
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // instance method toString()
  @override
  String toString() {
    return 'User(id : $id ,name: $name,  age: $age, height: $height)';
  }
}
