// Check if input argument is greater or equal to 80, and if so, prints 'You Passed'.
// Otherwise, throws an exception with the message 'The score must be bigger or equal to 80'.


void main(List<String> args) {
  // convert input argument to int
  int nb = int.parse(args[0]);
  // check if score is greater or equal to 80
  assert(nb >= 80, 'The score must be bigger or equal to 80');
  // print 'You Passed' if score is greater or equal to 80
  print('You Passed');
}