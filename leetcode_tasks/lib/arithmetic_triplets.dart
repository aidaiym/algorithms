/*
You are given a 0-indexed, strictly increasing integer array nums and a positive integer diff. 
A triplet (i, j, k) is an arithmetic triplet if the following conditions are met:
i < j < k,
nums[j] - nums[i] == diff, and
nums[k] - nums[j] == diff.
Return the number of unique arithmetic triplets.
*/
class Solution {
  int arithmeticTriplets(List<int> nums, int diff) {
    int counter = 0;
    for (int i = 0; i < nums.length; i++) {
      for (int j = 0; j < nums.length; j++) {
        for (int k = 0; k < nums.length; k++) {
          if (nums[j] - nums[i] == diff && nums[k] - nums[j] == diff) {
            counter++;
          }
        }
      }
    }
    return counter;
  }
}