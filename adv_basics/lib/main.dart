import 'package:adv_basics/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: StartPage(
          Color.fromARGB(255, 92, 51, 189),
          Color.fromARGB(255, 45, 7, 98),
        ),
      ),
    ),
  );
}
