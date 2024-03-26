// 引用 flutter 库
import 'package:flutter/material.dart';

import 'package:first_app/dice_roller.dart';

// import 'package:first_app/styled_test.dart';

// 创建开始对齐的变量,如果这个变量以后一直不会再更新的话，就用 finial 关键字声明
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// 将小组件代码块抽象出来，以便之后的重复使用; extends 表示后面要继承什么类
// StatelessWidget 用来构建无状态，不能交互的组件；要引用 StatelessWidget 这个类，必须复写 build 方法，返回值是 Widget，override是用来复写方法的装饰器
// 每一个 custom 组件中最好添加一个同名的构造函数
class GradientContainer extends StatefulWidget {

  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            // 设置渐变的颜色
            colors: widget.colors,
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center(
        // 使用垂直视图，将视图中的元素垂直排列
        child: DiceRoller()
      ),
    );
  }
}