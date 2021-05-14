//TODO: Noun
//TODO: Verb
//TODO: Adjective

enum Gender { Maskulinum, Femininum, Neutrum }

class DictionaryItem {
  String word;
  Gender gender;
  String translation; // TODO: mk List

  DictionaryItem(
    this.word,
    this.gender,
    this.translation,
  );
}

final dictionary = {
  "kaffee": DictionaryItem(
    "der Kaffee",
    Gender.Maskulinum,
    "кава",
  ),
  "tee": DictionaryItem(
    "der Tee",
    Gender.Femininum,
    "чай",
  ),
  "wasser": DictionaryItem(
    "das Wasser",
    Gender.Neutrum,
    "вода",
  ),
  "bier": DictionaryItem(
    "das Bier",
    Gender.Neutrum,
    "пиво",
  ),
  "milch": DictionaryItem(
    "die Milch",
    Gender.Femininum,
    "молоко",
  ),
};

DictionaryItem? findItem(String word) => dictionary[word.toLowerCase()];
