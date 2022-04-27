// Accepts on argument String and returns the longest non-repeating substring.


String longestUniqueSubstring(String str) {
  // create variables to store longest substring
  String longestSubstring = '';
  String currentSubstring = '';
  // loop through the string
  // Note: if multiple substrings tie in length, return which occured first.
  for (var i = 0; i < str.length; i++) {
    // if the current character is not in the current substring
    if (!currentSubstring.contains(str[i])) {
      // add the character to the current substring
      currentSubstring += str[i];
    } else {
      // if the current character is in the current substring
      // check if the current substring is longer than the longest substring
      if (currentSubstring.length > longestSubstring.length) {
        // if the current substring is longer than the longest substring
        // set the longest substring to the current substring
        longestSubstring = currentSubstring;
      }
      // reset the current substring
      currentSubstring = '';
    }
  }
  // check if the current substring is longer than the longest substring
  if (currentSubstring.length > longestSubstring.length) {
    // if the current substring is longer than the longest substring
    // set the longest substring to the current substring
    longestSubstring = currentSubstring;
  }
  // return the longest substring
  return longestSubstring;
}