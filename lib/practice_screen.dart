import 'package:flutter/material.dart';
import 'package:flutter_app/home_screen.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen(this.app, {super.key});

  final AppType app;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(app.name),
      ),
      body: app.getWidget(),
    );
  }
}
