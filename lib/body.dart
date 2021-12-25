import 'package:flutter/material.dart';
import 'package:try_app/constants.dart';
import 'package:try_app/pages.dart';
import 'package:marquee/marquee.dart';
import 'package:try_app/pages/page13.dart';
import 'package:try_app/pages/page14.dart';




class Body extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 100.0,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)
                    )
                  ),
                  
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50.0,
                          color: kPrimaryColor.withOpacity(0.23)

                        )
                      ]
                    ),
                    child: Marquee(
                      text: 'የ ካዝና ማውጫ',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: kTextColor
                    ),
                    scrollAxis: Axis.horizontal,
                    pauseAfterRound: Duration(seconds: 3),
                    blankSpace: 200,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    ),),
                )
              ],
            ),
          ),
         SizedBox(
           height: 25.0,
         ),
         Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFFF9F8FD),
              title: Text('አቂዳ',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                    //fontFamily: 'SassyFrass'
                ),),
              subtitle: Text('በአቂዳ ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500
                ),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
          ),

          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFFF9F8FD),
              title: Text('ቢድዐ 1',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0
                ),),
              subtitle: Text('በቢድዐ እና መንሃጅ ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500
                ),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
              },
            ),
          ),

          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFFF9F8FD),
              title: Text('ቢድዐ 2',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0
                ),),
              subtitle: Text('በቢድዐ እና መንሃጅ ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500
                ),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page4()));
              },
            ),
          ),

           Card(
              elevation: 3.0,
              child: ListTile(
                tileColor: Color(0xFFF9F8FD),
                title: Text('ሶላት 1',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0
                ),),
                subtitle: Text('በሶላት ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500
                ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page5()));
                 
                },
              ),
            ),

            Card(
              elevation: 3.0,
              child: ListTile(
                tileColor: Color(0xFFF9F8FD),
                title: Text('ሶላት 2',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0
                ),),
                subtitle: Text('በሶላት ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500
                ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page6()));

                },
              ),
            ),

          Card(
              elevation: 3.0,
              child: ListTile(
                tileColor: Color(0xFFF9F8FD),
                title: Text('ጾም',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0
                ),),
                subtitle: Text('በጾም ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500
                ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                 
                },
              ),
            ),

            Card(
              elevation: 3.0,
              child: ListTile(
                tileColor: Color(0xFFF9F8FD),
                title: Text('ዒድ',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0
                ),),
                subtitle: Text('በዒድ ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500
                ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page7()));
                 
                },
              ),
            ),

             Card(
              elevation: 3.0,
              child: ListTile(
                tileColor: Color(0xFFF9F8FD),
                title: Text('ጁሙዓ',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0
                ),),
                subtitle: Text('በጁሙዓ ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500
                ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page8()));
                 
                },
              ),
            ),


            Card(
              elevation: 3.0,
              child: ListTile(
                tileColor: Color(0xFFF9F8FD),
                title: Text('ዶዒፍ ሀዲሶች',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0
                ),),
                subtitle: Text('በዶዒፍ ሀዲሶች ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500
                ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page9()));
                 
                },
              ),
            ),



            Card(
              elevation: 3.0,
              child: ListTile(
                tileColor: Color(0xFFF9F8FD),
                title: Text('ትዳር 1',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0
                ),),
                subtitle: Text('በትዳር ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500
                ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page10()));
                 
                },
              ),
            ),



            Card(
              elevation: 3.0,
              child: ListTile(
                tileColor: Color(0xFFF9F8FD),
                title: Text('ትዳር 2',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0
                ),),
                subtitle: Text('በትዳር ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500
                ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page11()));
                 
                },
              ),
            ),


            Card(
              elevation: 3.0,
              child: ListTile(
                tileColor: Color(0xFFF9F8FD),
                title: Text('ጡሃራ',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0
                ),),
                subtitle: Text('በጡሃራ ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500
                ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page12()));
                 
                },
              ),
            ),


            Card(
              elevation: 3.0,
              child: ListTile(
                tileColor: Color(0xFFF9F8FD),
                title: Text('ሴቶች 1',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0
                ),),
                subtitle: Text('በሴቶች ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500
                ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page13()));
                 
                },
              ),
            ),


             Card(
              elevation: 3.0,
              child: ListTile(
                tileColor: Color(0xFFF9F8FD),
                title: Text('ሴቶች 2',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0
                ),),
                subtitle: Text('በሴቶች ዙርያ የተሰጡ ፈትዋዎች',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500
                ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page14()));
                 
                },
              ),
            ),
            
         
        ],
         
      ),
    );
  }
}