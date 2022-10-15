/*
Given an integer array nums of length n, 
you want to create an array ans of length 2n where ans[i] == nums[i] and ans[i + n] == nums[i] for 0 <= i < n (0-indexed).
Specifically, ans is the concatenation of two nums arrays.
Return the array ans.
*/
void main() {
  var result = Solution().getConcatenation([1, 3, 4]);
  var result2 = Solution().getConcatenation2([1, 3, 4]);
  var result3 = Solution().getConcatenation3([1, 3, 4]);

  print(result);
  print(result2);
  print(result3);
}

class Solution {
  List<int> getConcatenation(List<int> nums) {
    int n = nums.length;
    List<int> ans = [];
    for (int i = 0; i < n; i++) {
      ans.add(nums[i]);
    }
    for (int i = 0; i < n; i++) {
      ans.add(nums[i]);
    }
    return ans;
  }

  List<int> getConcatenation2(List<int> nums) => [...nums, ...nums];
  List<int> getConcatenation3(List<int> nums) {
    return [...nums, ...nums];
  }
}
// input = [1,3,4]
// output = [1, 3,4,1,3,4] => [nums[0],nums[1],nums[2],nums[3],nums[0],nums[1],nums[2],nums[3]]


