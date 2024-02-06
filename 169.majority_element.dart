void main() {
  Solution s = Solution();
  print(s.majorityElement([2, 2, 1, 1, 1, 2, 2]));
}

class Solution {
  int majorityElement(List<int> nums) {
    int major = nums[0];
    int count = 1;
    for (int i = 0; i < nums.length; i++) {
      if (count == 1) {
        major = nums[i];
        count = 2;
      } else if (nums[i] == major) {
        count++;
      } else {
        count--;
      }
    }
    return major;
  }
}
