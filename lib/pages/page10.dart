import 'package:flutter/material.dart';
import 'package:ye_elm_kazna/constants.dart';
import 'package:ye_elm_kazna/files/listfiles4.dart';
import 'package:share/share.dart';




class Page10 extends StatefulWidget {



  @override

  _Page10State createState() => _Page10State();
}

class _Page10State extends State<Page10> {



  @override

  int barNumber = 0;
  int textNumber = 0;
  int sourceNumber = 0;
  int questionNumber = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F8FD),
      appBar: AppBar(
        flexibleSpace: Text("\n\n\n\n\n\n            " + appTitless5[barNumber],
        style: TextStyle(
          color: kBackgroundColor
        ),
        ),
        backgroundColor: Color(0xFF0C9869),
        toolbarHeight: 115.0,
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
                    texts5[textNumber],
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
                if(barNumber > 25)
                {
                  barNumber = 25;
                  questionNumber = 25;
                  sourceNumber = 25;
                  textNumber = 25;
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
                  child: Text(questions5[questionNumber],
                    style: questionTextStyle
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              Text(
                texts5[textNumber],
                style: mainTextStyle
              ),
              SizedBox(
                height: 20.0,
              ),

              Card(
                color: kBackgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.source,
                        color: kPrimaryColor,),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child: Text(sources5[sourceNumber],
                          style: TextStyle(
                              color: Color(0xFF0C9869),
                              fontStyle: FontStyle.italic
                          ),),
                      )
                    ],
                  ),
                ),
            )

            ],
          ),
        ),
      ),
    );
  }
}


