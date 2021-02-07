import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:provider/provider.dart';

import 'package:loading_indicator/loading_indicator.dart';
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
                      child: Container(
                        width: 30.0,
                        height: 10.0,
                        child: LoadingIndicator(
                          indicatorType: Indicator.ballBeat,
                        ),
                      ),
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
                height: 50.0,
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
