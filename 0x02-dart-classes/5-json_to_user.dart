// Create a User and Password class.
// Only difference between this task and the prior is the property 'password' is private.


// User class that has name as String, age as Integer, and height as double.
class User {
  // properties
  int id = 0;
  String name = "";
  int age = 0;
  double height = 0.0;

  // constructor
  User({required this.id, required this.name, required this.age, required this.height});

  // methods
  String showName() {
    return "Hello $name";
  }

  // instance method fromJson()
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
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
    return 'User{id : $id ,name: $name,   age: $age, height: $height}';
  }
}


class Password {
  var _password = "";

  // constructor
  Password({required String password}) : _password = password;

  // setter
  set password(String password) {
    _password = password;
  }

  // getter
  String get password => _password;

  // isValid() setter
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
