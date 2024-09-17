import 'package:flutter/material.dart';
import 'package:ye_elm_kazna/constants.dart';
import 'package:ye_elm_kazna/files/listfiles.dart';
import 'package:share/share.dart';
import 'package:ye_elm_kazna/widgets/refractor_widgets.dart';

class TryPage extends StatefulWidget {
  @override
  _TryPageState createState() => _TryPageState();
}

class _TryPageState extends State<TryPage> {
  int barNumber = 14;
  int textNumber = 14;
  int sourceNumber = 14;
  int questionNumber = 14;

  void updateNumbers(int change) {
    setState(() {
      barNumber += change;
      textNumber += change;
      sourceNumber += change;
      questionNumber += change;

      if (barNumber < 14) {
        barNumber = 14;
        textNumber = 14;
        sourceNumber = 14;
        questionNumber = 14;
      } else if (barNumber > 34) {
        barNumber = 34;
        textNumber = 34;
        sourceNumber = 34;
        questionNumber = 34;
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
              appTitless[barNumber],
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
                colors: [Color(0xFF121212), Color(0xFF1E1E1E)], // Dark gradient background
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Main content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 120.0),
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
                        questions[questionNumber],
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
                    texts[textNumber],
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70, // Slightly muted white text for body content
                      height: 1.5,
                    ),
                  ),
                  
                  SizedBox(height: 20.0),
                  
                  // Source Card
                  Card(
                    color: Color(0xFF2A2A2A), // Same dark background for consistency
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 2, // Subtle shadow
                    shadowColor: Colors.black.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: NewCard(sourceNumber: sourceNumber),
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
