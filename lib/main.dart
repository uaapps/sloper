import 'package:flutter/material.dart';
import 'package:sloper/search_result.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'navigation_bar.dart';
import 'footer.dart';
import 'search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ws = WebSocketChannel.connect(
    Uri.parse('ws://localhost:9002/ws'),
  );
  
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
          SearchBar(ws),
          SearchResult(ws),
        ],
      ),
      bottomNavigationBar: Footer(),
    ),
  );
}
