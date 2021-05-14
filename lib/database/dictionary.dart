//TODO: Verb
//TODO: Adjective

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

  Noun.oneTranslation(String word, Gender gender, String translation)
      : this(word, gender, [translation]);

  Noun.maskulinumOneTranslation(String word, String translation)
      : this.oneTranslation(word, Gender.Maskulinum, translation);

  Noun.femininumOneTranslation(String word, String translation)
      : this.oneTranslation(word, Gender.Femininum, translation);

  Noun.neutrumOneTranslation(String word, String translation)
      : this.oneTranslation(word, Gender.Neutrum, translation);

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
  String description() => "Іменник, рід: ${_genderToString(this.gender)}.";
}

final Map<String, DictionaryItem> dictionary = {
  "kaffee": Noun.maskulinumOneTranslation(
    "der Kaffee",
    "кава",
  ),
  "tee": Noun.maskulinumOneTranslation(
    "der Tee",
    "чай",
  ),
  "wasser": Noun.neutrumOneTranslation(
    "das Wasser",
    "вода",
  ),
  "bier": Noun.neutrumOneTranslation(
    "das Bier",
    "пиво",
  ),
  "milch": Noun.femininumOneTranslation(
    "die Milch",
    "молоко",
  ),
};

DictionaryItem? findItem(String word) => dictionary[word.toLowerCase()];
