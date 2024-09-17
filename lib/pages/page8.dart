import 'package:flutter/material.dart';
import 'package:ye_elm_kazna/constants.dart';
import 'package:ye_elm_kazna/files/shortfiles.dart';
import 'package:share/share.dart';
import 'package:ye_elm_kazna/widgets/refractor_widgets.dart';




class Page8 extends StatefulWidget {



  @override

  _Page8State createState() => _Page8State();
}

class _Page8State extends State<Page8> {



  @override

  int barNumber = 5;
  int textNumber = 5;
  int sourceNumber = 5;
  int questionNumber = 5;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F8FD),
      appBar: AppBar(
        flexibleSpace: Text("\n\n\n\n\n\n            " + appTitless4[barNumber],
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
              if(barNumber < 5)
              {
                barNumber = 5;
                questionNumber = 5;
                sourceNumber = 5;
                textNumber = 5;
              }
            });
          },
          icon: Icon(Icons.arrow_back_ios),),
        actions: [
          TextButton(
                onPressed: () {
                  Share.share(
                    texts4[textNumber],
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
                if(barNumber > 15)
                {
                  barNumber = 15;
                  questionNumber = 15;
                  sourceNumber = 15;
                  textNumber = 15;
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
                  child: Text(questions4[questionNumber],
                    style: questionTextStyle
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              Text(
                texts4[textNumber],
                style: mainTextStyle
              ),
              SizedBox(
                height: 20.0,
              ),
              NewCard3(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}

