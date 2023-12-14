class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

Node? removeOccurrences(Node? head, dynamic v) {
  while (head != null && head.data == v) {
    head = head.next;
  }

  Node? current = head;
  while (current != null && current.next != null) {
    if (current.next!.data == v) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }

  return head;
}

void printLinkedList(Node? head) {
  Node? temp = head;
  while (temp != null) {
    print(temp.data);
    temp = temp.next;
  }
}

void main() {
  // making the linked list nodes
  Node node1 = Node(9);
  Node node2 = Node(2);
  Node node3 = Node(2);
  Node node4 = Node(5);
  Node node5 = Node(4);

  // connecting the nodes in the linked list
  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  node4.next = node5;

  // printing the original linked list
  print("Original Linked List:");
  printLinkedList(node1); 
  
  // removing occurrences of value 2
  Node? modifiedList = removeOccurrences(node1, 2); 
  print("\nLinked List after removing occurrences of value 2:");
  printLinkedList(modifiedList); 
}

