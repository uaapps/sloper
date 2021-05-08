import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        height: 60.0,
        color: Colors.indigo[900],
        child: Center(
          child: Text(
            "Зроблено від щирого серця ❤️",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.white,
            ),
          ),
        ),
      );
}
