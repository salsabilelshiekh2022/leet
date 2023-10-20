void main() {
  Solution s = Solution();
  print(s.romanToInt("LVIII"));
}

class Solution {
  Map<String, int> roman = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };
  int romanToInt(String s) {
    int sum = 0;
    for (int i = 0; i < s.length - 1; i++) {
      if (roman[s[i]]! < roman[s[i + 1]]!)
        sum -= roman[s[i]]!;
      else
        sum += roman[s[i]]!;
    }

    return sum + roman[s[s.length - 1]]!;
  }
}
