import 'package:ProductivityApp/models/global.dart';
import 'package:flutter/material.dart';

class IntrayPage extends StatefulWidget {
  IntrayPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mistyblue,
      child: ListView(
        padding: EdgeInsets.only(top: 275),
        children: getList(),
      ),
    );
  }
}

List<Widget> getList() {
  List<Container> list = [];
  for (int i = 0; i < 10; i++) {
    list.add(Container(
      height: 100,
      color: coral,
    ));
    list.add(Container(
      height: 100,
      color: ivory,
    ));
  }
  return list;
}
