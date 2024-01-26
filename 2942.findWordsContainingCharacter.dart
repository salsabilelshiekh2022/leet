void main() {
  Solution s = Solution();
  print(s.findWordsContaining(["abc", "bcd", "aaaa", "cbc"], 'z'));
}

class Solution {
  List<int> findWordsContaining(List<String> words, String x) {
    List<int> indexs = [];

    for (var i = 0; i < words.length; i++) {
      if (words[i].contains(x)) {
        indexs.add(i);
      }
    }

    return indexs;
  }
}
