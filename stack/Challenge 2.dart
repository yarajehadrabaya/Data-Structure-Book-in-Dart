import 'dart:io';

void main() {
  String testString1 = "((()))"; // Balanced parentheses
  String testString2 = "(()))"; // Unbalanced parentheses

  print("String: $testString1");
  print("Balanced? ${check_balanced(testString1)}");

  print("\nString: $testString2");
  print("Balanced? ${check_balanced(testString2)}");
}




bool check_balanced(String str) {
  List<String> stack = [];

  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    if (char == '(') {
      stack.add(char);
    }
    else if (char == ')') {
      if (stack.isEmpty || stack.removeLast() != '(') {
        return false;
      }
    }
  }

  return stack.isEmpty;
}