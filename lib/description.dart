import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Description(),
    );
  }
}

class Description extends StatefulWidget {
  Description({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Description"),
      ),

    );
  }
}
