import 'package:flutter/material.dart';
import 'search_bar.dart';

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
          body: ListView(
            children: [
              SearchBar(),
              Center(
                child: Text("Word description"),
              ),
              Text("Translations"),
              Text("Phrases"),
            ],
          ),
        ),
      );
}
