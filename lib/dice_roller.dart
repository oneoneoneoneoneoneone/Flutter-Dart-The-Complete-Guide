import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_app/styled_text.dart';

// ��ġ �̺�Ʈ�� �߻��� ������ �ν��Ͻ��� ������ �ʿ�X, ������ ó�� ����� �� �ѹ��� ����
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    // setState() - build() ������� ����ϴ� �޼��� (UI ������Ʈ)
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          // style: TextButton.styleFrom(
          //   padding: const EdgeInsets.only(top: 20,),
          // ),
          child: const StyledText('Roll Dice'),
        ),
      ],
    );
  }
}
