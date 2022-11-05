import 'package:flutter/material.dart';
import 'package:try_app/constants.dart';
import 'package:try_app/files/listfiles.dart';
import 'package:share/share.dart';
import 'package:try_app/refractor_widgets.dart';



class Page2 extends StatefulWidget {



  @override

  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {



  @override

  int barNumber = 14;
  int textNumber = 14;
  int sourceNumber = 14;
  int questionNumber = 14;

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
              if(barNumber < 14)
              {
                barNumber = 14;
                questionNumber = 14;
                sourceNumber = 14;
                textNumber = 14;
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
                if(barNumber > 34)
                {
                  barNumber = 34;
                  questionNumber = 34;
                  sourceNumber = 34;
                  textNumber = 34;
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
                  child: Text(questions[questionNumber],
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
                texts[textNumber],
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  letterSpacing: 0.5
                ),
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
