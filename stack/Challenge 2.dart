void main() {
  String test1 = "(((()(1)()(0))))"; // Balanced parentheses
  String test2 = "((1))))))"; // Unbalanced parentheses

  print("String: $test1");
  print("is Balanced? ${checkParentheses(test1)}");

  print("\nString: $test2");
  print("is Balanced? ${checkParentheses(test2)}");
}

bool checkParentheses(String text) {
  var stack = <int>[];
  final open = '('.codeUnitAt(0);
  final close = ')'.codeUnitAt(0);

  for (int codeUnit in text.codeUnits) {
    if (codeUnit == open) {
      stack.add(codeUnit);
    } else if (codeUnit == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        if (stack.last == open) {
          stack.removeLast();
        } else {
          return false;
        }
      }
    }
  }

  return stack.isEmpty;
}

