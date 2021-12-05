import 'package:flutter/material.dart';
import 'package:machine_learning_examples/presenter/widgets/goal_widget.dart';
import 'package:machine_learning_examples/presenter/widgets/start_widget.dart';
import 'package:machine_learning_examples/presenter/widgets/wall_widget.dart';

class Solve {
  final List<Widget> maze;
  List<int> wallsIndexs = [];
  Solve({required this.maze});

  bool checkIfHasStart() {
    for (var node in maze) {
      if (node is StartWidget) {
        return true;
      }
    }
    return false;
  }

  bool checkIfHasGoal() {
    for (var node in maze) {
      if (node is GoalWidget) {
        return true;
      }
    }
    return false;
  }

  int get mazeLenght => maze.length;

  void trackWalls() {
    for (var node in maze) {
      if (node is WallWidget) {
        wallsIndexs.add(maze.indexOf(node));
      }
    }
  }
}
