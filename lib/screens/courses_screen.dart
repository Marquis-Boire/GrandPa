import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../screens/practical_screen.dart';

class CoursesScreen extends StatelessWidget {
  static const routeName = '/courses';
  @override
  Widget build(BuildContext context) {
    final info = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('GrandPa'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            _content(context, 'PHY 103'),
            SizedBox(
              height: 20.0,
            ),
            _content(context, 'CHE 103'),
          ],
        ),
      ),
    );
  }
}

Widget _content(BuildContext context, String title) {
  return Expanded(
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.blue,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(PracticalScreen.routeName);
        },
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 200.0,
          child: Text(
            title,
            style: kLevelTextStyle,
          ),
        ),
      ),
    ),
  );
}
