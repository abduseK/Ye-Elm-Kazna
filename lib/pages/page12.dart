import 'package:flutter/material.dart';
import 'package:try_app/constants.dart';
import 'package:try_app/files/listfiles5.dart';
import 'package:share/share.dart';




class Page12 extends StatefulWidget {



  @override

  _Page12State createState() => _Page12State();
}

class _Page12State extends State<Page12> {



  @override

  int barNumber = 0;
  int textNumber = 0;
  int sourceNumber = 0;
  int questionNumber = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F8FD),
      appBar: AppBar(
        flexibleSpace: Text("\n\n\n\n\n\n            " + appTitless6[barNumber],
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
                    texts6[textNumber],
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
                if(barNumber > 21)
                {
                  barNumber = 21;
                  questionNumber = 21;
                  sourceNumber = 21;
                  textNumber = 21;
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
                  child: Text(questions6[questionNumber],
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
                texts6[textNumber],
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  letterSpacing: 0.5
                ),
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
              child: Text(sources6[sourceNumber],
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
