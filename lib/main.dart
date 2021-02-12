import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testGit/feature1.dart';
import 'package:testGit/feature2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Git Test',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyText1: GoogleFonts.lato(),
          bodyText2: GoogleFonts.lalezar(fontSize: 50),
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _multiplyByTwo() {
    setState(() {
      _counter = _counter * 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  child: Icon(Icons.horizontal_rule_rounded),
                ),
                FloatingActionButton(
                  onPressed: _multiplyByTwo,
                  child: Icon(Icons.cancel_sharp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
