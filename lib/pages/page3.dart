import 'package:flutter/material.dart';
import 'package:ye_elm_kazna/constants.dart';
import 'package:ye_elm_kazna/files/listfiles2.dart';
import 'package:share/share.dart';
import 'package:ye_elm_kazna/widgets/refractor_widgets.dart';



class Page3 extends StatefulWidget {



  @override

  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {



  @override

  int barNumber = 0;
  int textNumber = 0;
  int sourceNumber = 0;
  int questionNumber = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F8FD),
      appBar: AppBar(
        flexibleSpace: Text("\n\n\n\n\n\n            " + appTitless2[barNumber],
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
                    texts2[textNumber],
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
                if(barNumber > 24)
                {
                  barNumber = 24;
                  questionNumber = 24;
                  sourceNumber = 24;
                  textNumber = 24;
                }

              });
            },
            icon: Icon(Icons.arrow_forward_ios),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 40.0, right: 15.0),
          child: Column(
            children: [
              Card(
                color: kBackgroundColor,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(questions2[questionNumber],
                    style: questionTextStyle
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              Text(
                texts2[textNumber],
                style: mainTextStyle
              ),
              SizedBox(
                height: 20.0,
              ),
              NewCard2(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}

