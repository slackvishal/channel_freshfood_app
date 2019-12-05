import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Gallery(),
    );
  }
}

class Gallery extends StatefulWidget {
  Gallery({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Gallery"),
      ),

    );
  }
}
