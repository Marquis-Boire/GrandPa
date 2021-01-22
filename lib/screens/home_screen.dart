import 'package:flutter/material.dart';

import '../constants/constants.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
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
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text(
                        'Level 100',
                        style: kLevelTextStyle,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text(
                        'Level 200',
                        style: kLevelTextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text(
                        'Level 300',
                        style: kLevelTextStyle,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text(
                        'Level 400',
                        style: kLevelTextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
