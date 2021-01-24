import 'package:flutter/material.dart';
import 'package:grandPa/screens/practical_article_screen.dart';

import '../constants/constants.dart';
import '../widgets/app_header.dart';
import '../widgets/separator.dart';

class PhysicsPracticalScreen extends StatelessWidget {
  static const routeName = '/practicals';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0, bottom: 20, right: 20),
                child: Column(
                  children: <Widget>[
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
                      margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: <Widget>[
                          _practical(context, 'EXP 1', 'p1'),
                          SizedBox(
                            width: 20.0,
                          ),
                          _practical(context, 'EXP 2', 'p2'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        _practical(context, 'EXP 3', 'p3'),
                        SizedBox(
                          width: 20.0,
                        ),
                        _practical(context, 'EXP 4', 'p4'),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        _practical(context, 'EXP 5', 'p5'),
                        SizedBox(
                          width: 20.0,
                        ),
                        _practical(context, 'EXP 6', 'p6'),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        _practical(context, 'EXP 7', 'p7'),
                        SizedBox(
                          width: 20.0,
                        ),
                        _practical(context, 'EXP 8', 'p8'),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        _practical(context, 'EXP 9', 'p9'),
                        SizedBox(
                          width: 20.0,
                        ),
                        _practical(context, 'EXP 10', 'p10'),
                      ],
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

Widget _practical(BuildContext context, String title, String id) {
  return Expanded(
    child: InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(PracticalArticleScreen.routeName, arguments: id);
      },
      child: Card(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          alignment: Alignment.center,
          height: 100.0,
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
