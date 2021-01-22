import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../screens/courses_screen.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GrandPa'),
      ),
      drawer: AppDrawer(),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                _expandedCard(context, 'Level 100'),
                SizedBox(width: 20.0),
                _expandedCard(context, 'Level 200'),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                _expandedCard(context, 'Level 300'),
                SizedBox(width: 20.0),
                _expandedCard(context, 'Level 400'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _expandedCard(BuildContext context, String title) {
  return Expanded(
    child: InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(CoursesScreen.routeName, arguments: 'level 100');
      },
      child: Card(
        color: Colors.blue,
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 200,
          alignment: Alignment.center,
          child: Text(
            title,
            style: kLevelTextStyle,
          ),
        ),
      ),
    ),
  );
}
