import 'package:currency_converter/app/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppWiget());
}

class AppWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}
