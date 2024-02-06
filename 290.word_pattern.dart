void main() {
  Solution s = Solution();
  print(s.wordPattern("abba", "dog dog dog dog"));
}

class Solution {
  bool wordPattern(String pattern, String s) {
    final charToWord = <String, String>{};
    final wordToChar = <String, String>{};

    final charSequence = s.split(' ');

    if (pattern.length != charSequence.length) return false;

    for (int i = 0; i < charSequence.length; i++) {
      final word = pattern[i];
      final char = charSequence[i];

      if (!charToWord.containsKey(char) && !wordToChar.containsKey(word)) {
        charToWord[char] = word;
        wordToChar[word] = char;
      } else {
        if (charToWord[char] != word && wordToChar[word] != char) {
          return false;
        }
      }
    }
    return true;
  }
}
