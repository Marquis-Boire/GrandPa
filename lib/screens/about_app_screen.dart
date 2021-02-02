import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/app_drawer.dart';
import '../widgets/app_header.dart';
import '../widgets/separator.dart';

class AboutAppScreen extends StatelessWidget {
  static const routeName = '/about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: <Widget>[
                  _buildMenuBar(),
                  SizedBox(
                    width: 15.0,
                  ),
                  AppHeader(),
                ],
              ),
              Separator(),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'About App',
                  style: kQuickNoticeTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Separator(),
              SizedBox(
                height: 50.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'This app is for Level 100 students offering PHY103 '
                  'as a course in the first semester and for anyone doing a similar course.',
                  style: kAboutAppTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Separator(),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'The content of this app is not standalone and as such is to be used in conjunction with the '
                  'PHY103 Laboratory Manual for General Physics Practicals Book.'
                  'This app is to guide you through the practicals and to help you easily ACE '
                  'PHY103 practical write up and the PHY103 Exams.',
                  style: kAboutAppTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Separator(),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 90.0,
              ),
              Separator(),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text(
                  'Made With Love From '
                  'SOLVESHARE',
                  style: kNameTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Separator(),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
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
