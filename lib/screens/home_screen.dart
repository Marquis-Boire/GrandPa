import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../screens/courses_screen.dart';
import '../widgets/app_drawer.dart';
import '../widgets/app_header.dart';
import '../widgets/separator.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: <Widget>[
                  _buildMenuBar(),
                  SizedBox(
                    width: 50.0,
                  ),
                  AppHeader(),
                ],
              ),
              Separator(),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        _expandedCard(context, 'Level 100', '100'),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Separator(),
                    SizedBox(height: 20.0),
                    Text(
                      'Quick Notice',
                      style: kQuickNoticeTextStyle,
                    ),
                    SizedBox(height: 20.0),
                    Separator(),
                    SizedBox(height: 20.0),
                    Text(
                      'Open the navigation drawer and go to the about app screen',
                      style: kAboutAppTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _expandedCard(BuildContext context, String title, String level) {
  return Expanded(
    child: InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(CoursesScreen.routeName, arguments: level);
      },
      child: Card(
        color: Colors.blue,
        elevation: 100,
        shadowColor: Colors.white,
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

Widget _buildMenuBar() {
  return Builder(
    builder: (context) => Container(
      margin: EdgeInsets.only(left: 20.0, right: 10.0),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    // margin: EdgeInsets.only(left: 5.0),
                    height: 1.5,
                    width: 20.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 8.0,
                    child: CircleAvatar(
                      radius: 3.0,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Container(
                height: 1.5,
                width: 25.0,
                color: Colors.black,
              ),
              SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8.0,
                    child: CircleAvatar(
                      radius: 3.0,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    height: 1.5,
                    width: 20.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
