import 'package:flutter/material.dart';

class WordDescription extends StatelessWidget {
  WordDescription({required this.word, required this.description});

  final String word;
  final String description;
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                word,
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              description,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
          ),
        ],
      );
}
