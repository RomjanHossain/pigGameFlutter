import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: FloatingActionButton.extended(
              onPressed: () {},
              label: Text('New Game'),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Image.asset('images/dice2.png'),
              ),
            ),
            Container(
              color: Colors.red,
              child: Text('center Data'),
            ),
            Expanded(
              child: Image.asset('images/dice1.png'),
            ),
            // Text("what")
          ],
        ),
      ],
    );
  }
}
