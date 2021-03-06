import 'package:flutter/material.dart';
import 'dart:math';
// import 'players.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  Random random = new Random();
  bool player = true;
  String playerOne = 'Player 1';
  String playerTwo = 'Player 2';
  bool gameOn = true;
  int first = 1;
  int second = 1;
  int countTotal = 0;
  int count = 0;
  List<int> score = [0, 0];
  void winGame() {
    setState(() {
      if (score[0] > 19) {
        print('player one wins');
        playerOne = 'WINNER';
        gameOn = false;
      }
      if (score[1] > 19) {
        print('player two wins');
        playerTwo = 'WINNER';
        gameOn = false;
      }
    });
  }

  void rollDice() {
    setState(() {
      first = random.nextInt(6) + 1;
      second = random.nextInt(6) + 1;
      if (first == second) {
        changeActive();
        countTotal = 0;
      }
      count = first + second;
      countTotal += count;
    });
  }

  void newGame() {
    setState(() {
      first = 1;
      second = 1;
      count = 0;
      countTotal = 0;
      score[0] = 0;
      score[1] = 0;
      playerOne = 'Player 1';
      playerTwo = 'Player 2';
      gameOn = true;
      if (player == false) {
        player = true;
      }
    });
  }

  void changeActive() {
    setState(() {
      if (player == true) {
        score[0] += countTotal;
        player = false;
      } else {
        score[1] += countTotal;
        print('hooo');
        player = true;
      }

      countTotal = 0;
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
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: FloatingActionButton.extended(
                onPressed: () {
                  // newGame();
                  print('holy mony');
                  newGame();
                },
                label: Text('New Game'),
              ),
            ),
          ),
          // here starts my player panel
          Container(
            width: 276,
            height: 276,
            // color: Colors.white,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 180,
                    height: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.pink),
                    child: Center(
                        child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
                          child: Row(
                            children: <Widget>[
                              Text(
                                '$playerOne',
                                style: TextStyle(
                                  fontSize: 29,
                                ),
                              ),
                              if (player == true)
                                // Text('The condition is true!'),
                                Icon(
                                  Icons.fiber_manual_record,
                                  color: Colors.white,
                                ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Text(
                            '${score[0]}',
                            style: TextStyle(fontSize: 50),
                          ),
                        ),
                      ],
                    )),
                    // color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 180,
                    height: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.pink),
                    child: Center(
                        child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
                          child: Row(
                            children: <Widget>[
                              Text(
                                '$playerTwo',
                                style: TextStyle(
                                  fontSize: 29,
                                ),
                              ),
                              if (player == false)
                                // Text('The condition is true!'),
                                Icon(
                                  Icons.fiber_manual_record,
                                  color: Colors.white,
                                ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Text(
                            '${score[1]}',
                            style: TextStyle(fontSize: 50),
                          ),
                        ),
                      ],
                    )),
                    // color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          // here stops my player panel
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/dice$first.png',
                    color: Colors.cyan,
                  ),
                ),
              ),
              Container(
                // color: Colors.white,
                width: 70,
                height: 70,
                child: Center(
                    child: Text(
                  '$countTotal',
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
                  child: Image.asset(
                    'images/dice$second.png',
                    color: Colors.cyan,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 150,
              width: 150,
              // color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          if (gameOn) {
                            rollDice();
                          }
                        },
                        label: Text(
                          'Roll Dice',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        backgroundColor: Colors.grey[50],
                      ),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        if (gameOn) {
                          changeActive();
                          winGame();
                        }
                      },
                      label: Text(
                        'Hold',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      backgroundColor: Colors.grey[50],
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ],
      ),
    );
  }
}
