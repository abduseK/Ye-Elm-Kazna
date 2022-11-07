import 'package:flutter/material.dart';
import 'package:try_app/body.dart';
import 'package:try_app/widgets/constants.dart';
import 'package:try_app/drawer.dart';


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