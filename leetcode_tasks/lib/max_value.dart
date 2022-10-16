/*
You are given an m x n integer grid accounts where accounts[i][j] is the amount of money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th​​​​ bank.
Return the wealth that the richest customer has.
A customer's wealth is the amount of money they have in all their bank accounts. 
The richest customer is the customer that has the maximum wealth.
*/
import 'dart:math';

class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int sum = 0;
    for (int i = 0; i < (accounts.length); i++) {
      int x = 0;
      for (int j = 0; j < (accounts[i].length); j++) {
        x += accounts[i][j];
      }
      sum = max(sum, x);
    }

    return sum;
  }
}

class Solution2 {
  int maximumWealth(List<List<int>> accounts) => [
        ...accounts.map((account) => account.reduce((val, curr) => val + curr))
      ].reduce((max, curr) => curr > max ? curr : max);
}
