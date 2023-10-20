void main() {
  Solution s = Solution();
  print(s.longestCommonPrefix(["flower", "flower", "flower", "flower"]));
}

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.length == 1) {
      return strs[0];
    }
    for (int i = 0; i < strs[0].length; i++) {
      for (int j = 0; j < strs.length; j++) {
        try {
          if (strs[0][i] != strs[j][i]) {
            return strs[0].substring(0, i);
          }
        } catch (e) {
          return strs[0].substring(0, i);
        }
      }
    }
    return strs[0];
  }
}
