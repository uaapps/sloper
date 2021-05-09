import 'package:flutter/material.dart';
import 'word_description.dart';
import 'word_translations.dart';
import 'word_related_phrases.dart';

class SearchResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          WordDescription(),
          Divider(),
          WordTranslations(),
          Divider(),
          WordRelatedPhrases(),
        ],
      );
}
