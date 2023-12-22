class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<T> {
  Node<T>? head;

  void push(T value) {
    var newNode = Node(value: value);
    if (head == null) {
      head = newNode;
    } else {
      var current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }
}

void main() {
  var list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print('Original list: ${list.head}');
  print("Printing in reverse:");
  printListReverse(list);
}



void printRecursively<T>(Node<T>? node) {
  if (node == null) return;
  printRecursively(node.next);
  print(node.value);
}

void printListReverse<T>(LinkedList<T> list) {
  printRecursively(list.head);
}







