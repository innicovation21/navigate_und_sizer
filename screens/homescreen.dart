// Startbildschirm unseres Projekts


// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:packages_navigation_and_images/screens/secondscreen.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

// wir erstellen die Variable homeText, um sie im Constructor von SecondScreen mitgeben zu können
// und somit Datan von einem Screen an einen anderen Screen übergeben

  String homeText = "hello from homescreen";
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            //anzeigen eines neuen Screens
            // '.push' bedeutet. dass der folgende Screen auf einen "SCREEN-STAPEL" oben drauf gelegt wird
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SecondScreen(meinText: homeText)));
          },
          child: Container(
              color: Colors.amberAccent,
              height: 10.h,
              width: 30.w,
              child: Center(child: Text("to 2. Screen"))),
        ),
      ),
    );
  }
}
