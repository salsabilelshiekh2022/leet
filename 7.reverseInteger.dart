import 'dart:math';

void main() {
  Solution s = Solution();
  print(s.reverse(-153423646));
}

class Solution {
  int reverse(int x) {
    String s = '';
    bool negative = false;
    if (x < 0) {
      x = x * -1;
      negative = true;
    }

    int len = x.toString().length - 1;
    for (int i = len; i >= 0; i--) {
      s += x.toString()[i];
    }
    if (negative) {
      if (int.parse(s) * -1 < pow(-2, 31)) {
        return 0;
      } else {
        return int.parse(s) * -1;
      }
    }

    if (int.parse(s) > pow(2, 31)) {
      return 0;
    } else {
      return int.parse(s);
    }
  }
}
