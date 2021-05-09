import 'package:flutter/material.dart';

AppBar buildAppBar() => AppBar(
      toolbarHeight: 80.0,
      title: Text(
        'Sloper',
        style: TextStyle(
          color: Colors.blue[900],
          letterSpacing: 20.0,
        ),
      ),
    );
