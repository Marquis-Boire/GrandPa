import 'package:flutter/material.dart';
import 'package:grandPa/providers/articles.dart';
import 'package:provider/provider.dart';

import './providers/articles.dart';
import './screens/about_app_screen.dart';
import './screens/admin_auth_screen.dart';
import './screens/admin_contact_screen.dart';
import './screens/admin_panel_screen.dart';
import './screens/courses_screen.dart';
import './screens/loading_screen.dart';
import './screens/physics_practical_screen.dart';
import './screens/practical_article_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Articles>(
      create: (_) => Articles(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoadingScreen(),
        routes: {
          CoursesScreen.routeName: (context) => CoursesScreen(),
          PhysicsPracticalScreen.routeName: (context) =>
              PhysicsPracticalScreen(),
          PracticalArticleScreen.routeName: (context) =>
              PracticalArticleScreen(),
          AdminAuthScreen.routeName: (context) => AdminAuthScreen(),
          AdminPanelScreen.routeName: (context) => AdminPanelScreen(),
          LoadingScreen.routeName: (context) => LoadingScreen(),
          AdminContactScreen.routeName: (context) => AdminContactScreen(),
          AboutAppScreen.routeName: (context) => AboutAppScreen(),
        },
      ),
    );
  }
}
