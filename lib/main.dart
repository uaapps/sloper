import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'footer.dart';
import 'navigation_bar.dart';
import 'search_result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Sloper',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
          ),
          dividerTheme: DividerThemeData(
            thickness: 3.0,
            color: Colors.grey[600],
            space: 50.0,
          ),
        ),
        home: Scaffold(
          appBar: buildAppBar(),
          body: ListView(
            children: [
              SearchBar(),
              SearchResult(),
            ],
          ),
          bottomNavigationBar: Footer(),
        ),
      );
}
