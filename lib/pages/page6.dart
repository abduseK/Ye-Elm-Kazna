import 'package:flutter/material.dart';
import 'package:try_app/widgets/constants.dart';
import 'package:try_app/files/listfiles3.dart';
import 'package:share/share.dart';
import 'package:try_app/refractor_widgets.dart';




class Page6 extends StatefulWidget {



  @override

  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {



  @override

  int barNumber = 25;
  int textNumber = 25;
  int sourceNumber = 25;
  int questionNumber = 25;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F8FD),
      appBar: AppBar(
        flexibleSpace: Text("\n\n\n\n\n\n            " + appTitless3[barNumber],
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
              if(barNumber < 25)
              {
                barNumber = 25;
                questionNumber = 25;
                sourceNumber = 25;
                textNumber = 25;
              }
            });
          },
          icon: Icon(Icons.arrow_back_ios),),
        actions: [
          TextButton(
                onPressed: () {
                  Share.share(
                    texts3[textNumber],
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
                if(barNumber > 48)
                {
                  barNumber = 48;
                  questionNumber = 48;
                  sourceNumber = 48;
                  textNumber = 48;
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
                  child: Text(questions3[questionNumber],
                    style: questionTextStyle
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              Text(
                texts3[textNumber],
                style: mainTextStyle
              ),
              SizedBox(
                height: 20.0,
              ),
              NewCard4(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}

