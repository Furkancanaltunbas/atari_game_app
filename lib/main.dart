import 'package:atari/screens/flappyBirdScreen.dart';
import 'package:atari/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Material App',
            debugShowCheckedModeBanner: false,
            home: HomeScreenPage(),
          );
        });
  }
}
