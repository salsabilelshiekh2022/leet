void main() {
  Solution s = Solution();
  print(s.removeElement([0, 1, 2, 2, 3, 0, 2, 4], 2));
}

class Solution {
  int removeElement(List<int> nums, int val) {
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == val) {
        nums.remove(nums[i]);
        i--;
      }
    }

    return nums.length;
  }
}
