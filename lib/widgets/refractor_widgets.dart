import 'package:flutter/material.dart';
import 'package:try_app/widgets/constants.dart';
import 'package:try_app/files/listfiles.dart';
import 'package:try_app/files/listfiles2.dart';
import 'package:try_app/files/listfiles3.dart';
import 'package:try_app/files/shortfiles.dart';


class NewCard extends StatelessWidget {
  const NewCard({
    Key key,
    @required this.sourceNumber,
  }) : super(key: key);

  final int sourceNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
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
              child: Text(sources[sourceNumber],
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


class NewCard2 extends StatelessWidget {
  const NewCard2({
    Key key,
    @required this.sourceNumber,
  }) : super(key: key);

  final int sourceNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    Key key,
    @required this.sourceNumber,
  }) : super(key: key);

  final int sourceNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    Key key,
    @required this.sourceNumber,
  }) : super(key: key);

  final int sourceNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
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

