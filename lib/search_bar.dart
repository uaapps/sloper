import 'package:flutter/material.dart';
import 'package:sloper/search_word.dart';
import 'package:provider/provider.dart';
import 'database/dictionary.dart';

class SearchBar extends StatelessWidget {
  SearchBar({Key? key}) : super(key: key);
  final List<String> _kOptions = dictionary.keys.toList();

  Iterable<String> _suggestions(List<String> keyWords, String word) => keyWords
      .where((element) => element.toLowerCase().contains(word.toLowerCase()));

  void _setSelection(BuildContext context, String word) =>
      context.read<SearchWord>().set(word);

  Widget _buildSearchBarField(
          BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted) =>
      TextField(
        onSubmitted: (String str) {
          _setSelection(context, str);
          onFieldSubmitted();
        },
        controller: textEditingController,
        focusNode: focusNode,
        decoration: InputDecoration(
          hintText: "Почніть писати слово німецькою чи українською мовою",
          border: InputBorder.none,
        ),
        style: TextStyle(
          fontSize: 18.0,
        ),
      );

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink,
              Colors.orange,
            ],
          ),
        ),
        child: Container(
          height: 48.0,
          child: Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == "") {
                return const Iterable<String>.empty();
              }
              return _suggestions(_kOptions, textEditingValue.text);
            },
            onSelected: (String selection) => _setSelection(context, selection),
            fieldViewBuilder: _buildSearchBarField,
          ),
          margin: EdgeInsets.all(80.0),
          padding: EdgeInsets.only(left: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      );
}
