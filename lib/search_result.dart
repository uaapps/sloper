import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'api.pb.dart';

class SearchResult extends StatelessWidget {
  final WebSocketChannel ws;
  SearchResult(this.ws);

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
    child:
      StreamBuilder(
        stream: ws.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var xs = snapshot.data;
            if (xs is Uint8List)
              return Text(Push.fromBuffer(xs).resultOk.t);
          }
          return Container();
        },
      )
  );
}
