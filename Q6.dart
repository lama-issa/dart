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

  void removeAllOccurrences(dynamic target) {
    // Handle the case where the list is empty
    if (head == null) {
      return;
    }

    // Remove nodes with the specified value from the beginning of the list
    while (head != null && head!.data == target) {
      head = head!.next;
    }

    // Iterate through the list to remove occurrences
    Node? current = head;
    Node? prev = null;

    while (current != null) {
      if (current.data == target) {
        if (prev != null) {
          prev.next = current.next;
        }
        current = current.next;
      } else {
        prev = current;
        current = current.next;
      }
    }
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
  linkedList.addNode(2);
  linkedList.addNode(4);
  linkedList.addNode(2);
  linkedList.addNode(5);

  print("Original linked list:");
  linkedList.printList();

  linkedList.removeAllOccurrences(2);

  print("\nLinked list after removing all occurrences of 2:");
  linkedList.printList();
}
