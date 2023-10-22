void main() {
  Solution s = Solution();
  print(s.removeDuplicates([1, 1, 2]));
}

class Solution {
  int removeDuplicates(List<int> nums) {
    int i = 0;
    for (int num in nums) {
      if (i < 1 || num > nums[i - 1]) nums[i++] = num;
    }

    return i;
  }
}
