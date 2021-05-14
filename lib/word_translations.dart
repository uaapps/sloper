import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class WordTranslations extends StatelessWidget {
  WordTranslations({required this.translations});

  final List<String> translations;

  List<Widget> _buildTranslations(List<String> translations) => translations
      .mapIndexed(
        (index, element) => Container(
          margin: EdgeInsets.only(bottom: 10.0),
          child: Text(
            "${index + 1}. $element",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
      .toList();

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
            child: Column(
              children: _buildTranslations(translations),
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
          ),
        ],
      );
}
