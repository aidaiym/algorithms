/*
Given an array of positive integers arr, return the sum of all possible odd-length subarrays of arr.
A subarray is a contiguous subsequence of the array.
*/
class Solution {
  int sumOddLengthSubarrays(List<int> arr) {
    int summa = 0;
    for (int i = 0; i < arr.length; i++) {
      for (int j = 0; j < arr.length; j++) {
        if (arr.length % 1 == 0) {
          summa += arr[i];
        }
      }
    }
    return summa;
  }
}
