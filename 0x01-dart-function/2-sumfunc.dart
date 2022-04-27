// 3 functions


// Function: add()
// Args: int a, int b
// Return: int
// Description: add two numbers
int add(int a, int b) {
  return a + b;
}


// Function: sub()
// Args: int a, int b
// Return: int
// Description: subtract two numbers
int sub(int a, int b) {
  return a - b;
}


// Function: showFunc()
// Args: int a, int b
// Return: String
// Description: show the result of add() and sub()
String showFunc(int a, int b) {
  return "Add ${a} + ${b} = ${add(a, b)}\nSub ${a} - ${b} = ${sub(a, b)}";
}