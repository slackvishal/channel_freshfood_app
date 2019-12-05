import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Reviews(),
    );
  }
}

class Reviews extends StatefulWidget {
  Reviews({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15.0, top: 50.0, bottom: 15.0),
              child: Text(
                "Breakfast becomes an occcasion when you eat waffles. No need to add fruit, syrup or powdered sugar",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15.0, top: 70.0, bottom: 15.0),
              child: Text(
                "Breakfast becomes an occcasion when you eat waffles. No need to add fruit, syrup or powdered sugar",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "+285 Reviews",
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "\$39.99",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 15.0, right: 15.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "-",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Text(
                            "3",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Text(
                            "+",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
