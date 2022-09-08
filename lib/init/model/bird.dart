import 'package:flutter/material.dart';

class BirdPage extends StatelessWidget {
  const BirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: SizedBox(child: Image.asset("assets/Images/hummingbird.png")),
    );
  }
}
