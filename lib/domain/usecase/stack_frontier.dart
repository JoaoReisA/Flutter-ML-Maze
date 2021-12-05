import 'package:machine_learning_examples/domain/entites/node.dart';

class StackFrontier {
  List<Node> frontier;
  StackFrontier({required this.frontier});

  void add(Node node) {
    frontier.add(node);
  }

  bool containsState(var state) {
    for (Node node in frontier) {
      if (node.state == state) {
        return true;
      }
    }
    return false;
  }

  bool get empty => frontier.isEmpty;

  Node remove() {
    if (empty) {
      throw Exception("empty frontier");
    } else {
      Node node = frontier.last;
      frontier.removeLast();
      return node;
    }
  }
}
