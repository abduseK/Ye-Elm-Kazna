// import 'package:flutter/material.dart';
// import 'package:ye_elm_kazna/constants.dart';
// import 'package:ye_elm_kazna/files/listfiles2.dart';
// import 'package:share/share.dart';
// import 'package:ye_elm_kazna/widgets/refractor_widgets.dart';

// class Page3 extends StatefulWidget {
//   @override
//   _Page3State createState() => _Page3State();
// }

// class _Page3State extends State<Page3> {
//   @override
//   int barNumber = 0;
//   int textNumber = 0;
//   int sourceNumber = 0;
//   int questionNumber = 0;

//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF9F8FD),
//       appBar: AppBar(
//         flexibleSpace: Text(
//           "\n\n\n\n\n\n            " + appTitless2[barNumber],
//           style: TextStyle(color: kBackgroundColor),
//         ),
//         backgroundColor: Color(0xFF0C9869),
//         toolbarHeight: 100.0,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20))),
//         leading: IconButton(
//           onPressed: () {
//             setState(() {
//               barNumber--;
//               textNumber--;
//               sourceNumber--;
//               questionNumber--;
//               if (barNumber < 0) {
//                 barNumber = 0;
//                 questionNumber = 0;
//                 sourceNumber = 0;
//                 textNumber = 0;
//               }
//             });
//           },
//           icon: Icon(Icons.arrow_back_ios),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Share.share(
//                 texts2[textNumber],
//               );
//             },
//             child: Icon(
//               Icons.send,
//               color: kBackgroundColor,
//             ),
//           ),
//           IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: Icon(Icons.list_sharp)),
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 barNumber++;
//                 textNumber++;
//                 sourceNumber++;
//                 questionNumber++;
//                 if (barNumber > 24) {
//                   barNumber = 24;
//                   questionNumber = 24;
//                   sourceNumber = 24;
//                   textNumber = 24;
//                 }
//               });
//             },
//             icon: Icon(Icons.arrow_forward_ios),
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20.0, top: 40.0, right: 15.0),
//           child: Column(
//             children: [
//               Card(
//                 color: kBackgroundColor,
//                 elevation: 3,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20)),
//                 child: Padding(
//                   padding: const EdgeInsets.all(18.0),
//                   child: Text(questions2[questionNumber],
//                       style: questionTextStyle),
//                 ),
//               ),
//               SizedBox(
//                 height: 40.0,
//               ),
//               Text(texts2[textNumber], style: mainTextStyle),
//               SizedBox(
//                 height: 20.0,
//               ),
//               NewCard2(sourceNumber: sourceNumber)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:ye_elm_kazna/files/listfiles2.dart';
import 'package:ye_elm_kazna/widgets/refractor_widgets.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int barNumber = 0;
  int textNumber = 0;
  int sourceNumber = 0;
  int questionNumber = 0;

  void updateNumbers(int change) {
    setState(() {
      barNumber += change;
      textNumber += change;
      sourceNumber += change;
      questionNumber += change;

      if (barNumber < 0) {
        barNumber = 0;
        textNumber = 0;
        sourceNumber = 0;
        questionNumber = 0;
      } else if (barNumber > 24) {
        barNumber = 24;
        textNumber = 24;
        sourceNumber = 24;
        questionNumber = 24;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF121212), Color(0xFF1E1E1E)], // Dark gradient
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              appTitless2[barNumber],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // White text for contrast
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () => updateNumbers(-1),
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
          actions: [
            // IconButton(
            //   onPressed: () => Share.share(texts[textNumber]),
            //   icon: Icon(Icons.send, color: Colors.white),
            // ),
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.list_sharp, color: Colors.white),
            ),
            IconButton(
              onPressed: () => updateNumbers(1),
              icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Dark background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF121212),
                  Color(0xFF1E1E1E)
                ], // Dark gradient background
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Main content
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 120.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Question Card
                  Card(
                    color: Color(0xFF2A2A2A), // Darker card background
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 2, // Minimal shadow
                    shadowColor: Colors.black.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        questions2[questionNumber],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white, // Light text for contrast
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),

                  // Main Text Content
                  Text(
                    texts2[textNumber],
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors
                          .white70, // Slightly muted white text for body content
                      height: 1.5,
                    ),
                  ),

                  SizedBox(height: 20.0),

                  // Source Card
                  Card(
                    color: Color(
                        0xFF2A2A2A), // Same dark background for consistency
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 2, // Subtle shadow
                    shadowColor: Colors.black.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: NewCard2(sourceNumber: sourceNumber),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
