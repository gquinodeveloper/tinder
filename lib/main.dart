import 'package:app_tinder/pages/detail/detail_page.dart';
import 'package:app_tinder/pages/home/home_page.dart';
import 'package:app_tinder/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashPage(),
        "home": (context) => HomePage(),
        //"detail": (context) => DetailPage()
      },
    );
  }
}
