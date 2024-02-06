void main() {
  Solution s = Solution();
  print(s.containsNearbyDuplicate([1, 0, 1, 1], 1));
}

class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length && ((i - j).abs() <= k); j++) {
        if ((nums[i] == nums[j])) {
          return true;
        }
      }
    }
    return false;
  }
}
