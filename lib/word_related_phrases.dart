import 'package:flutter/material.dart';

class WordRelatedPhrases extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                child: Text(
                  "Вирази",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "einen Kaffee, bitte.",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            margin: EdgeInsets.fromLTRB(60.0, 20.0, 0.0, 0.0),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "одну каву, будь ласка.",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            margin: EdgeInsets.fromLTRB(60.0, 10.0, 0.0, 0.0),
          ),
        ],
      );
}
