import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyPortfolio());

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: const EdgeInsets.all(20),
        child: Row(children: <Widget>[
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Cecilia Ramirez',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white)),
            ],
          ))
        ]));
    return MaterialApp(
      title: 'Cecilia Portfolio',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Portfolio', style: TextStyle(fontSize: 30)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(40),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/self.jpg',
                ),
              ),
            ),
            titleSection,
            Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                  child: Center(
                      child: new Text(
                          'Reskill Americans student in the process of learning Flutter.',
                          style: new TextStyle(
                              color: Colors.white, fontSize: 20, )))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          child: new Icon(Icons.phone_android,
                              color: Colors.amber, size: 40))),
                  Expanded(
                      child: Container(
                          child: new Icon(Icons.mail_outline_rounded,
                              color: Colors.amber, size: 40))),
                  Expanded(
                      child: Container(
                          child: new Icon(Icons.location_city_rounded,
                              color: Colors.amber, size: 40))),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.indigo[900],
      ),
    );
  }
}
