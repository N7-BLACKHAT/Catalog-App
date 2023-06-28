import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),

      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,

      initialRoute: MyRoutes.loginRoute,//calling login page
      routes: {
        "/": (context) => LoginPage(), //by default login page
        MyRoutes.homeRoute: (context) => HomePage(), // for home home page
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
