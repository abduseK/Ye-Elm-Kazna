import 'package:flutter/material.dart';
import 'package:try_app/constants.dart';
import 'package:try_app/files/listfiles.dart';
import 'package:try_app/files/listfiles2.dart';
import 'package:share/share.dart';
import 'package:marquee/marquee.dart';
import 'package:try_app/files/listfiles3.dart';
import 'package:try_app/files/shortfiles.dart';
import 'package:try_app/refractor_widgets.dart';
import 'package:try_app/files/listfiles4.dart';



void main() {
  runApp(MyHomePage());
}



class MyHomePage extends StatefulWidget {

  
  
  @override
  
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   
  String word = "hello";

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
                  style: TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic,
                    color: kPrimaryColor
                  ),
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              SelectableText(
                texts[textNumber

                ],
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
                //fontFamily: 'SassyFrass'
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
              NewCard(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}





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
              SelectableText(
                texts[textNumber

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
              NewCard(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}





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
                texts2[textNumber

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
              NewCard2(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}




class Page4 extends StatefulWidget {



  @override

  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {



  @override

  int barNumber = 25;
  int textNumber = 25;
  int sourceNumber = 25;
  int questionNumber = 25;

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
                if(barNumber > 52)
                {
                  barNumber = 52;
                  questionNumber = 52;
                  sourceNumber = 52;
                  textNumber = 52;
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
                texts2[textNumber

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
              NewCard2(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}



class Page5 extends StatefulWidget {



  @override

  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {



  @override

  int barNumber = 0;
  int textNumber = 0;
  int sourceNumber = 0;
  int questionNumber = 0;

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
                  child: Text(questions3[questionNumber],
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
                texts3[textNumber

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
              NewCard4(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}




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
                texts3[textNumber

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
              NewCard4(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}




class Page7 extends StatefulWidget {



  @override

  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {



  @override

  int barNumber = 0;
  int textNumber = 0;
  int sourceNumber = 0;
  int questionNumber = 0;

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
                if(barNumber > 4)
                {
                  barNumber = 4;
                  questionNumber = 4;
                  sourceNumber = 4;
                  textNumber = 4;
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
              SelectableText(
                texts4[textNumber

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
              NewCard3(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}



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
                texts4[textNumber

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
              NewCard3(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}




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
              SelectableText(
                texts4[textNumber

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
              NewCard3(sourceNumber: sourceNumber)

            ],
          ),
        ),
      ),
    );
  }
}




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
                texts5[textNumber

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
                texts5[textNumber

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











