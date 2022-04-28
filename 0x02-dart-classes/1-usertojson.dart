class User {
    String name = '';
    int age = 0;
    double height = 0.0;

    User({required this.name, required this.age, required this.height});

    String showName() {
        return "Hello $name";
    }
    Map<String, dynamic> toJson() {
        return {
        'name': name,
        'age': age,
        'height': height
        };
    }
}