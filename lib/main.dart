import 'package:flutter/material.dart';
import 'show_number_example.dart';

void main() {
  runApp(ShowNumber());
}

class ShowNumber extends StatelessWidget {
  ShowNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowNumberExample(),
    );
  }
}
