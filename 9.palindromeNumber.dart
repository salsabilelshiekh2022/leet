void main() {
  Solution s = Solution();
  print(s.isPalindrome(11));
}

class Solution {
  bool isPalindrome(int x) {
    // ignore: unused_local_variable
    bool isPalindrome;
    for (int i = 0; i < x.toString().length; i++) {
      if (x.toString()[i] == x.toString()[x.toString().length - i - 1]) {
        isPalindrome = true;
      } else {
        return false;
      }
    }
    return true;
  }
}
