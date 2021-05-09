import 'package:flutter/material.dart';

TextStyle _textStyle = TextStyle(
  color: Colors.blue[900],
  letterSpacing: 20.0,
);

Widget _buildTitle(String title, TextStyle textStyle) => Text(
      title,
      style: textStyle,
    );

Widget _buildDescription(String text, TextStyle textStyle) => Container(
      child: Text(
        text,
        style: textStyle,
      ),
      margin: EdgeInsets.only(top: 5.0),
    );

AppBar buildAppBar() => AppBar(
      toolbarHeight: 80.0,
      title: Column(
        children: [
          _buildTitle("Sloper", _textStyle),
          _buildDescription(
              "Словник перекладів",
              _textStyle.copyWith(
                fontSize: 14.0,
                letterSpacing: 8.0,
              )),
        ],
      ),
    );
