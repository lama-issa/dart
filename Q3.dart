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

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void printListInReverse() {
    _printListInReverse(head);
  }

  void _printListInReverse(Node? node) {
    if (node == null) {
      return;
    }
    _printListInReverse(node.next);
    print(node.data);
  }
}

void main() {
  // Example usage:
  LinkedList linkedList = LinkedList();
  linkedList.addNode(1);
  linkedList.addNode(2);
  linkedList.addNode(3);
  linkedList.addNode(4);

  print("Original linked list:");
  linkedList.printList();

  print("\nLinked list in reverse order:");
  linkedList.printListInReverse();
}
