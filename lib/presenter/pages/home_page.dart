import 'package:flutter/material.dart';
import 'package:machine_learning_examples/presenter/pages/maze_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text("Machine Learning"),
            Icon(Icons.favorite),
          ],
        ),
      ),
      body: const MazePage(),
    );
  }
}
