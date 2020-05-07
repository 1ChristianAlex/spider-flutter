import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(22, 88, 176, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(3.0, 3.0),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                      ),
                    ]),
                width: 150,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                    ))),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 0),
              child: Center(
                  child: Text(
                "Hi there, \n I'm Spider-Man",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, color: Color(0xFFFFFFFF)),
              )),
            ),
            Container(
              margin: EdgeInsets.all(30),
              width: double.infinity,
              child: Center(
                  child: Text(
                'Your Friendly Neighborhood,\n Super-hero with spider power',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: SizedBox(
                width: 300,
                height: 60,
                child: FlatButton(
                  color: Color.fromRGBO(212, 43, 40, 1),
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(15),
                  splashColor: Color.fromRGBO(243, 93, 90, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Color.fromRGBO(212, 43, 40, 1))),
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "Hi, Spider-man",
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: SizedBox(
                width: 300,
                height: 60,
                child: FlatButton(
                  color: Color.fromRGBO(22, 88, 176, 1),
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(15),
                  splashColor: Color.fromRGBO(58, 151, 233, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Color.fromRGBO(22, 88, 176, 1))),
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "I already have an account".toUpperCase(),
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
