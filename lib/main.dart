import 'package:flutter/material.dart';

import './screens/courses_screen.dart';
import './screens/home_screen.dart';
import './screens/practical_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        CoursesScreen.routeName: (context) => CoursesScreen(),
        PracticalScreen.routeName: (context) => PracticalScreen(),
      },
    );
  }
}
