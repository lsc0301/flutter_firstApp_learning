// 引用 flutter 库
import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

// 定义 main 函数 - void 是返回值类型
void main() {
  // app 由 runApp function 启动，主要的功能是在屏幕上显示用户的界面；container 这个组件的前面的父组件不允许有 const
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Colors.deepPurple, Colors.deepOrange]),
      ),
    ),
  );
}
