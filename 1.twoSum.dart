void main() {
  Solution s = Solution();
  print(s.twoSum([2, 7, 11, 15], 9));
}

class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    for (int i = 0; i < numbers.length - 1; i++) {
      for (var j = i + 1; j < numbers.length; j++) {
        if (numbers[i] + numbers[j] == target) {
          return [i, j];
        }
      }
    }

    return [];
  }
}
