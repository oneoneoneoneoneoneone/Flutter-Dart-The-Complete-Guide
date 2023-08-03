import 'package:flutter/material.dart';
import 'package:flutter_app/dice_roller.dart';

// const - 런타임시 값이 변경되지 않음
// final - 런타임시 값이 정의되지만 해당 변수에 치환된 후 더이상 변경할 수 없음
const Alignment startAlignment = Alignment.topCenter;
const Alignment endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  // init
  // key - StatelessWidget으로 전달 됨.
  // super() - 부모클래스 생성자 호출 메서드 (=StatelessWidget)
  // const - 런타임 성능 최적화 키워드, 코드가 메모리에 저장 될 때, 재사용 할 수 있도록 하여 중복을 방지하고 메모리 효율을 높임, 생성자 함수를 정의할 때 사용, 내부에서 변수를 사용하지 않아 안전하게 재사용할 수 있는 경우에 사용됨
  // required - 메서드를 호출하는 쪽에서 파라메터명을 명시해야함 (기본적으로 파라메터 명 숨김)
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
