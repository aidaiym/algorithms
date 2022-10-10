void main() {
  var ret = Solution().twoSum([2, 7, 11, 15], 9);
  var ret2 = Solution().twoSum([3, 2, 4], 6);
  var ret3 = Solution().twoSum([3, 3], 6);
}

class Solution {
  List<int>? twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length - 1; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
  }
}
