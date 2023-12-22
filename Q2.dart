bool areParenthesesBalanced(String input) {
  List<String> stack = [];

  // Helper function to check if two characters form a valid pair of parentheses
  bool isPair(char1, char2) {
    return (char1 == '(' && char2 == ')');
  }

  for (int i = 0; i < input.length; i++) {
    if (input[i] == '(') {
      // Push opening parenthesis onto the stack
      stack.add(input[i]);
    } else if (input[i] == ')') {
      // Check if stack is empty or if the top of the stack forms a valid pair
      if (stack.isEmpty || !isPair(stack.removeLast(), input[i])) {
        return false; // Unbalanced parentheses
      }
    }
  }

  // If the stack is empty, parentheses are balanced
  return stack.isEmpty;
}

void main() {
  // Example usage:
  String balancedString = "(a + b) * (c - d)";
  String unbalancedString = "((x + y) * z";

  print("Is the string '$balancedString' balanced? ${areParenthesesBalanced(balancedString)}");
  print("Is the string '$unbalancedString' balanced? ${areParenthesesBalanced(unbalancedString)}");
}
