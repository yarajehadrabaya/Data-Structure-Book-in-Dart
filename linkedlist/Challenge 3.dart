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
  Node<T>? tail;

  void push(T value) {
    var newNode = Node(value: value);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }

  @override
  String toString() {
    if (head == null) return "Empty List";
    return head.toString();
  }

  void reverse() {
    tail = head;
    var previous = head;
    var current = head?.next;
    previous?.next = null;

    while (current != null) {
      final next = current.next;
      current.next = previous;
      previous = current;
      current = next;
    }
    head = previous;
  }
}

void main() {
  var list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print('Original list: $list');
  list.reverse();
  print('Reversed list: $list');
}



