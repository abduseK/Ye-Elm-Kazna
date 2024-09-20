import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:ye_elm_kazna/files/listfiles3.dart';
import 'package:ye_elm_kazna/widgets/refractor_widgets.dart';

class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
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
              appTitless3[barNumber],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // White text for contrast
              ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xFF2A2A2A),
              child: IconButton(
                iconSize: 18,
                onPressed: () => updateNumbers(-1),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                onPressed: () => Share.share(texts3[textNumber]),
                icon: Icon(Icons.send, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.list_sharp, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Color(0xFF2A2A2A),
                child: IconButton(
                  iconSize: 18,
                  onPressed: () => updateNumbers(1),
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                ),
              ),
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
                        questions3[questionNumber],
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
                    texts3[textNumber],
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
                      child: NewCard4(sourceNumber: sourceNumber),
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
