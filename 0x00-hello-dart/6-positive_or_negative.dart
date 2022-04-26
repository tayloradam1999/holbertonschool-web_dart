import 'dart:math';

int _generateRandomIncludingNegative(int max) {
  var randomGenerator = Random();

  var positive = randomGenerator.nextBool();

  var randInt = randomGenerator.nextInt(max);

  var result = positive ? randInt : 0 - randInt;
  return result;
}

void main() {
  var number = _generateRandomIncludingNegative(10);

  // if number is positive, print it as '$number is positive'
  // if number is negative, print it as '$number is negative'
  // if number is 0, print it as '$number is zero'
  if (number > 0) print('$number is positive');
  else if (number < 0) print('$number is negative');
  else print('$number is zero');
}