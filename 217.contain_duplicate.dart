void main() {
  Solution s = Solution();
  print(s.containsDuplicate([1, 2, 3, 1]));
}

class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> numbers = {};

    for (int n in nums) {
      if (numbers.contains(n)) return true;
      numbers.add(n);
    }
    return false;
  }
}
