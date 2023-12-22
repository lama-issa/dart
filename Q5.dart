class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void addNode(dynamic data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void reverseList() {
    Node? current = head;
    Node? prev = null;
    Node? nextNode;

    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }

    head = prev;
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  // Example usage:
  LinkedList linkedList = LinkedList();
  linkedList.addNode(1);
  linkedList.addNode(2);
  linkedList.addNode(3);
  linkedList.addNode(4);
  linkedList.addNode(5);

  print("Original linked list:");
  linkedList.printList();

  linkedList.reverseList();

  print("\nReversed linked list:");
  linkedList.printList();
}
