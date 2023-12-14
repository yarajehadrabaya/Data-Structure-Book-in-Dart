class Node {
  dynamic data;
  Node? next; // making next nullable

  Node(this.data);
}

Node middle(Node head) {
  if (head == null) {
    return head;
  }

  Node slowPointer = head;
  Node ? fastPointer = head;

  while (fastPointer != null && fastPointer.next != null) {
    slowPointer = slowPointer.next!;
    fastPointer = fastPointer.next!.next;
  }

  return slowPointer;
}

void main() {
  Node node1 = Node(1);
  Node node2 = Node(2);
  Node node3 = Node(9);
  Node node4 = Node(4);
  Node node5 = Node(50);


  node1.next = node2;
  node2.next = node3;
  node3.next = node4;

  Node result =  middle(node1);
  print("Middle Node: ${result.data}");
}
