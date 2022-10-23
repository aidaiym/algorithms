/*
You are given an array items, where each items[i] = [typei, colori, namei] describes the type, color, and name of the ith item. 
You are also given a rule represented by two strings, ruleKey and ruleValue.
*/

class Solution {
  int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
    int key = 0, cnt = 0;

    if (ruleKey == "color") {
      key = 1;
    } else if (ruleKey == "name") {
      key = 2;
    }

    for (int i = 0; i < items.length; i++) {
      if (items[i][key] == ruleValue) cnt++;
    }
    return cnt;
  }
}
