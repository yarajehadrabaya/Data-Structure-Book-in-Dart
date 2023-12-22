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
  print(list.head); 
  final middleNode = getMiddle(list);
  print('Middle: ${middleNode?.value}');
}



Node<E>? getMiddle<E>(LinkedList<E> list) {
 var slow = list.head;
 var fast = list.head;
 while (fast?.next != null) {
 fast = fast?.next?.next;
 slow = slow?.next;
 }
 return slow;
}
