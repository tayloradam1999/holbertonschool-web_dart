// Prints the variable string 3 times in succession followed by a new line, then
// prints that variables first 9 characters, followed by a new line.


void main() {
  String str = "Holberton School";
  print('$str$str$str');
  print(str.substring(0, 9));
}