import 'package:flutter/material.dart';

// Colour Codes
// Ivory - 0xFFF4EAE6
// Coral - 0xFFE57F84
// Misty Blue - 0xFF2F5061

void main() {
  runApp(MyApp());
}

const MaterialColor ivory = const MaterialColor(
  0xFFF4EAE6,
  const <int, Color>{
    50: const Color(0xFFF4EAE6),
    100: const Color(0xFFF4EAE6),
    200: const Color(0xFFF4EAE6),
    300: const Color(0xFFF4EAE6),
    400: const Color(0xFFF4EAE6),
    500: const Color(0xFFF4EAE6),
    600: const Color(0xFFF4EAE6),
    700: const Color(0xFFF4EAE6),
    800: const Color(0xFFF4EAE6),
    900: const Color(0xFFF4EAE6),
  },
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Productivity App',
      theme: ThemeData(
        primarySwatch: ivory,
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
                    color: const Color(0xFF2F5061),
                  ),
                  new Container(
                   color: const Color(0xFF2F5061),
                  ),
                  new Container(
                    color: const Color(0xFF2F5061),
                  ),
                ],
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: const Color(0xFFF4EAE6),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
              )
            ]),
            // appBar: TabBar(
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
                labelColor: const Color(0xFFE57F84),
                unselectedLabelColor: const Color(0xFFF4EAE6),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
              ),
            ),
            backgroundColor: const Color(0xFFF4EAE6),
          ),
        ),
      ),
    );
  }
}
