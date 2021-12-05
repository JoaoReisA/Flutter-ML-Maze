import 'package:flutter/material.dart';

class MazePage extends StatefulWidget {
  const MazePage({Key? key}) : super(key: key);

  @override
  _MazePageState createState() => _MazePageState();
}

class _MazePageState extends State<MazePage> {
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
            Container(
              height: 30,
              color: Colors.purple,
            ),
            Container(
              height: 30,
              color: Colors.purple,
            ),
            Container(
              height: 30,
              color: Colors.purple,
            ),
            Container(
              height: 30,
              color: Colors.purple,
            ),
            Container(
              height: 30,
              color: Colors.purple,
            ),
            Container(
              height: 30,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
