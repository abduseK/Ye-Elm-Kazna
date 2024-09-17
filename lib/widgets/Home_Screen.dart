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
      appBar: newMethod(),
      drawer: Drawers(),
      body: Body(),
      
    );
  }

  AppBar newMethod() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Text('የ ዒልም ካዝና',
      style: TextStyle(
        color: kTextColor,
        fontWeight: FontWeight.bold
      ),),
      elevation: 0,
      actions: [
        PopupMenuButton(
          color: kBackgroundColor,
          itemBuilder: (context) =>
        [
          PopupMenuItem(
            value: 1,
            child: Row(
              children: [
                Icon(Icons.share,
                color: kPrimaryColor,),
                SizedBox(width: 10.0,),
                Text('Share App')
              ],
            )),
            
            
        ],
        onSelected: (value){
          if(value == 1)
          {

          }
        
        },
        ),
        
      ],

    );
  }
}