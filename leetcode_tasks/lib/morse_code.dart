// International Morse Code

class Solution {
  int uniqueMorseRepresentations(List<String> words) {
    Map<String, String> alphabet = {
      "a": ".-",
      "b": "-...",
      "c": "-.-.",
      "d": "-..",
      "e": ".",
      "f": "..-.",
      "g": "--.",
      "h": "....",
      "i": "..",
      "j": ".---",
      "k": "-.-",
      "l": ".-..",
      "m": "--",
      "n": "-.",
      "o": "---",
      "p": ".--.",
      "q": "--.-",
      "r": ".-.",
      "s": "...",
      "t": "-",
      "u": "..-",
      "v": "...-",
      "w": ".--",
      "x": "-..-",
      "y": "-.--",
      "z": "--..",
    };

    final Set<String> result = {};
    for (String element in words) {
      result.add(element.split('').map((e) => alphabet[e]).join());
    }
    return result.length;
  }
}
