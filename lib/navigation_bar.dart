import 'package:flutter/material.dart';

AppBar buildAppBar() => AppBar(
      toolbarHeight: 80.0,
      title: Text(
        'Sloper',
        style: TextStyle(
          color: Colors.deepPurple[800],
          letterSpacing: 20.0,
        ),
      ),
    );
