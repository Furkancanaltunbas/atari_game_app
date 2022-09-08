import 'package:atari/core/constants/colors/theme_colors.dart';
import 'package:atari/core/constants/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerButton extends StatefulWidget {
  final Image image;
  String text;
  Function() function;
  ContainerButton(
      {Key? key,
      required this.image,
      required this.function,
      required this.text})
      : super(key: key);

  @override
  State<ContainerButton> createState() => _ContainerButtonState();
}

class _ContainerButtonState extends State<ContainerButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 550.h,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(blurRadius: 7.0, offset: Offset(7, 10), color: Colors.grey)
      ], color: forange, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            child: HeadingText1(
              text: widget.text,
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          SizedBox(
              width: 250.w,
              height: 200.h,
              child:
                  Align(alignment: Alignment.centerLeft, child: widget.image)),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            width: 200.w,
            height: 150.h,
            child: IconButton(
                onPressed: widget.function,
                icon: Image(
                  image: AssetImage("assets/Images/startButton.png"),
                )),
          ),
        ],
      ),
    );
  }
}
