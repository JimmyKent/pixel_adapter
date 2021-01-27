# pixel_adapter

[![pub package](https://img.shields.io/pub/v/pixel_adapter.svg)](https://pub.dev/packages/pixel_adapter)

Plugin for adapting Android and iOS screen size.

## Usage:

### Add dependency：

```yaml
dependencies:
  pixel_adapter: ^1.0.0
```

### Add import:

```dart
import 'package:pixel_adapter/pixel_adapter.dart';
```

### init:

```dart
void main() {
  PixelAdapter.initWidth(1242);
}
```
### use:	
```dart
Container(
  width: 100.px,
  height: 100.px,
  color: Colors.orange,
)
```
原理：  
​我们动态计算把UE设计稿宽度和每个屏幕的宽度相除取比例，然后把UE设计稿的尺寸动态都乘上这个比例，就得到每个屏幕的适配值。

具体实现：  
通过扩充num类(int double的父类)，将设计稿标准宽度(如1242)和真实手机屏幕宽度相除，得到缩放比例。使用的时候通过num的扩展函数 .px 算出真实值。

优缺点：  
1.使用简单、原理简单，初始化就一行。  
2.可以兼容不同设计稿，如果工程有历史原因，有些历史页面或者不同设计师没有按照规范出图，一样可以适配。  
3.使用的时候数字都要加上 .px 后缀，有人可能会感到不适。
