// 2 Functions


// Function: outer()
// Args: name - String, id - String
// Return: String
// Description: Prints output of inner() func
void outer(String name, String id) {
  // Function: inner()
  // Args: name - String, id - String
  // Return: String
  // Inner function
  String inner(String name, String id) {
    String firstName = name.split(" ")[0];
    String lastNameFirstChar = name.split(" ")[1].split("")[0];
    return "Hello Agent $lastNameFirstChar.${firstName} your id is $id";
  }
  print(inner(name, id));
}