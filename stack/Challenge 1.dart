
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


