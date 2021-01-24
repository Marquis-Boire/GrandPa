import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/articles.dart';

class PracticalArticleScreen extends StatefulWidget {
  static const routeName = '/article';

  @override
  _PracticalArticleScreenState createState() => _PracticalArticleScreenState();
}

class _PracticalArticleScreenState extends State<PracticalArticleScreen> {
  // var id = '';
  var _isLoading = false;

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

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
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
              articles.length == 0
                  ? Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'No Data Found',
                          ),
                        )
                      ],
                    )
                  : Container(
                      child: Column(
                        children: articles.map(
                          (article) {
                            return Image.network(article.imageUrl);
                          },
                          // Text(article.imageUrl),
                        ).toList(),
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
