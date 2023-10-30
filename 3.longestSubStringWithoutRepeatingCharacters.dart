void main() {
  Solution s = Solution();
  print(s.lengthOfLongestSubstring("pwwkew"));
}

class Solution {
  int lengthOfLongestSubstring(String s) {
    if (s.isEmpty) {
      return 0;
    } else {
      int longeststringlen = 0;
      int start = 0;
      int stringlength = s.length;
      Set<String> charSet = {};

      for (int i = 0; i < stringlength; i++) {
        while (charSet.contains(s[i])) {
          charSet.remove(s[start]);
          start++;
        }

        charSet.add(s[i]);
        longeststringlen = longeststringlen > (i - start + 1)
            ? longeststringlen
            : (i - start + 1);
      }
      return longeststringlen;
    }
  }
}
