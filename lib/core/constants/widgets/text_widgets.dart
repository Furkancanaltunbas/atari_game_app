import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadingText1 extends StatelessWidget {
  TextAlign? textAlign = TextAlign.center;
  String text;
  String? fontFamily = "RampartOne";
  FontWeight? fontWeight = FontWeight.bold;
  Color? color = Colors.yellow;
  HeadingText1(
      {Key? key,
      required this.text,
      this.fontFamily,
      this.color,
      this.fontWeight,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: "RampartOne",
            fontSize: 30.sp,
            color: color,
            fontWeight: fontWeight),
        textAlign: textAlign);
  }
}
