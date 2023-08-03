import 'package:flutter/material.dart';
import 'package:flutter_app/practice_screen.dart';
import 'package:flutter_app/gradient_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 40),
          ...AppType.values.map((app) => 
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PracticeScreen(app)));
              },
              child: Text(
                app.name,
                style: const TextStyle(
                  fontSize: 26,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum AppType {
  roll_dice_app,
  quiz_app,
  expense_tracker_app,
  todo_app,
  meals_app,
  shopping_list_app,
  favorite_places_app,
}

extension AppTypeExtension on AppType {
  String get name {
    switch (this) {
      case AppType.roll_dice_app:
        return 'ROLL DICE APP';
      case AppType.quiz_app:
        return 'QUIZ APP';
      case AppType.expense_tracker_app:
        return 'EXPENSE TRACKER APP';
      case AppType.todo_app:
        return 'TODO APP';
      case AppType.meals_app:
        return 'MEALS APP';
      case AppType.shopping_list_app:
        return 'SHOPPING LIST APP';
      case AppType.favorite_places_app:
        return 'FIVORITE PLACES APP';
    }
  }

  Widget getWidget() {
    switch (this) {
      case AppType.roll_dice_app:
        return GradientContainer(
          colors: const [Colors.red, Colors.black, Colors.white],
        );
      case AppType.quiz_app:
        return Container();
      case AppType.expense_tracker_app:
        return Container();
      case AppType.todo_app:
        return Container();
      case AppType.meals_app:
        return Container();
      case AppType.shopping_list_app:
        return Container();
      case AppType.favorite_places_app:
        return Container();
    }
  }
}
