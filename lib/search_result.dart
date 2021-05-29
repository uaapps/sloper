import 'package:flutter/material.dart';
import 'package:sloper/search_word.dart';
import 'package:provider/provider.dart';
import 'common.dart';
import 'search_result_details.dart';

class SearchResult extends StatelessWidget {
  Widget _buildForBigScreen(BuildContext context) => Container(
        margin: EdgeInsets.fromLTRB(60.0, 40.0, 60.0, 0.0),
        child: Consumer<SearchWord>(
          builder: (context, searchWord, child) => Column(
            children: buildSearchResultDetails(searchWord),
          ),
        ),
      );

  Widget _buildForMobileScreen(BuildContext context) => Container(
        margin: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
        child: Consumer<SearchWord>(
          builder: (context, searchWord, child) => Column(
            children: buildSearchResultDetails(searchWord),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) => CommonFuncs.isMobileScreen(context)
      ? _buildForMobileScreen(context)
      : _buildForBigScreen(context);
}
