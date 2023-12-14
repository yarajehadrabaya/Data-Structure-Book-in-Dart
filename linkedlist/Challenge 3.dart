class Node {
  dynamic data;
  Node? next; // Make 'next' nullable using 'Node?'

  Node(this.data);
}

Node? reverseLinkedList(Node? head) {
  Node? prev = null;
  Node? current = head;
  Node? nextNode;

  while (current != null) {
    nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }

  return prev;
}

void printLinkedList(Node? head) {
  Node? temp = head;
  while (temp != null) {
    print(temp.data);
    temp = temp.next;
  }
}

void main() {
  Node node1 = Node(105);
  Node node2 = Node(205);
  Node node3 = Node(305);
  Node node4 = Node(405);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;

  print("Original Linked List:");
  printLinkedList(node1);

  Node? reversedHead = reverseLinkedList(node1);

  print("\nReversed Linked List:");
  printLinkedList(reversedHead);
}
