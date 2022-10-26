/*
Given two string arrays word1 and word2, return true if the two arrays represent the same string, and false otherwise.
A string is represented by an array if the array elements concatenated in order forms the string.
*/
class Solution {
  bool arrayStringsAreEqual(List<String> word1, List<String> word2) {
    bool isEquivalent = true;

    String newString = "";
    String newString2 = "";
// Solution 2
//  var a = word1.join();
//       var b = word2.join();
//       return a == b;
// Solution 3
// var word1String = word1.toString().replaceAll(', ', '');
// var word2String = word2.toString().replaceAll(', ', '');
// return word1String == word2String;
//  return word1.join("") == word2.join("");
    for (int i = 0; i < word1.length; i++) {
      newString += word1[i];
    }
    for (int i = 0; i < word2.length; i++) {
      newString2 += word2[i];
    }
    if (newString == newString2) {
      return isEquivalent;
    } else if (newString != newString2) {
      return !isEquivalent;
    }
    return isEquivalent;
  }
}

void main() {
  var lists = Solution().arrayStringsAreEqual(["av", "c"], ["a", "vc"]);
}
