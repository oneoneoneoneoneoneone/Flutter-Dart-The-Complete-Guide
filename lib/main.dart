import 'package:flutter/material.dart';
import 'package:flutter_app/home_screen.dart';

void main() {
  // home - �����ϴ� ui
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
 