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
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('My Card'),
              SizedBox(
                width: 10.0,
              ),
              Icon(Icons.collections_bookmark_outlined)
            ]),
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
            backgroundImage: AssetImage('images/isaac.png'),
          ),
        ),
        Text(
          'Isaac Nascimento',
          style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico'),
        ),
        Text(
          'SOFTWARE DEVELOPER',
          style: TextStyle(
              color: Colors.teal.shade100,
              fontSize: 15.0,
              letterSpacing: 1.8,
              fontWeight: FontWeight.bold,
              fontFamily: 'SourceSansPro'),
        ),
        SizedBox(
          height: 20.0,
          width: 165.0,
          child: Divider(
            color: Colors.teal.shade100,
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: Padding(
            padding: const EdgeInsets.all(4.5),
            child: ListTile(
              leading: Icon(Icons.account_circle, color: Colors.teal),
              title: Text(
                '(61) 98577-7107',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0),
              ),
            ),
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
          child: Padding(
            padding: const EdgeInsets.all(4.5),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                'isaacs.nascimento17@gmail.com',
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontSize: 18.0,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
