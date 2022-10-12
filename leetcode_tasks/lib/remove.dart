/*
Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. 
The relative order of the elements may be changed.
Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums.
 More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.
*/
void main() {
  var result = Solution().removeElement([2, 4, 65, 3, 4, 3, 4], 3);
  print(result);
}

class Solution {
  int j = 0;
  int removeElement(List<int> nums, int val) {
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[j] = nums[i];
        print(nums[j]);
        j++;
      }
    }
    return j;
  }
}



// 1. given array
// 2. given some int
// 3. remove this int from array
// for() = > iteration. if(arr[i]==given_int){remove this i from array. }
// ? how to remove. Algorithm of remove
// print lefted array.
// order may be changed
//

// Remove
