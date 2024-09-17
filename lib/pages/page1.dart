import 'package:flutter/material.dart';
import 'package:ye_elm_kazna/constants.dart';
import 'package:ye_elm_kazna/files/listfiles.dart';
import 'package:share/share.dart';
import 'package:ye_elm_kazna/widgets/refractor_widgets.dart';


class MyHomePage extends StatefulWidget {

  
  
  @override
  
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
 
  int barNumber = 0;
  int textNumber = 0;
  int sourceNumber = 0;
  int questionNumber = 0;
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F8FD),
      appBar: AppBar(
        flexibleSpace: Text("\n\n\n\n\n\n            " + appTitless[barNumber],
        style: TextStyle(
          color: kBackgroundColor
        ),
        ),
        
        backgroundColor: Color(0xFF0C9869),
        toolbarHeight: 100.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
          )
        ),
        leading: IconButton(
          onPressed: () {
                  setState(() {
                       barNumber--;
                       textNumber--;
                       sourceNumber--;
                       questionNumber--;
                       if(barNumber < 0)
                       {
                         barNumber = 0;
                         questionNumber = 0;
                         sourceNumber = 0;
                         textNumber = 0;
                       }
                   });
                },
          icon: Icon(Icons.arrow_back_ios),),
        actions: [
          TextButton(
                onPressed: () {
                  Share.share(
                    texts[textNumber],
                  );
                },
                child: Icon(Icons.send,
                color: kBackgroundColor,),
                
              ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.list_sharp)
              ),
            IconButton(
            onPressed: () {
                  setState(() {
                       barNumber++;
                       textNumber++;
                       sourceNumber++;
                       questionNumber++;
                       if(barNumber > 13)
                       {
                         barNumber = 13;
                         questionNumber = 13;
                         sourceNumber = 13;
                         textNumber = 13;
                       }              
                                
                   });
                },
            icon: Icon(Icons.arrow_forward_ios),),
            
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 40.0, right: 15.0),
          child: Column(
            children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                color: kBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(questions[questionNumber],
                  style: questionTextStyle
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              Text(
                texts[textNumber],
                style: mainTextStyle
              ),

              SizedBox(
                height: 20.0,
              ),
              NewCard(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}
