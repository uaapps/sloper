import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Sloper',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.red,
                ],
              ),
            ),
            child: SearchBar(),
          ),
        ),
      );
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
  static const List<String> _kOptions = [
    "Kaffee",
    "кава",
    "Tee",
    "чай",
    "Milch",
    "молоко",
    "Bier",
    "пиво",
    "Wasser",
    "вода",
  ];

  Iterable<String> _suggestions(List<String> keyWords, String word) => keyWords
      .where((element) => element.toLowerCase().contains(word.toLowerCase()));

  Widget _buildSearchBarField(
          BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted) =>
      TextField(
        controller: textEditingController,
        focusNode: focusNode,
        decoration: InputDecoration(
          hintText: "Почніть писати слово німецькою чи українською мовою",
        ),
        style: TextStyle(
          fontSize: 18.0,
        ),
      );

  @override
  Widget build(BuildContext context) => Container(
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == "") {
              return const Iterable<String>.empty();
            }
            return _suggestions(_kOptions, textEditingValue.text);
          },
          onSelected: (String selection) => print("You've selected $selection"),
          fieldViewBuilder: _buildSearchBarField,
        ),
        margin: EdgeInsets.all(100.0),
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      );
}
