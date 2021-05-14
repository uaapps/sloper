import 'dart:convert';

enum Gender { Maskulinum, Femininum, Neutrum }

abstract class DictionaryItem {
  late String word;
  late List<String> translations;

  String description();
}

class Noun implements DictionaryItem {
  @override
  List<String> translations;

  @override
  String word;

  Gender gender;

  Noun(
    this.word,
    this.gender,
    this.translations,
  );

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

  @override
  String description() => "іменник, рід: ${_genderToString(this.gender)}.";
}

class Verb implements DictionaryItem {
  @override
  List<String> translations;

  @override
  String word;

  Verb(this.word, this.translations);

  @override
  String description() => "дієслово";
}

class Adjective implements DictionaryItem {
  @override
  List<String> translations;

  @override
  String word;

  Adjective(this.word, this.translations);

  @override
  String description() => "прикметник";
}

final dictionaryJson = '''[
  {
    "word": "der Kaffee",
    "translations": ["кава"],
    "gender": "m",
    "type": "noun"
  },
  {
    "word": "der Tee",
    "translations": ["чай"],
    "gender": "m",
    "type": "noun"
  },
  {
    "word": "die Milch",
    "translations": ["молоко"],
    "gender": "f",
    "type": "noun"
  },
  {
    "word": "das Bier",
    "translations": ["пиво"],
    "gender": "n",
    "type": "noun"
  },
  {
    "word": "schlafen",
    "translations": ["спати"],
    "type": "verb"
  },
  {
    "word": "trinken",
    "translations": ["пити"],
    "type": "verb"
  },
  {
    "word": "spannend",
    "translations": ["захопливий", "напружений", "натягнутий"],
    "type": "adj"
  },
  {
    "word": "geizig",
    "translations": ["скупий", "жадібний"],
    "type": "adj"
  }
]''';

Gender? _stringToGender(String str) {
  switch (str.toLowerCase()) {
    case "n":
      return Gender.Neutrum;
    case "f":
      return Gender.Femininum;
    case "m":
      return Gender.Maskulinum;
    default:
      return null;
  }
}

DictionaryItem? _buildDictionaryItem(dynamic data) {
  String? word = data['word'];
  List<String> translations =
      (data['translations'] as List).map((e) => e as String).toList();

  switch ((data['type'] as String).toLowerCase()) {
    case 'noun':
      Gender? gender = _stringToGender(data['gender']);
      return gender != null && word != null && translations.isNotEmpty
          ? Noun(word, gender, translations)
          : null;
    case 'verb':
      return word != null && translations.isNotEmpty
          ? Verb(word, translations)
          : null;
    case 'adj':
      return word != null && translations.isNotEmpty
          ? Adjective(word, translations)
          : null;
  }
}

Map<String, DictionaryItem> _loadDictionary(String jsonString) {
  List<dynamic> items = jsonDecode(jsonString);
  List<DictionaryItem> dictionaryItems = items
      .map(_buildDictionaryItem)
      .where((element) => element != null)
      .toList() as List<DictionaryItem>;

  Iterable<MapEntry<String, DictionaryItem>> entries =
      dictionaryItems.map((e) => MapEntry(e.word, e));

  return Map.fromEntries(entries);
}

final Map<String, DictionaryItem> dictionary = _loadDictionary(dictionaryJson);

DictionaryItem? findItem(String word) => dictionary[word];
