import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../screens/physics_practical_screen.dart';
import '../widgets/app_header.dart';
import '../widgets/separator.dart';

class CoursesScreen extends StatelessWidget {
  static const routeName = '/courses';
  @override
  Widget build(BuildContext context) {
    final info = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // _buildMenuBar(),
                  // SizedBox(
                  //   width: 50.0,
                  // ),
                  AppHeader(),
                ],
              ),
              Separator(),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    info == '200' || info == '300' || info == '400'
                        ? Center(
                            child: Text(
                              'Content will be added soon',
                              style: kInfoTextStyle,
                            ),
                          )
                        : _content(context, 'PHY 103'),
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

Widget _content(BuildContext context, String title) {
  return Card(
    elevation: 10.0,
    shadowColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    color: Colors.blue,
    child: InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(PhysicsPracticalScreen.routeName);
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
