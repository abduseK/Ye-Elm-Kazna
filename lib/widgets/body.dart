import 'package:flutter/material.dart';
import 'package:ye_elm_kazna/constants.dart';
import 'package:marquee/marquee.dart';
import 'package:ye_elm_kazna/pages/page1.dart';
import 'package:ye_elm_kazna/pages/page3.dart';
import 'package:ye_elm_kazna/pages/page4.dart';
import 'package:ye_elm_kazna/pages/page5.dart';
import 'package:ye_elm_kazna/pages/page6.dart';
import 'package:ye_elm_kazna/pages/page7.dart';
import 'package:ye_elm_kazna/pages/page8.dart';
import 'package:ye_elm_kazna/pages/page9.dart';
import 'package:ye_elm_kazna/pages/page10.dart';
import 'package:ye_elm_kazna/pages/page11.dart';
import 'package:ye_elm_kazna/pages/page12.dart';
import 'package:ye_elm_kazna/pages/page13.dart';
import 'package:ye_elm_kazna/pages/page14.dart';
import 'package:ye_elm_kazna/pages/trypage.dart';

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
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF121212),
                          Color(0xFF1E1E1E)
                        ], // Dark gradient
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0))),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: Color(0xFF2A2A2A),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50.0,
                              color: Color(0xFF2A2A2A).withOpacity(0.23))
                        ]),
                    child: Marquee(
                      text: 'የ ካዝና ማውጫ',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      scrollAxis: Axis.horizontal,
                      pauseAfterRound: Duration(seconds: 3),
                      blankSpace: 200,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
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
              tileColor: Color(0xFF121212),
              title: TitleText(
                title: "አቂዳ",
              ),
              subtitle: SubtitleText(
                subtitle: "በአቂዳ ዙርያ የተሰጡ ፈትዋዎች",
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TryPage()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: "ቢድዐ 1"),
              subtitle: SubtitleText(subtitle: "በቢድዐ እና መንሃጅ ዙርያ የተሰጡ ፈትዋዎች"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page3()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: 'ቢድዐ 2'),
              subtitle: SubtitleText(subtitle: 'በቢድዐ እና መንሃጅ ዙርያ የተሰጡ ፈትዋዎች'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page4()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: 'ሶላት 1'),
              subtitle: SubtitleText(subtitle: 'በሶላት ዙርያ የተሰጡ ፈትዋዎች'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page5()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: 'ሶላት 2'),
              subtitle: SubtitleText(subtitle: 'በሶላት ዙርያ የተሰጡ ፈትዋዎች'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page6()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: 'ጾም'),
              subtitle: SubtitleText(subtitle: 'በጾም ዙርያ የተሰጡ ፈትዋዎች'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page1()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: 'ዒድ'),
              subtitle: SubtitleText(subtitle: 'በዒድ ዙርያ የተሰጡ ፈትዋዎች'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page7()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: 'ጁሙዓ'),
              subtitle: SubtitleText(subtitle: 'በጁሙዓ ዙርያ የተሰጡ ፈትዋዎች'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page8()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: 'ዶዒፍ ሀዲሶች'),
              subtitle: SubtitleText(subtitle: 'በዶዒፍ ሀዲሶች ዙርያ የተሰጡ ፈትዋዎች'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page9()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: 'ትዳር 1'),
              subtitle: SubtitleText(subtitle: 'በትዳር ዙርያ የተሰጡ ፈትዋዎች'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page10()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: 'ትዳር 2'),
              subtitle: SubtitleText(subtitle: 'በትዳር ዙርያ የተሰጡ ፈትዋዎች'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page11()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: 'ጡሃራ'),
              subtitle: SubtitleText(subtitle: 'በጡሃራ ዙርያ የተሰጡ ፈትዋዎች'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page12()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: 'ሴቶች 1'),
              subtitle: SubtitleText(subtitle: 'በሴቶች ዙርያ የተሰጡ ፈትዋዎች'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page13()));
              },
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              tileColor: Color(0xFF121212),
              title: TitleText(title: 'ሴቶች 2'),
              subtitle: SubtitleText(subtitle: 'በሴቶች ዙርያ የተሰጡ ፈትዋዎች'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page14()));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SubtitleText extends StatelessWidget {
  const SubtitleText({
    required this.subtitle,
  });
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: TextStyle(
          color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w500),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
        fontSize: 20.0,
        //fontFamily: 'SassyFrass'
      ),
    );
  }
}
