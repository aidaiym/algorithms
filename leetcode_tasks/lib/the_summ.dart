/*
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order.
*/

void main() {
  var ret = Solution().twoSum([2, 7, 11, 15], 9);
  var ret2 = Solution().twoSum([3, 2, 4], 6);
  var ret3 = Solution().twoSum([3, 3], 6);
  print(ret);
  print(ret2);
  print(ret3);
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length - 1; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
    return nums;
  }
}
