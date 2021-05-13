import 'package:sloper/search_word.dart';

import 'word_description.dart';
import 'word_translations.dart';
import 'word_related_phrases.dart';

import 'package:flutter/material.dart';

bool _showResult(SearchWord word) =>
    word.searchWord.isNotEmpty && word.searchWord.toLowerCase() == "kaffee";

List<Widget> _renderNotFoundResult(String word) => [
      word.isEmpty
          ? Text("Спробуйте щось пошукати.")
          : Text(
              "Покищо, в нас немає нічого для слова: $word. Ми старанно працюємо над тим, щоб це виправити. 🙌"),
    ];

List<Widget> _renderResult(String word, String wordDescription,
        String translation, String phraseOrigin, String phraseTranslation) =>
    [
      WordDescription(
        word: word,
        description: wordDescription,
      ),
      Divider(),
      WordTranslations(
        translation: translation,
      ),
      Divider(),
      WordRelatedPhrases(
        phrase: phraseOrigin,
        phraseTranslation: phraseTranslation,
      ),
    ];

List<Widget> buildSearchResultDetails(SearchWord word) => !_showResult(word)
    ? _renderNotFoundResult(word.searchWord)
    : _renderResult("der Kaffee", "Іменник чоловічого роду. Множини не має.",
        "кава", "einen Kaffee, bitte.", "одну каву, будь ласка.");
