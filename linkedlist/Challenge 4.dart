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



void main() {
  var list = LinkedList<int>();
  list.push(3);
  list.push(3);
  list.push(2);
  list.push(1);
  list.push(1);

  print("Original Linked List:");
  print(list.head);
  
  print("\nLinked List after removing occurrences of value 3:");
  list.removeAll(3);
  print(list.head); 
}



  

  void removeAll(T value) {
    while (head != null && head!.value == value) {
      head = head!.next;
    }

    var previous = head;
    var current = head?.next;

    while (current != null) {
      if (current.value == value) {
        previous!.next = current.next;
        current = previous.next;
        continue;
      }
      previous = current;
      current = current.next;
    }

    tail = previous;
  }
}

