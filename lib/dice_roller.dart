import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_app/styled_text.dart';

// 터치 이벤트가 발생할 때마다 인스턴스를 생성할 필요X, 파일이 처음 실행될 때 한번만 생성
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
    // setState() - build() 재실행을 명령하는 메서드 (UI 업데이트)
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
