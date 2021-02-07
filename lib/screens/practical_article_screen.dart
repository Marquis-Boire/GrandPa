import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:provider/provider.dart';

import '../constants/constants.dart';
import '../providers/articles.dart';
import '../widgets/article_list.dart';

class PracticalArticleScreen extends StatefulWidget {
  static const routeName = '/article';

  @override
  _PracticalArticleScreenState createState() => _PracticalArticleScreenState();
}

class _PracticalArticleScreenState extends State<PracticalArticleScreen> {
  // var id = '';
  var _isLoading = false;
  Future<void> secureScreen() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    // Future.delayed(Duration.zero, () async {
    //   try {
    //     await
    //   } catch (error) {
    //     print(error);
    //   }
    // });
    // super.didChangeDependencies();
  }
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _isLoading = true;
    });

    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        _isLoading = false;
      });
    });
    secureScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final articles =
        Provider.of<Articles>(context, listen: false).fetchArticlesById(id);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              _isLoading == true
                  ? Center(
                      child: Text('Loading...'),
                    )
                  : Center(
                      child: Text(''),
                    ),
              articles.length == 0
                  ? Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'No Data Found',
                            style: kNoDataTextStyle,
                          ),
                        )
                      ],
                    )
                  : ArticleList(articles),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'likes',
                            style: kLikeTextStyle,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: IconButton(
                            splashColor: Colors.greenAccent,
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //     width: 1.0,
                      //     color: Colors.black12,
                      //   ),
                      //   color: Colors.black12,
                      //   borderRadius: BorderRadius.circular(5.0),
                      // ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black12,
                                ),
                                padding: EdgeInsets.all(5.0),
                                child: Text('2')),
                            InkWell(
                              borderRadius: BorderRadius.circular(15.0),
                              splashColor: Colors.white,
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(6.0),
                                child: Text(
                                  'Comments',
                                  style: kAnswerTextStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(15.0),
                      splashColor: Colors.lightBlue,
                      onTap: () {},
                      child: Card(
                        elevation: 10,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // <Widget>[
              //   Image.asset('images/p1_exp1.jpg'),
              //   Text(id),
              // ],
            ],
          ),
        ),
      ),
    );
  }
}
