import 'dart:io';

void main() {
  List<int> myList = [1, 2, 3, 4, 5];
  print("Original list: $myList");
  print("Reversed list:");
  reversed(myList);
}


void reversed(List list) {
  for (int i = list.length - 1; i >= 0; i--) {
    print(list[i]);
  }
}


