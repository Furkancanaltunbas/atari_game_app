import 'package:atari/core/constants/colors/theme_colors.dart';
import 'package:atari/core/constants/widgets/button_wigets/container_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenPage extends StatefulWidget {
  HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fblue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: SizedBox(
              height: 600.h,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.w,
                    ),
                    ContainerButton(
                        text: "FLAPPY BIRD",
                        image:
                            Image(image: AssetImage("assets/Images/bird.png")),
                        function: () {}),
                    SizedBox(
                      width: 60.w,
                    ),
                    ContainerButton(
                        text: "SNAKE GAME",
                        image:
                            Image(image: AssetImage("assets/Images/snake.png")),
                        function: () {}),
                    SizedBox(
                      width: 60.w,
                    ),
                    ContainerButton(
                        text: "TETRIS",
                        image: Image(
                            image: AssetImage("assets/Images/tetris.png")),
                        function: () {}),
                    SizedBox(
                      width: 30.w,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
