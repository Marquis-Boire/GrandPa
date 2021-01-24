import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../screens/admin_auth_screen.dart';
import '../screens/admin_contact_screen.dart';
import '../screens/home_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        width: 300.0,
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              color: Colors.pinkAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'A SolveShare Production',
                    style: kLevelTextStyle,
                  ),
                  Text(
                    '@2021',
                    style: kLevelTextStyle,
                  ),
                ],
              ),
              alignment: Alignment.center,
            ),
            _drawerItem(
              context,
              Icons.home,
              'Home',
              () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
            ),
            _drawerItem(
              context,
              Icons.verified_user,
              'Admin Account',
              () {
                Navigator.of(context).pushNamed(AdminAuthScreen.routeName);
              },
            ),
            _drawerItem(
              context,
              Icons.call,
              'Contact Admin',
              () {
                Navigator.of(context).pushNamed(AdminContactScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _drawerItem(BuildContext context, IconData iconData, String title,
    Function onTapHandler) {
  return GestureDetector(
    onTap: onTapHandler,
    child: ListTile(
      leading: Icon(
        iconData,
        color: Colors.pink,
      ),
      title: Text(title),
    ),
  );
}
