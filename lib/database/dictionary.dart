//TODO: Noun
//TODO: Verb
//TODO: Adjective

enum Gender { Maskulinum, Femininum, Neutrum }

class DictionaryItem {
  String word;
  Gender gender;
  List<String> translations;

  DictionaryItem(
    this.word,
    this.gender,
    this.translations,
  );

  DictionaryItem.oneTranslation(String word, Gender gender, String translation)
      : this(word, gender, [translation]);

  DictionaryItem.maskulinumOneTranslation(String word, String translation)
      : this.oneTranslation(word, Gender.Maskulinum, translation);

  DictionaryItem.femininumOneTranslation(String word, String translation)
      : this.oneTranslation(word, Gender.Femininum, translation);

  DictionaryItem.neutrumOneTranslation(String word, String translation)
      : this.oneTranslation(word, Gender.Neutrum, translation);
}

final dictionary = {
  "kaffee": DictionaryItem.maskulinumOneTranslation(
    "der Kaffee",
    "кава",
  ),
  "tee": DictionaryItem.maskulinumOneTranslation(
    "der Tee",
    "чай",
  ),
  "wasser": DictionaryItem.neutrumOneTranslation(
    "das Wasser",
    "вода",
  ),
  "bier": DictionaryItem.neutrumOneTranslation(
    "das Bier",
    "пиво",
  ),
  "milch": DictionaryItem.femininumOneTranslation(
    "die Milch",
    "молоко",
  ),
};

DictionaryItem? findItem(String word) => dictionary[word.toLowerCase()];
