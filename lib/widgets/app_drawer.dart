import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        width: 250.0,
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              color: Colors.lightBlue,
              child: Text('A SolveShare Production'),
              alignment: Alignment.center,
            ),
            _drawerItem(Icons.save_alt, 'Saved Practicals'),
          ],
        ),
      ),
    );
  }
}

Widget _drawerItem(IconData iconData, String title) {
  return ListTile(
    leading: Icon(
      iconData,
    ),
    title: Text(title),
  );
}
