import 'package:flutter/material.dart';
import 'package:ye_elm_kazna/widgets/body.dart';
import 'package:ye_elm_kazna/constants.dart';
import 'package:ye_elm_kazna/widgets/drawer.dart';

class HomeScreens extends StatefulWidget {
  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: newMethod(),
      // drawer: Drawers(),
      body: Body(),
    );
  }

  AppBar newMethod() {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF121212), Color(0xFF1E1E1E)], // Dark gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      title: Text(
        'የ ዒልም ካዝና',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      elevation: 0,
      actions: [
        PopupMenuButton(
          color: Color(0xFF2A2A2A),
          iconColor: Colors.white,
          itemBuilder: (context) => [
            PopupMenuItem(
                value: 1,
                child: Row(
                  children: [
                    Icon(
                      Icons.share,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Share App',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
          ],
          onSelected: (value) {
            if (value == 1) {}
          },
        ),
      ],
    );
  }
}
