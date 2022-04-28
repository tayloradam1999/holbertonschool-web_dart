// Create a User class.


// User class that has name as String, age as Integer, and height as double.
class User {
  // properties
  String name = "";
  int age = 0;
  double height = 0.0;

  // constructor
  User({required this.name, required this.age, required this.height});

  // methods
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