class Stack<E> {
 Stack() : _storage = <E>[];
 final List<E> _storage;
  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();
  E get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;
}

void main() {
  String test1 = "(((()(1)()(0))))"; // Balanced parentheses
  String test2 = "((1))))))"; // Unbalanced parentheses

  print("String: $test1");
  print("is Balanced? ${checkParentheses(test1)}");

  print("\nString: $test2");
  print("is Balanced? ${checkParentheses(test2)}");
}

bool checkParentheses(String text) {
 final stack = Stack<int>();
 final open = '('.codeUnitAt(0);
 final close = ')'.codeUnitAt(0);
 for (int codeUnit in text.codeUnits) {
 if (codeUnit == open) {
 stack.push(codeUnit);
 } else if (codeUnit == close) {
 if (stack.isEmpty) {
 return false;
 } else {
 stack.pop();
 }
 }
 }
 return stack.isEmpty;
}

