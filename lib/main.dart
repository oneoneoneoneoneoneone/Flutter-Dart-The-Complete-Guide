import 'package:flutter/material.dart';
import 'package:flutter_app/home_screen.dart';

void main() {
  // home - 실행하는 ui
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter & Dart - The Complete Guide')
        ),
        body: const HomeScreen()
      ),
    ),
  );
}
 