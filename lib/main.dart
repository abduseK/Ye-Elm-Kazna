import 'package:flutter/material.dart';
import 'package:ye_elm_kazna/constants.dart';
import 'package:ye_elm_kazna/widgets/Home_Screen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
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
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: HomeScreens(),
    );
  }
}
