import 'package:flutter/material.dart';
import '../core/shimmer_direction.dart';
import 'smart_shimmer_box.dart';

/// A circular skeleton avatar or icon placeholder.
///
/// ```dart
/// SmartShimmerCircle(size: 56)
/// ```
class SmartShimmerCircle extends StatelessWidget {
  /// Diameter of the circle.
  final double size;

  /// Margin around the circle.
  final EdgeInsetsGeometry? margin;

  /// Custom base color override.
  final Color? baseColor;

  /// Custom highlight color override.
  final Color? highlightColor;

  /// Shimmer sweep direction.
  final ShimmerDirection? direction;

  /// Duration of one sweep cycle.
  final Duration? duration;

  /// Whether to wrap this widget with its own [SmartShimmer].
  final bool wrapShimmer;

  /// Creates a [SmartShimmerCircle].
  const SmartShimmerCircle({
    super.key,
    this.size = 48.0,
    this.margin,
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
    this.wrapShimmer = true,
  });

  @override
  Widget build(BuildContext context) {
    return SmartShimmerBox(
      width: size,
      height: size,
      shape: BoxShape.circle,
      margin: margin,
      baseColor: baseColor,
      highlightColor: highlightColor,
      direction: direction,
      duration: duration,
      wrapShimmer: wrapShimmer,
    );
  }
}

