// Accepts one argument String and returns True if the string is a palindrome, False otherwise.


bool isPalindrome(String str) {
  // create variables to store the length of the string and the reversed string
  int strLength = str.length;
  String reversedStr = '';
  if (strLength < 3) {
    return false;
  }
  // loop through the string
  for (var i = strLength - 1; i >= 0; i--) {
    // add the character to the reversed string
    reversedStr += str[i];
  }
  // check if the reversed string is equal to the original string
  if (reversedStr == str) {
    // if the reversed string is equal to the original string
    // return True
    return true;
  } else {
    // if the reversed string is not equal to the original string
    // return False
    return false;
  }
}