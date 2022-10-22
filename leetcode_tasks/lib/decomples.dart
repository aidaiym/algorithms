class Solution {
  List<int> decompressRLElist(List<int> nums) {
    List<int> res = [];
    for (int i = 0; i < nums.length; i += 2)
      for (int j = 0; j < (nums[i]); j++) {
        res.add(nums[i + 1]);
      }
    return res;
  }
}
