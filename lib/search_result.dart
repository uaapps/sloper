import 'package:flutter/material.dart';
import 'package:sloper/search_word.dart';
import 'package:provider/provider.dart';
import 'search_result_details.dart';

class SearchResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.fromLTRB(60.0, 40.0, 60.0, 0.0),
        child: Consumer<SearchWord>(
          builder: (context, searchWord, child) => Column(
            children: buildSearchResultDetails(searchWord),
          ),
        ),
      );
}
