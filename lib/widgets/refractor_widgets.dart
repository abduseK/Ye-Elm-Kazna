import 'package:flutter/material.dart';
import 'package:ye_elm_kazna/constants.dart';
import 'package:ye_elm_kazna/files/listfiles.dart';
import 'package:ye_elm_kazna/files/listfiles2.dart';
import 'package:ye_elm_kazna/files/listfiles3.dart';
import 'package:ye_elm_kazna/files/shortfiles.dart';


class NewCard extends StatelessWidget {
  const NewCard({
    required this.sourceNumber,
  });

  final int sourceNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFF2A2A2A),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.source,
              color: kPrimaryColor,),
            SizedBox(width: 20.0,),
            Expanded(
              child: Text(sources[sourceNumber],
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic
                ),),
            )
          ],
        ),
      ),
    );
  }
}


class NewCard2 extends StatelessWidget {
  const NewCard2({
   
    required this.sourceNumber,
  });

  final int sourceNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFF2A2A2A),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.source,
                color: kPrimaryColor),
            SizedBox(width: 20.0,),
            Expanded(
              child: Text(sources2[sourceNumber],
                style: TextStyle(
                    color: Color(0xFF0C9869),
                    fontStyle: FontStyle.italic
                ),),
            )
          ],
        ),
      ),
    );
  }
}


class NewCard4 extends StatelessWidget {
  const NewCard4({
    
    required this.sourceNumber,
  });

  final int sourceNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFF2A2A2A),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.source,
              color: kPrimaryColor,),
            SizedBox(width: 20.0,),
            Expanded(
              child: Text(sources3[sourceNumber],
                style: TextStyle(
                    color: Color(0xFF0C9869),
                    fontStyle: FontStyle.italic
                ),),
            )
          ],
        ),
      ),
    );
  }
}


class NewCard3 extends StatelessWidget {
  const NewCard3({
    required this.sourceNumber,
  });

  final int sourceNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFF2A2A2A),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.source,
              color: kPrimaryColor,),
            SizedBox(width: 20.0,),
            Expanded(
              child: Text(sources4[sourceNumber],
                style: TextStyle(
                    color: Color(0xFF0C9869),
                    fontStyle: FontStyle.italic
                ),),
            )
          ],
        ),
      ),
    );
  }
}

