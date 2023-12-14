import 'dart:io';

void main() {
  String test1 = "(((()(1)()(0))))"; // Balanced parentheses
  String test2 = "((1))))))"; // Unbalanced parentheses

  print("String: $test1");
  print("is Balanced? ${check_balanced(test1)}");

  print("\nString: $test2");
  print("is Balanced? ${check_balanced(test2)}");
}




bool check_balanced(String s) {
   List<String> stack = [];

   for (int i = 0; i < s.length; i++) {
      String c = s[i];

      if (c == '(') {
        stack.add(c);
      } else if (c == ')') {
        if (stack.isEmpty) {
          return false;
        }
        stack.removeLast();
      }
   }

   return stack.isEmpty;
  }
