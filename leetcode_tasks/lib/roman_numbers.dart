void main() {
  var result = Solution().romanToInt('III');
  print(result);
}

class Solution {
  int romanToInt(String s) {
    int I = 1;
    int V = 5;
    int X = 10;
    int L = 50;
    int C = 100;
    int D = 500;
    int M = 1000;
    s.split("");

    // for (int i = 0; i < s.length; i++) {
    // if (s == 'I') {
    //   s = 5.toString();
    // } else if (s == 'V') {
    //   s = 5.toString();
    // } else if (s == 'X') {
    //   s = 10.toString();
    // } else if (s == 'L') {
    //   s = 50.toString();
    // } else if (s == 'C') {
    //   s = 100.toString();
    // } else if (s == 'D') {
    //   s = 500.toString();
    // } else if (s == 'M') {
    //   s = 1000.toString();
    // }f

    return int.parse(s);
  }
}
