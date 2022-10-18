import 'dart:math';

class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    int sumCand = 0;
    List<bool> result = [];
    int maxValue = candies.reduce(max);
    for (int i = 0; i < candies.length; i++) {
      sumCand = candies[i] + extraCandies; //5
      if (sumCand < maxValue) {
        result.add(false);
      } else {
        result.add(true);
      }
    }
    print(result);
    return result;
  }
}

void main() {
  Solution().kidsWithCandies([2, 3, 5, 1, 3], 3); // [true,true,true,false,true]
}
