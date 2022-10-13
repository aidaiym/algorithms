class Solution {
  String a = '';
  double nums = 0;
  List<int> plusOne(List<int> digits) {
    for (int i = 0; i < digits.length; i++) {
      a = a + (digits[i]).toString();
      nums = int.parse(a) + 1;
    }
    var numberDigits = nums.toString().split("");
    List<int> numb = numberDigits.map(int.parse).toList();

    return numb;
  }
}

void main() {
  var result = Solution().plusOne([9]);
  print(result);
}
