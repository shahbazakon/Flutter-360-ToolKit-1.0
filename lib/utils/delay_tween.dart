import 'dart:math' as math show sin, pi;
import 'dart:ui';

import 'package:flutter/animation.dart';


class DelayTween extends Tween<double> {
  DelayTween({double? begin, double? end, required this.delay}) : super(begin: begin, end: end);

  final double delay;

  @override
  double lerp(double t) => super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}

class DelayTweenOffset extends Tween<Offset> {
  DelayTweenOffset({Offset? begin, Offset? end, required this.delay}) : super(begin: begin, end: end);

  final double delay;

  @override
  Offset lerp(double t) {
    return super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);
  }

  @override
  Offset evaluate(Animation<double> animation)  => lerp(animation.value);

}