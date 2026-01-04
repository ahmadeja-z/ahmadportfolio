import 'package:ahmadportfolio/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:ahmadportfolio/app_theme.dart';
import 'package:ahmadportfolio/presentation/pages/home/home_page.dart';
import 'package:ahmadportfolio/presentation/routes/routes.dart';
import 'package:ahmadportfolio/values/values.dart';
import 'package:layout/layout.dart';

import 'configure_web.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  configureApp();
  runApp(AhmadPortfolio());
}

class AhmadPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp(
        title: StringConst.APP_TITLE,
        theme: AppTheme.lightThemeData,
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.homePageRoute,
        onGenerateRoute: RouteConfiguration.onGenerateRoute,
      ),
    );
  }
}
