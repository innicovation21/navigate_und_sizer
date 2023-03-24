// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecondScreen extends StatefulWidget {
// wir legen fest, dass im constructor des SecondScreen ein String mitangegeben werden muss,
// um die Variable 'meinText' zu initialisieren (Wert zuweisen)
  final String meinText;
  const SecondScreen({super.key, required this.meinText});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

// # # # Start # # # # # # # initState() # # # # # # # # # # # # #

// Wenn bei der Erstellung eines Statefulwidgets, Variablen mithilfe anderer Variablen
// initialisiert werden sollen, dann nutzen wir dafür die initState()-Funktion
// Hier ein Beispiel:

  List meineOrte = ["Berlin", "Hamburg", "Hannover"];

  late String aktuellerOrt;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    aktuellerOrt = meineOrte[0];
  }
  
  // Diese Vorgehensweise ist erforderlich, da wir in Flutter
  // Variablen nicht durch andere Variablen, bei der Deklaration,
  // initialisieren können.
  // # # # Ende # # # # # # # initState() # # # # # # # # # # # # #

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (() {
              Navigator.of(context).pop();
            }),
            child: Container(
                color: Colors.greenAccent,
                height: 15.h,
                width: 40.w,
                // Variablen, welche via constructor mitgegeben wurden,
                // können wir direkt über 'widget.' nutzen.
                // Es muss dafür also keine Zwischen-Variable angelegt werden
                // #daumenhoch
                child: Center(child: Text("${widget.meinText}"))),
          ),
          SizedBox(
          // wenn das Sizer-Package importiert ist, können wir Größenangaben
          // responsiv gestalten (10.h = 10% der screen-height)
            height: 10.h,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              color: Colors.blueGrey,
              width: 20.w,
              height: 10.h,
              child: Center(child: Text(aktuellerOrt)),
            ),
          )
        ],
      )),
    );
  }
}
