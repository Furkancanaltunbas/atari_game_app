import 'dart:async';

import 'package:atari/init/model/bar.dart';
import 'package:atari/init/model/bird.dart';
import 'package:flutter/material.dart';

class FlappyBirdScreenPage extends StatefulWidget {
  FlappyBirdScreenPage({Key? key}) : super(key: key);

  @override
  State<FlappyBirdScreenPage> createState() => _FlappyBirdScreenPageState();
}

class _FlappyBirdScreenPageState extends State<FlappyBirdScreenPage> {
  static double birdYaxis = 0;
  double time = 0;
  double height = 0;
  double initialHeight = birdYaxis;
  bool gameHasStarted = false;
  static double barXone = 1;
  double barXtwo = barXone + 1.5;

  void jump() {
    setState(() {
      time = 0;
      initialHeight = birdYaxis;
    });
  }

  void startGame() {
    gameHasStarted = true;
    Timer.periodic(Duration(milliseconds: 60), (timer) {
      time += 0.05;
      height = -4.9 * time * time + time * 2.8;
      setState(() {
        birdYaxis = initialHeight - height;
        barXone -= 0.5;
        barXtwo -= 0.5;
      });

      setState(() {
        if (barXone < -1.1) {
          barXone += 3.5;
        } else {
          barXone -= 0.05;
        }
      });

      setState(() {
        if (barXtwo < -1.1) {
          barXtwo += 3.5;
        } else {
          barXone -= 0.05;
        }
      });

      if (birdYaxis > 1) {
        timer.cancel();
        gameHasStarted = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (gameHasStarted) {
          jump();
        } else {
          startGame();
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    AnimatedContainer(
                      alignment: Alignment(0, birdYaxis),
                      duration: Duration(milliseconds: 0),
                      color: Colors.blue,
                      child: BirdPage(),
                    ),
                    AnimatedContainer(
                        alignment: Alignment(barXone, 1.1),
                        duration: Duration(milliseconds: 0),
                        child: BarPage(size: 200.0)),
                    AnimatedContainer(
                        alignment: Alignment(barXone, -1.1),
                        duration: Duration(milliseconds: 0),
                        child: BarPage(size: 200.0)),
                    AnimatedContainer(
                        alignment: Alignment(barXtwo, 1.1),
                        duration: Duration(milliseconds: 0),
                        child: BarPage(size: 150.0)),
                    AnimatedContainer(
                        alignment: Alignment(barXtwo, -1.1),
                        duration: Duration(milliseconds: 0),
                        child: BarPage(size: 250.0))
                  ],
                )),
            Expanded(
                child: Container(
              color: Colors.green,
            ))
          ],
        ),
      ),
    );
  }
}
