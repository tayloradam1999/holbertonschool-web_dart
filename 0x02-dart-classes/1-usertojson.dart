// Create a User class.


// User class that has name as String, age as Integer, and height as double.
class User {
  // properties
  String name = "";
  int age = 0;
  double height = 0.0;

  // constructor
  User({this.name, this.age, this.height});

  // methods
  String showName() {
    return "Hello $name";
  }

  // toJson method
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height
    };
  }
}