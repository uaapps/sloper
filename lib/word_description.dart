import 'package:flutter/material.dart';

class WordDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0.0),
                child: Text(
                  "der Kaffee",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Іменник чоловічого роду. Множини не має.",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            margin: EdgeInsets.fromLTRB(60.0, 10.0, 0.0, 0.0),
          ),
        ],
      );
}
