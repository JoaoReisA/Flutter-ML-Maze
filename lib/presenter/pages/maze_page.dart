import 'package:flutter/material.dart';
import 'package:machine_learning_examples/presenter/widgets/goal_widget.dart';
import 'package:machine_learning_examples/presenter/widgets/path_completed_widget.dart';
import 'package:machine_learning_examples/presenter/widgets/path_widget.dart';
import 'package:machine_learning_examples/presenter/widgets/start_widget.dart';
import 'package:machine_learning_examples/presenter/widgets/wall_widget.dart';

class MazePage extends StatefulWidget {
  const MazePage({Key? key}) : super(key: key);

  @override
  _MazePageState createState() => _MazePageState();
}

class _MazePageState extends State<MazePage> {
  var mazeList = <Widget>[
    WallWidget(),
    WallWidget(),
    WallWidget(),
    WallWidget(),
    WallWidget(),
    WallWidget(),
    PathWidget(),
    StartWidget(),
    PathWidget(),
    PathWidget(),
    WallWidget(),
    PathWidget(),
    PathWidget(),
    WallWidget(),
    WallWidget(),
    WallWidget(),
    PathWidget(),
    WallWidget(),
    WallWidget(),
    WallWidget(),
    WallWidget(),
    GoalWidget(),
    PathWidget(),
    PathWidget(),
    PathWidget(),
    WallWidget(),
    WallWidget(),
    PathWidget(),
    WallWidget(),
    WallWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: double.maxFinite,
            width: double.maxFinite,
            child: GridView.count(
              crossAxisCount: 5,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              children: [
                ...mazeList
                // Container(
                //   height: 30,
                //   color: Colors.purple,
                // ),
                // Container(
                //   height: 30,
                //   color: Colors.purple,
                // ),
                // Container(
                //   height: 30,
                //   color: Colors.purple,
                // ),
                // Container(
                //   height: 30,
                //   color: Colors.purple,
                // ),
                // Container(
                //   height: 30,
                //   color: Colors.purple,
                // ),
                // Container(
                //   height: 30,
                //   color: Colors.purple,
                // ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 60,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  mazeList = solve(mazeList);
                });
              },
              child: const Text("solve"),
            ),
          )
        ],
      ),
    );
  }
}

solve(List<Widget> maze) {
  for (var node in maze) {
    if (node is WallWidget) {
    } else if (node is PathWidget) {
      int index = maze.indexOf(node);
      maze.removeAt(index);
      maze.insert(index, PathCompletedWidget());
    } else if (node is GoalWidget) {
      return maze;
    }
  }
}
