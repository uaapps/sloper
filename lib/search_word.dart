import 'package:flutter/foundation.dart';

class SearchWord extends ChangeNotifier {
  String _searchWord = "";

  void set(String word) {
    _searchWord = word;
    print(">>>> $word");
    notifyListeners();
  }

  String get searchWord => _searchWord;
}
