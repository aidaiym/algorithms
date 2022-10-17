/*
A sentence is a list of words that are separated by a single space with no leading or trailing spaces.
You are given an array of strings sentences, where each sentences[i] represents a single sentence.
Return the maximum number of words that appear in a single sentence.
*/
// input sentences[0]= "sdfas sdfa asdf"
import 'dart:math';

class Solution {
  List l = [];
  List<int> maxVal = [];
  int maxValue = 0;
  int mostWordsFound(List<String> sentences) {
    for (int i = 0; i < sentences.length; i++) {
      l = sentences[i].split(' ');
      maxVal.add(l.length);
    }
    maxValue = maxVal.reduce(max);
    return maxValue;
  }
}

class Solution2 {
  int mostWordsFound(List<String> sentences) {
    int Maximum = 0;
    for (int i = 0; i < sentences.length; i++) {
      Maximum = max(Maximum, (sentences[i].split(" ")).length);
    }
    return Maximum;
  }

  int mostWordsFound2(List<String> sentences) {
    int maxNumOfWords = 0;
    for (var element in sentences) {
      int length = element.split(' ').length;
      maxNumOfWords = length > maxNumOfWords ? length : maxNumOfWords;
    }
    return maxNumOfWords;
  }
}

void main() {
  Solution().mostWordsFound([
    "The first sentence,[i] asdf sdf sadf ",
    "sd faa sdfa sd",
    "rew rqw erq"
  ]);
}
