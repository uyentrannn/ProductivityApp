import 'package:flutter/material.dart';
import 'package:ProductivityApp/models/global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Productivity App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Productivity App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(children: <Widget>[
              TabBarView(
                children: [
                  new Container(
                    color: mistyblue,
                  ),
                  new Container(
                    color: mistyblue,
                  ),
                  new Container(
                    color: mistyblue,
                  ),
                ],
              ),
              Container(
                height: 200,
                padding: EdgeInsets.only(left: 40),
                decoration: BoxDecoration(
                    color: ivory,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Intray",
                      style: intrayTitleStyle,
                    ),
                    Container(),
                  ],
                ),
              ),
              Container(
                // height: 70,
                width: 70,
                margin: EdgeInsets.only(top: 165, left: MediaQuery.of(context).size.width*0.5-35),
                child: FloatingActionButton(
                  child: Icon(Icons.add, size: 70,),
                  backgroundColor: coral,
                  onPressed: (){},
                ),
              ),
            ]),
            appBar: AppBar(
              elevation: 0,
              title: new TabBar(
                tabs: [
                  Tab(
                    icon: new Icon(Icons.calendar_today),
                  ),
                  Tab(
                    icon: new Icon(Icons.add_box_outlined),
                  ),
                  Tab(
                    icon: new Icon(Icons.dehaze),
                  ),
                ],
                labelColor: coral,
                unselectedLabelColor: coral,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: mistyblue,
              ),
              backgroundColor: ivory,
            ),
            backgroundColor: ivory,
          ),
        ),
      ),
    );
  }
}
