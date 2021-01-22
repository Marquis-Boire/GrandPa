import 'package:flutter/material.dart';

import '../constants/constants.dart';

class PracticalScreen extends StatelessWidget {
  static const routeName = '/practicals';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GrandPa'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                _practical('P1'),
                SizedBox(
                  width: 20.0,
                ),
                _practical('P2'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                _practical('P3'),
                SizedBox(
                  width: 20.0,
                ),
                _practical('P4'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                _practical('P5'),
                SizedBox(
                  width: 20.0,
                ),
                _practical('P6'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _practical(String title) {
  return Expanded(
    child: Container(
      alignment: Alignment.center,
      color: Colors.blue,
      height: 100.0,
      child: Text(
        title,
        style: kLevelTextStyle,
      ),
    ),
  );
}
