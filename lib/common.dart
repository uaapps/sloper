import 'package:flutter/material.dart';

class CommonFuncs {
  static bool isMobileScreen(BuildContext context) =>
      !(MediaQuery.of(context).size.shortestSide > 400);
}
