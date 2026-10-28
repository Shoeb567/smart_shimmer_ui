import 'package:flutter/material.dart';
import '../core/smart_shimmer.dart';
import '../core/shimmer_direction.dart';

/// A rectangular or rounded skeleton container.
///
/// ```dart
/// SmartShimmerBox(
///   width: 120,
///   height: 24,
///   borderRadius: BorderRadius.circular(6),
/// )
/// ```
class SmartShimmerBox extends StatelessWidget {
  /// Width of the box. If null, expands to parent width.
  final double? width;

  /// Height of the box.
  final double height;

  /// Border radius of the box. Defaults to circular(8).
  final BorderRadiusGeometry borderRadius;

  /// Margin around the box.
  final EdgeInsetsGeometry? margin;

  /// Padding inside the box.
  final EdgeInsetsGeometry? padding;

  /// Box shape (rectangle or circle).
  final BoxShape shape;

  /// Custom base color override.
  final Color? baseColor;

  /// Custom highlight color override.
  final Color? highlightColor;

  /// Shimmer sweep direction.
  final ShimmerDirection? direction;

  /// Duration of one sweep cycle.
  final Duration? duration;

  /// Whether to wrap this individual widget with its own [SmartShimmer].
  /// Set to `false` when placing multiple boxes inside a parent [SmartShimmer].
  final bool wrapShimmer;

  /// Creates a [SmartShimmerBox].
  const SmartShimmerBox({
    super.key,
    this.width,
    this.height = 16.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.margin,
    this.padding,
    this.shape = BoxShape.rectangle,
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
    this.wrapShimmer = true,
  });

  @override
  Widget build(BuildContext context) {
    final box = Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: shape == BoxShape.circle ? null : borderRadius,
        shape: shape,
      ),
    );

    if (!wrapShimmer) {
      return box;
    }

    return SmartShimmer(
      baseColor: baseColor,
      highlightColor: highlightColor,
      direction: direction,
      duration: duration,
      child: box,
    );
  }
}
