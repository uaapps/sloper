import 'package:flutter/material.dart';
import 'word_description.dart';
import 'word_translations.dart';
import 'word_related_phrases.dart';

class SearchResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.fromLTRB(60.0, 40.0, 60.0, 0.0),
        child: Column(
          children: [
            WordDescription(
              word: "der Kaffee",
              description: "Іменник чоловічого роду. Множини не має.",
            ),
            Divider(),
            WordTranslations(
              translation: "кава",
            ),
            Divider(),
            WordRelatedPhrases(),
          ],
        ),
      );
}
