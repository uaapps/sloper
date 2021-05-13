import 'package:flutter/material.dart';
import 'package:sloper/search_word.dart';
import 'word_description.dart';
import 'word_translations.dart';
import 'word_related_phrases.dart';
import 'package:provider/provider.dart';

class SearchResult extends StatelessWidget {
  bool _showResult(SearchWord word) =>
      word.searchWord.isNotEmpty && word.searchWord.toLowerCase() == "kaffee";

  List<Widget> _renderNotFoundResult(String word) => [
        word.isEmpty
            ? Text("Спробуйте щось пошукати.")
            : Text(
                "Покищо, в нас немає нічого для слова: $word. Ми старанно працюємо над тим, щоб це виправити. 🙌"),
      ];

  List<Widget> _renderSearchResult() => [
        WordDescription(
          word: "der Kaffee",
          description: "Іменник чоловічого роду. Множини не має.",
        ),
        Divider(),
        WordTranslations(
          translation: "кава",
        ),
        Divider(),
        WordRelatedPhrases(
          phrase: "einen Kaffee, bitte.",
          phraseTranslation: "одну каву, будь ласка.",
        ),
      ];

  List<Widget> _renderResult(SearchWord word) {
    if (!_showResult(word)) return _renderNotFoundResult(word.searchWord);

    return _renderSearchResult();
  }

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.fromLTRB(60.0, 40.0, 60.0, 0.0),
        child: Consumer<SearchWord>(
          builder: (context, searchWord, child) => Column(
            children: _renderResult(searchWord),
          ),
        ),
      );
}
