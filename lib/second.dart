import 'package:channel_freshfood_app/description.dart';
import 'package:channel_freshfood_app/gallery.dart';
import 'package:channel_freshfood_app/reviews.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Second(),
    );
  }
}

class Second extends StatefulWidget {
  Second({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {

  @override
  Widget build(BuildContext context) {

    double height = 300.0;

    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: TabBarView(
          children: [
            Description(),
            Gallery(),
            Reviews(),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                        ),
                        child: Hero(
                          tag: 'food',
                          child: Image.asset(
                            "assets/food2.jpg",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding:
                          const EdgeInsets.only(right: 15.0, top: 170.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 25.0,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Text(
                      "Strawberry & Grape waffle",
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star_border,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "4.6",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "Ratings",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black54),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Row(
                          children: <Widget>[
                            Image.asset(
                              "assets/discount.png",
                              height: 20.0,
                              width: 20.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "Buy 1 Get 1 Free",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          bottom: PreferredSize(
            preferredSize: Size.square(height),
            child: TabBar(
              indicatorColor: Colors.green,
              indicatorWeight: 5.0,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 16.0, letterSpacing: 0.5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "Gallery",
                    style: TextStyle(fontSize: 16.0, letterSpacing: 0.5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "Reviews",
                    style: TextStyle(fontSize: 16.0, letterSpacing: 0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

