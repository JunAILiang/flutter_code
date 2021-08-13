import 'package:flutter/material.dart';

class InheritedState extends InheritedWidget {

  /// 构造方法
  InheritedState({
    Key key,
    @required this.count,
    @required Widget child
  }): assert(count != null),
    super(key:key, child: child);

  /// 需要共享的数据
  final int count;

  /// 获取组件最近当前的InheritedWidget
  static InheritedState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedState>();
  }

  /// 通知依赖该树共享数据的子widget
  @override
  bool updateShouldNotify(covariant InheritedState oldWidget) {
    return count != oldWidget.count;
  }

}
