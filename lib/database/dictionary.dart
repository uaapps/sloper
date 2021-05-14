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
      : word = word,
        gender = gender,
        translations = [translation];
}

final dictionary = {
  "kaffee": DictionaryItem.oneTranslation(
    "der Kaffee",
    Gender.Maskulinum,
    "кава",
  ),
  "tee": DictionaryItem.oneTranslation(
    "der Tee",
    Gender.Femininum,
    "чай",
  ),
  "wasser": DictionaryItem.oneTranslation(
    "das Wasser",
    Gender.Neutrum,
    "вода",
  ),
  "bier": DictionaryItem.oneTranslation(
    "das Bier",
    Gender.Neutrum,
    "пиво",
  ),
  "milch": DictionaryItem.oneTranslation(
    "die Milch",
    Gender.Femininum,
    "молоко",
  ),
};

DictionaryItem? findItem(String word) => dictionary[word.toLowerCase()];
