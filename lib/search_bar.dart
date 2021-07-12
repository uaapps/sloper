import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:http/http.dart' as http;
import 'package:sloper/api.pb.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SearchBar extends StatelessWidget {
  final WebSocketChannel ws;
  SearchBar(this.ws, {Key? key}) : super(key: key);
  final client = http.Client();

  @override
  Widget build(BuildContext context) => TypeAheadField<String>(
    textFieldConfiguration: TextFieldConfiguration(
      autofocus: true,
      style: DefaultTextStyle.of(context).style.copyWith(fontStyle: FontStyle.italic),
      decoration: InputDecoration(border: OutlineInputBorder())
    ),
    suggestionsCallback: (pattern) async {
      return client.readBytes(Uri.parse('http://localhost:9002/s/$pattern')).then((xs) {
        return Push.fromBuffer(xs).suggestions.xs;
      });
    },
    itemBuilder: (context, suggestion) {
      return Text(suggestion);
    },
    onSuggestionSelected: (suggestion) {
      var x = Pull(resultAsk: ResultAsk(word: suggestion)).writeToBuffer();
      ws.sink.add(x);
    },
  );
}
