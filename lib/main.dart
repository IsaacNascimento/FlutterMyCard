import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade700,
          title: Center(
            child: Row(children: [Text('Dog´s'), Icon(Icons.pets)]),
          ),
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            child: MiCard(),
          ),
        ),
      ),
    );
  }
}

class LayoutChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.red,
              width: 100.0,
              child: Text(
                'Lorem ipsum molestie quam curabitur porttitor, est class cursus sed suspendisse diam.',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.yellow,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.green,
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blue,
              width: 100.0,
              height: 100.0,
            )
          ],
        ),
      ],
    );
  }
}

class MiCard extends StatelessWidget {
  const MiCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/husky.jpg'),
          ),
        ),
        Text(
          'Tunico',
          style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico'),
        ),
        Text(
          'CRAZY DOG',
          style: TextStyle(
              color: Colors.teal.shade100,
              fontSize: 15.0,
              letterSpacing: 1.8,
              fontWeight: FontWeight.bold,
              fontFamily: 'SourceSansPro'),
        ),
        Container(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.account_circle,
                size: 23.5,
                color: Colors.teal,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                '(61) 98577-7107',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0),
              )
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.email,
                size: 23.5,
                color: Colors.teal,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'isaacs.nascimento17@gmail.com',
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontSize: 18.8,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
