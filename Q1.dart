void printListInReverse(List<dynamic> inputList) {
  // Create an empty stack
  List<dynamic> stack = [];

  // Push elements onto the stack
  for (var element in inputList) {
    stack.add(element);
  }

  // Pop and print elements from the stack
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}

void main() {
  // Example usage:
  List<dynamic> myList = [1, 2, 3, 4, 5];
  print("Original list:");
  print(myList);

  print("\nList in reverse order:");
  printListInReverse(myList);
}
