// Accepts one argument String and returns the longest palindrome substring.
import '9-palindrome.dart';


String longestPalindrome(String str) {
  // create variables to store the longest palindrome substring
  String longestPalindrome = '';
  String currentPalindrome = '';
  // loop through the string backwards
  // Note: if multiple palindromes tie in length, return which occured first.
  for (var i = str.length - 1; i >= 0; i--) {
    // loop through same string backwards to check for palindromes
    for (var j = i; j >= 0; j--) {
      // if the current substring is a palindrome
      if (isPalindrome(str.substring(j, i + 1))) {
        // if the current substring is longer than the longest palindrome
        if (currentPalindrome.length < str.substring(j, i + 1).length) {
          // set the longest palindrome to the current substring
          currentPalindrome = str.substring(j, i + 1);
        }
      }
    }

    // check if the current substring is longer than the longest palindrome
    if (currentPalindrome.length > longestPalindrome.length) {
      // if the current substring is longer than the longest palindrome
      // set the longest palindrome to the current substring
      longestPalindrome = currentPalindrome;
    }

    // reset the current substring
    currentPalindrome = '';
  }

  // check if longestPalindrome is valid palindrome, if not, return 'none'
  if (!isPalindrome(longestPalindrome)) {
    longestPalindrome = 'none';
  }

  // return the longest palindrome
  return longestPalindrome;
}