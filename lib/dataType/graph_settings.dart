import 'dart:ui';

class GraphSettings{
  final Color color;
  final int originAngle;
  final int maximumPercent;
  final bool percentage;
  final bool fixMaximumPercent;
  final bool displayRadius;
  final bool alignToOrigin;

  const GraphSettings({
    required this.color,
    required this.originAngle,
    required this.maximumPercent,
    required this.percentage,
    required this.fixMaximumPercent,
    required this.displayRadius,
    required this.alignToOrigin,
  });
}