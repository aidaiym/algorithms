class Solution {
  List<int> ans = [];
  List<int> buildArray(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      ans.add(nums[nums[i]]);
    }
    return ans;
  }
}

class Solution2 {
  List<int> buildArray(List<int> nums) {
    return nums.map((e) => nums[e]).toList();
  }
}

class Solution3 {
  List<int> buildArray(List<int> nums) {
    return [for (int i in nums) nums[i]];
  }
}

void main() {
  var result = Solution().buildArray([0, 2, 1, 5, 3, 4]);
  var result2 = Solution2().buildArray([0, 2, 1, 5, 3, 4]);
  var result3 = Solution3().buildArray([0, 2, 1, 5, 3, 4]);

  print(result);
  print(result2);
  print(result3);
}
