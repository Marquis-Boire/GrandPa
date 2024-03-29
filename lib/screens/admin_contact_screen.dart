import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/app_drawer.dart';
import '../widgets/app_header.dart';
import '../widgets/separator.dart';

class AdminContactScreen extends StatelessWidget {
  static const routeName = '/contact';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  _buildMenuBar(),
                  SizedBox(
                    width: 30.0,
                  ),
                  AppHeader(),
                ],
              ),
              Separator(),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Text(
                  'Admin Contact',
                  style: kAdminContactTextStyle,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Separator(),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Email: ',
                      style: kAdminEmailTextStyle,
                    ),
                    Text(
                      'mathematics06physics@gmail.com',
                      style: kAdminEmailTextStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Separator(),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Phone: ',
                      style: kAdminPhoneTextStyle,
                    ),
                    Text(
                      '+233 558 159 629',
                      style: kAdminPhoneTextStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Separator(),
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
