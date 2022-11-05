import 'dart:html';

import 'package:flutter/material.dart';
import 'package:try_app/constants.dart';
import 'package:try_app/files/shortfiles.dart';
import 'package:share/share.dart';
import 'package:try_app/refractor_widgets.dart';



class Page9 extends StatefulWidget {



  @override

  _Page9State createState() => _Page9State();
}

class _Page9State extends State<Page9> {



  @override

  int barNumber = 16;
  int textNumber = 16;
  int sourceNumber = 16;
  int questionNumber = 16;

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
              if(barNumber < 16)
              {
                barNumber = 16;
                questionNumber = 16;
                sourceNumber = 16;
                textNumber = 16;
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
                  child: Text(questions4[questionNumber],
                    style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFF0C9869)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              Text(
                texts4[textNumber],
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  letterSpacing: 0.5
                ),
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

