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

  Node? findMiddleNode() {
    if (head == null) {
      return null; // Empty list
    }

    Node? slowPointer = head;
    Node? fastPointer = head;

    while (fastPointer != null && fastPointer.next != null) {
      slowPointer = slowPointer!.next;
      fastPointer = fastPointer.next!.next;
    }

    return slowPointer;
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

  Node? middleNode = linkedList.findMiddleNode();
  if (middleNode != null) {
    print("\nMiddle node of the linked list: ${middleNode.data}");
  } else {
    print("\nLinked list is empty.");
  }
}
