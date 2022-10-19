/* Given the array nums, for each nums[i] find out how many numbers in the array are smaller than it. 
That is, for each nums[i] you have to count the number of valid j's such that j != i and nums[j] < nums[i].
Return the answer in an array.*/

class Solution {
  List<int> smallerNumbersThanCurrent(List<int> nums) {
    int counter = 0;
    List<int> newArray = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = 1; j < nums.length; j++) {
        if (nums[j] < nums[i]) {
          counter++;
        }
      }
      newArray.add(counter);
    }
    print(newArray);
    return newArray;
  }
}

void main() {
  Solution().smallerNumbersThanCurrent([8, 1, 2, 2, 3]);
}
