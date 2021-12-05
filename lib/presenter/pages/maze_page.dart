import 'package:flutter/material.dart';
import 'package:machine_learning_examples/presenter/widgets/goal_widget.dart';
import 'package:machine_learning_examples/presenter/widgets/path_widget.dart';
import 'package:machine_learning_examples/presenter/widgets/start_widget.dart';
import 'package:machine_learning_examples/presenter/widgets/wall_widget.dart';

class MazePage extends StatefulWidget {
  const MazePage({Key? key}) : super(key: key);

  @override
  _MazePageState createState() => _MazePageState();
}

class _MazePageState extends State<MazePage> {
  final mazeList = <Widget>[
    WallWidget(),
    WallWidget(),
    WallWidget(),
    StartWidget(),
    PathWidget(),
    PathWidget(),
    PathWidget(),
    WallWidget(),
    WallWidget(),
    WallWidget(),
    GoalWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 300,
        width: 300,
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
    );
  }
}
