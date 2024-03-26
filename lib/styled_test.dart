// 引用 flutter 库
import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {

  // 我们可以在括号中添加该组件所接受的变量
  const StyledText(this.text, {super.key});

  // 创建类中的变量去接受构造函数传进来的参数值
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28.0),
    );
  }
}