// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:packages_navigation_and_images/screens/homescreen.dart';
import 'package:packages_navigation_and_images/screens/secondscreen.dart';
// das Package, welches wir in der pubspec.yaml eingefügt haben, müssen wir in den Dateien, in denen
// wir es nutzen wollen, auch importieren
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  // um in unserem Projekt das Sizer-Package nutzen zu können, 
  // müssen wir die Materialapp in ein entsprechendes Sizer-widget packen, welches
  // die Materialapp als return im builder-Attribut ausgibt
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false, // ausblenden des debug-Banners
          title: 'Sizer',
          theme: ThemeData.light(),
          // unter 'home' geben wir unseren Startbildschirm an, für welchen wir
          // in der homescreen.dart-Datei ein HomeScreen-Widget erstellt haben
          home: HomeScreen(),
        );
      },
    );
  }
}
