void main() {
  Solution s = Solution();
  print(s.lengthOfLastWord("    day"));
}

class Solution {
  int lengthOfLastWord(String s) {
    int count = 0;
    s = s.trim();
    if (s.length == 1) {
      return 1;
    }
    if (s.contains(" ") == false) {
      return s.length;
    }
    for (int i = s.length - 1; i > 0; i--) {
      if (s[i] == ' ') {
        return count;
      } else {
        count++;
      }
    }

    return count;
  }
}
