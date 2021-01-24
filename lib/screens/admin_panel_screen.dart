import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/article.dart';
import '../providers/articles.dart';
import '../screens/home_screen.dart';

class AdminPanelScreen extends StatefulWidget {
  static const routeName = '/panel';

  @override
  _AdminPanelScreenState createState() => _AdminPanelScreenState();
}

class _AdminPanelScreenState extends State<AdminPanelScreen> {
  final _form = GlobalKey<FormState>();
  final _imageUrlController = TextEditingController();

  final _idFocusNode = FocusNode();
  final _imageUrlFocusNode = FocusNode();
  final _levelFocusNode = FocusNode();

  var _article = Article(
    id: '',
    level: '',
    imageUrl: '',
  );

  @override
  void initState() {
    // TODO: implement initState
    _imageUrlFocusNode.addListener(_updateImageUrl);
    super.initState();
  }

  void _updateImageUrl() {
    if (!_imageUrlFocusNode.hasFocus) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _imageUrlFocusNode.removeListener(_updateImageUrl);
    _imageUrlController.dispose();
    _imageUrlFocusNode.dispose();
    super.dispose();
  }

  void _saveForm() async {
    final _isValid = _form.currentState.validate();

    if (!_isValid) {
      return;
    }
    _form.currentState.save();

    try {
      await Provider.of<Articles>(context, listen: false).addArticle(_article);
    } catch (error) {
      print(error);
    }
    print(_article);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GrandPa'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Form(
                key: _form,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'id',
                      ),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_idFocusNode);
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter an id';
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        _article = Article(
                          id: newValue,
                          level: _article.level,
                          imageUrl: _article.imageUrl,
                        );
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'level',
                      ),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_levelFocusNode);
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter a level';
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        _article = Article(
                          id: _article.id,
                          level: newValue,
                          imageUrl: _article.imageUrl,
                        );
                      },
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 100.0,
                            width: 100.0,
                            margin: EdgeInsets.only(top: 8.0, right: 10.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: Container(
                              child: _imageUrlController.text.isEmpty
                                  ? Text('Enter a URL')
                                  : FittedBox(
                                      child: Image.network(
                                        _imageUrlController.text,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Image Url',
                            ),
                            textInputAction: TextInputAction.done,
                            focusNode: _imageUrlFocusNode,
                            keyboardType: TextInputType.url,
                            controller: _imageUrlController,
                            onFieldSubmitted: (_) {
                              _saveForm();
                            },
                            onSaved: (newValue) {
                              _article = Article(
                                id: _article.id,
                                level: _article.level,
                                imageUrl: newValue,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                _saveForm();
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              child: Text('send'),
            ),
          ],
        ),
      ),
    );
  }
}
