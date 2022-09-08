import 'package:flutter/material.dart';

class BarPage extends StatelessWidget {
  final size;
  const BarPage({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: size,
      decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(width: 10, color: Color.fromARGB(255, 17, 95, 20)),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
