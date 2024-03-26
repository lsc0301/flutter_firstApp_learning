import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {

  const DiceRoller({super.key});

  // 如果是 StatefulWidget 类的小部件就不添加构造方法，而是创建 CreateState 方法
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// 需要构建一个和 StatefulWidget 配合的私有类
class _DiceRollerState extends State<DiceRoller> {

  final randomizer = Random();
  var currentDiceRoll = 2;

  // 为下面的按钮创建一个 rollDice 方法
  void rollDice() {
    // 如果想要让变量改变后的值反映到 UI 上，则需要在点击方法里面添加 setState 方法
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),

        // 添加盒子让两个小组件分割
        const SizedBox(height: 20),

        // 添加按钮组件
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28.0)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}