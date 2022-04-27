// Prints the double stored in the variable with a precision of 2 digits.


void main() {
  var n = 3.14159265359;
  String inString = n.toStringAsFixed(2);
  double outDouble = double.parse(inString);
  print('Double: $outDouble\n');
}