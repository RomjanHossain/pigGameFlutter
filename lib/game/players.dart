import 'package:flutter/material.dart';

class Players extends StatefulWidget {
  @override
  _PlayersState createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  // var player2 = true;
  var player = true;
  void active() {
    setState(() {
      if (player) {
        var myIcon = Icon(Icons.fiber_smart_record);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 276,
      height: 276,
      // color: Colors.white,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 180,
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.pink),
              child: Center(
                  child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Player 1',
                          style: TextStyle(
                            fontSize: 29,
                          ),
                        ),
                        Icon(
                          Icons.fiber_manual_record,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Text(
                      '99',
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
                  borderRadius: BorderRadius.circular(50), color: Colors.pink),
              child: Center(
                  child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Player 2',
                          style: TextStyle(
                            fontSize: 29,
                          ),
                        ),
                        Icon(Icons.fiber_manual_record),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Text(
                      '99',
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
    );
  }
}
