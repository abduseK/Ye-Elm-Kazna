import 'package:flutter/material.dart';
import 'package:try_app/constants.dart';
import 'package:try_app/Home_Screen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp()
  )
    );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ye elm kazna',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kTextColor
        ),
      ),
      home: HomeScreens(),
    );
  }
}