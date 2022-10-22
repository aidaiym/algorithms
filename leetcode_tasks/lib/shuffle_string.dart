/*
You are given a string s and an integer array indices of the same length. 
The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.
Return the shuffled string.
*/
class Solution {
  String restoreString(String s, List<int> indices) {
    List<String> sList = s.split('');
    List<String> output = [for (int i in indices) ''];
    for (int i = 0; i < indices.length; i++) {
      output[indices[i]] = sList[i];
    }
    return output.join('');
  }
}

void main() {
  Solution().restoreString('sady', [0, 1, 2, 3]);
}
