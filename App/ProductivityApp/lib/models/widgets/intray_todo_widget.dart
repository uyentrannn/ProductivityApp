import 'package:ProductivityApp/models/global.dart';
import 'package:flutter/material.dart';

class IntrayToDo extends StatelessWidget {
  final String title;
  final String keyValue;
  IntrayToDo({this.keyValue, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
        key: Key(keyValue),
        margin: EdgeInsets.only(left: 5, right: 5, bottom: 10),
        padding: EdgeInsets.all(10),
        height: 100,
        decoration: BoxDecoration(
            color: coral,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              new BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10.0,
              ),
            ]),
        child: Row(
          children: <Widget>[
            Radio(),
            Column(
              children: <Widget>[
                Text(title, style: toDoTitleStyle),
              ],
            ),
          ],
        ));
  }
}
