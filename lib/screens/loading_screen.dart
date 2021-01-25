import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:provider/provider.dart';

import '../constants/constants.dart';
import '../providers/articles.dart';
import '../screens/home_screen.dart';
import '../widgets/separator.dart';

class LoadingScreen extends StatefulWidget {
  static const routeName = '/loading';
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Future.delayed(Duration(seconds: 3), () async {
        try {
          await Provider.of<Articles>(context, listen: false)
              .fetchArticles()
              .then((_) {
            setState(() {
              _isLoading = false;
            });
          });
        } catch (error) {
          print(error);
        }
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              // decoration: BoxDecoration(
              //   // color: Colors.white,
              //   gradient: LinearGradient(
              //     colors: [
              //       Color.fromRGBO(215, 17, 225, 1).withOpacity(0.7),
              //       Color.fromRGBO(255, 188, 17, 1).withOpacity(1.0),
              //     ],
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomRight,
              //     stops: [0, 1],
              //   ),
              // ),
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        heightFactor: 1.5,
                        child: Container(
                          width: 60,
                          child: LoadingIndicator(
                            indicatorType: Indicator.ballPulseSync,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.0,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Online GrandPa',
                              style: kLoadingTitleTextStyle,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 7.0,
                            ),
                            Separator(),
                            Container(
                              margin: EdgeInsets.all(10.0),
                              alignment: Alignment.center,
                              child: Text(
                                'A thorough guide on how to ace UCC Physical Science Practicals',
                                style: kLoadingSubtitleTextStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            // Container(
                            //   margin: EdgeInsets.all(10.0),
                            //   alignment: Alignment.center,
                            //   child: Text(
                            //     'One App for all your practical needs',
                            //     style: kLoadingSubtitleTextStyle,
                            //     textAlign: TextAlign.center,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : HomeScreen(),
    );
  }
}
