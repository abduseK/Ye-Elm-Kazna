import 'package:flutter/material.dart';
import 'package:try_app/constants.dart';
import 'package:try_app/files/listfiles6.dart';
import 'package:share/share.dart';



class Page14 extends StatefulWidget {



  @override

  _Page14State createState() => _Page14State();
}

class _Page14State extends State<Page14> {



  @override

  int barNumber = 18;
  int textNumber = 18;
  int sourceNumber = 18;
  int questionNumber = 18;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F8FD),
      appBar: AppBar(
        flexibleSpace: Text("\n\n\n\n\n\n            " + appTitless7[barNumber],
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
              if(barNumber < 18)
              {
                barNumber = 18;
                questionNumber = 18;
                sourceNumber = 18;
                textNumber = 18;
              }
            });
          },
          icon: Icon(Icons.arrow_back_ios),),
        actions: [
          TextButton(
                onPressed: () {
                  Share.share(
                    texts7[textNumber],
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
                if(barNumber > 36)
                {
                  barNumber = 36;
                  questionNumber = 36;
                  sourceNumber = 36;
                  textNumber = 36;
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
                  child: Text(questions7[questionNumber],
                    style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFF0C9869)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              SelectableText(
                texts7[textNumber

                ],
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  letterSpacing: 0.5
                ),
                showCursor: true,
                toolbarOptions: ToolbarOptions(
                    copy: true,
                    cut: true,
                    paste: true,
                    selectAll: true
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
              child: Text(sources7[sourceNumber],
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

