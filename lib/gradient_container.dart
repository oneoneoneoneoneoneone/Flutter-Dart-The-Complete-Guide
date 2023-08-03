import 'package:flutter/material.dart';
import 'package:flutter_app/dice_roller.dart';

// const - ��Ÿ�ӽ� ���� ������� ����
// final - ��Ÿ�ӽ� ���� ���ǵ����� �ش� ������ ġȯ�� �� ���̻� ������ �� ����
const Alignment startAlignment = Alignment.topCenter;
const Alignment endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  // init
  // key - StatelessWidget���� ���� ��.
  // super() - �θ�Ŭ���� ������ ȣ�� �޼��� (=StatelessWidget)
  // const - ��Ÿ�� ���� ����ȭ Ű����, �ڵ尡 �޸𸮿� ���� �� ��, ���� �� �� �ֵ��� �Ͽ� �ߺ��� �����ϰ� �޸� ȿ���� ����, ������ �Լ��� ������ �� ���, ���ο��� ������ ������� �ʾ� �����ϰ� ������ �� �ִ� ��쿡 ����
  // required - �޼��带 ȣ���ϴ� �ʿ��� �Ķ���͸��� ����ؾ��� (�⺻������ �Ķ���� �� ����)
  const GradientContainer({super.key, required this.colors});

  // const GradientContainer.defaultGradient({super.key})
  //   : colors = [Colors.red, Colors.black, Colors.white];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
