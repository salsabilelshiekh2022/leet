void main() {
  Solution s = Solution();
  print(s.isValid("[]"));
}

class Solution {
  bool isValid(String s) {
    Stack stack = Stack();

    for (int i = 0; i < s.length; i++) {
      if (s[i] == '(') {
        stack.push(')');
      } else if (s[i] == '[') {
        stack.push(']');
      } else if (s[i] == '{') {
        stack.push('}');
      } else if (stack.isEmpty || stack.pop() != s[i]) {
        return false;
      }
    }
    return stack.isEmpty;
  }
}

class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  bool get isEmpty => _storage.isEmpty;
}
