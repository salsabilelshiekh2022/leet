void main() {
  Solution s = Solution();
  print(s.strStr("hello", "ll"));
}

class Solution {
  int strStr(String haystack, String needle) {
    int m = haystack.length;
    int n = needle.length;
    for (int i = 0; i < m - n; i++) {
      if (haystack.substring(i, i + n) == needle) {
        return i;
      }
    }
    return -1;
  }
}
