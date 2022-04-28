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


class Password {
  String password = "";

  Password() {
    this.password = password;
  }

  bool isValid() {
   if (
     ((password.length >= 8) && (password.length <= 16))
    && (password.contains(new RegExp(r'[A-Z]')))
    && (password.contains(new RegExp(r'[a-z]')))
    && (password.contains(new RegExp(r'[0-9]')))) {
     return true;
   } else {
     return false;
   }
  }

 @override
  String toString() {
    return 'Your Password is: $password';
  }
}
