import 'package:flutter/material.dart';

class WallWidget extends StatelessWidget {
  const WallWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      color: Colors.red,
    );
  }
}