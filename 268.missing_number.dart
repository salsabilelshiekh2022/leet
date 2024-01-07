void main() {
  Solution s = Solution();
  print(s.missingNumber([0, 1, 2]));
}

class Solution {
  int missingNumber(List<int> nums) {
    if (nums.length == 1 && nums[0] > 0) {
      return nums[0] - 1;
    } else if (nums.length == 1 && nums[0] == 0) {
      return 1;
    }
    nums.sort();

    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] + 1 != nums[i + 1]) {
        return nums[i] + 1;
      }
    }
    if (nums.reduce((min, current) => min < current ? min : current) == 1)
      return 0;
    return nums[nums.length - 1] + 1;
  }
}
