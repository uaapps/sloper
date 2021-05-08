import 'package:flutter/material.dart';

class WordTranslations extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                child: Text(
                  "Значення",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "1. кава",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            margin: EdgeInsets.fromLTRB(60.0, 20.0, 0.0, 0.0),
          ),
        ],
      );
}
