import 'package:flutter/material.dart';

class WordRelatedPhrases extends StatelessWidget {
  WordRelatedPhrases({required this.phrase, required this.phraseTranslation});
  final String phrase;
  final String phraseTranslation;
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Вирази",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              phrase,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              phraseTranslation,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
          ),
        ],
      );
}
