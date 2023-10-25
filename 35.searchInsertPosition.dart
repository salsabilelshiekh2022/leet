void main() {
  Solution s = Solution();
  print(s.searchInsert([1, 3, 5, 6], 0));
}

class Solution {
  int searchInsert(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == target) return i;
    }
    for (int i = 0; i < nums.length; i++) {
      try {
        if (nums[i] < target && nums[i + 1] > target) return i + 1;
      } catch (e) {
        return nums.length;
      }
    }
    return 0;
  }
}
