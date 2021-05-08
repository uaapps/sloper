import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'word_description.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Sloper',
        theme: ThemeData(
          dividerTheme: DividerThemeData(
            thickness: 3.0,
            color: Colors.grey[600],
            space: 50.0,
            indent: 40.0,
            endIndent: 40.0,
          ),
        ),
        home: Scaffold(
          body: ListView(
            children: [
              SearchBar(),
              WordDescription(),
              Divider(),
              Text("Значення"),
              Divider(),
              Text("Phrases"),
            ],
          ),
        ),
      );
}
