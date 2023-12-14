class Node {
  dynamic data;
  Node? next; // making next nullable by using [Node?]

  Node(this.data, {this.next}); // initializing next within the constructor.
}

void reversed_linked(Node? head) {
  if (head == null) {
    return;
  }
    reversed_linked(head.next);
  print(head.data);
}

void main() {
   Node node1 = Node(1);
  Node node2 = Node(2);
    Node node3 = Node(3);

  node1.next = node2;
  node2.next = node3;

  print("Linked List:");
   reversed_linked(node1);
}

