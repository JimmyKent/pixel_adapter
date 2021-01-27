library pixel_adapter;


import 'dart:ui';
import 'package:flutter/material.dart';

extension PixelAdapter on num {
  static MediaQueryData _mediaQuery = MediaQueryData.fromWindow(window);

  /// 这个值是dp值, 最后还要 * pixelRatio 才对
  /// 这里不能用window.size是因为window.size获得的是px值,
  /// 最后显示的时候,WidgetsFlutterBinding#createViewConfiguration会把我们写的值乘以devicePixelRatio
  static final double _width = _mediaQuery.size.width;
  static double _ratioW;

  static void initWidth(int designWidth) {
    _ratioW = _width / designWidth;
  }

  num get px {
    assert(_ratioW != null, 'You should call initWidth first!');
    return this * _ratioW;
  }

  static void debugString() {
    print('_width: $_width, _ratioW: $_ratioW ${window.physicalSize}');
  }
}