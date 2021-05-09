import 'package:flutter/material.dart';

class WordTranslations extends StatelessWidget {
  WordTranslations({required this.translation});

  final String translation;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Значення",
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
              "1. $translation",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
          ),
        ],
      );
}
