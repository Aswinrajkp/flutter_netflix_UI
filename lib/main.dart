import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/widgets/bottomNavigation/bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue,
          backgroundColor: Colors.black,
          scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}
