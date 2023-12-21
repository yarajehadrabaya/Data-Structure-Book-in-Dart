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
  List<int> myList = [1, 2, 3, 4, 5];
  print("Original list: $myList");
  print("Reversed list:");
  printInReverse(myList);
}

void printInReverse<E>(List<E> list) {
  var stack = <E>[];
  for (E value in list) {
    stack.add(value);
  }
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}
