import 'package:flutter/material.dart';
import 'package:try_app/widgets/constants.dart';
import 'package:try_app/files/listfiles4.dart';
import 'package:share/share.dart';




class Page11 extends StatefulWidget {



  @override

  _Page11State createState() => _Page11State();
}

class _Page11State extends State<Page11> {



  @override

  int barNumber = 26;
  int textNumber = 26;
  int sourceNumber = 26;
  int questionNumber = 26;

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
              if(barNumber < 26)
              {
                barNumber = 26;
                questionNumber = 26;
                sourceNumber = 26;
                textNumber = 26;
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
                if(barNumber > 42)
                {
                  barNumber = 42;
                  questionNumber = 42;
                  sourceNumber = 42;
                  textNumber = 42;
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
