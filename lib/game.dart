import 'package:flutter/material.dart';
import 'dart:math';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  Random random = new Random();
  int first = 1;
  int second = 1;
  void rollDice() {
    setState(() {
      first = random.nextInt(6) + 1;
      second = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: ListView(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: FloatingActionButton.extended(
                onPressed: () {
                  print('New Game btn pressed');
                },
                label: Text('New Game'),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$first.png'),
                ),
              ),
              Container(
                // color: Colors.white,
                width: 70,
                height: 70,
                child: Center(
                    child: Text(
                  '69',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                decoration:
                    BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$second.png'),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 200,
              width: 200,
              // color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          rollDice();
                        },
                        label: Text('Roll Dice'),
                      ),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {},
                      label: Text('Hold'),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  // shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ],
      ),
    );
  }
}
