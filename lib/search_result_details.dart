import 'package:sloper/search_word.dart';

import 'word_description.dart';
import 'word_translations.dart';
import 'word_related_phrases.dart';
import 'database/dictionary.dart';

import 'package:flutter/material.dart';

List<Widget> _renderNotFoundResult(String word) => [
      word.isEmpty
          ? Text("Спробуйте щось пошукати.")
          : Text(
              "Покищо, в нас немає нічого для слова: $word. Ми старанно працюємо над тим, щоб це виправити. 🙌"),
    ];

String _genderToString(Gender gender) {
  switch (gender) {
    case Gender.Femininum:
      return "жіночий";
    case Gender.Maskulinum:
      return "чоловічий";
    case Gender.Neutrum:
      return "середній";
  }
}

List<Widget> _renderResult(DictionaryItem dictionaryItem) => [
      WordDescription(
        word: dictionaryItem.word,
        description: "Рід: ${_genderToString(dictionaryItem.gender)}.",
      ),
      Divider(),
      WordTranslations(
        translations: dictionaryItem.translations,
      ),
      // Divider(),
      // WordRelatedPhrases(
      //   phrase: dictionaryItem.phrase,
      //   phraseTranslation: dictionaryItem.phraseTranslation,
      // ),
    ];

List<Widget> buildSearchResultDetails(SearchWord word) {
  DictionaryItem? dictionaryItem = findItem(word.searchWord);
  return dictionaryItem == null
      ? _renderNotFoundResult(word.searchWord)
      : _renderResult(dictionaryItem);
}
