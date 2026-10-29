import 'package:flutter/material.dart';
import '../core/shimmer_direction.dart';
import 'smart_shimmer_box.dart';

/// A skeleton placeholder for images and media banners.
///
/// Supports explicit dimensions or an aspect ratio.
///
/// ```dart
/// SmartShimmerImage(
///   aspectRatio: 16 / 9,
///   borderRadius: BorderRadius.circular(12),
/// )
/// ```
class SmartShimmerImage extends StatelessWidget {
  /// Width of the image.
  final double? width;

  /// Height of the image.
  final double? height;

  /// Aspect ratio (e.g. 16/9, 4/3, 1.0).
  final double? aspectRatio;

  /// Border radius of the image.
  final BorderRadiusGeometry borderRadius;

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

  /// Creates a [SmartShimmerImage].
  const SmartShimmerImage({
    super.key,
    this.width,
    this.height,
    this.aspectRatio,
    this.borderRadius = const BorderRadius.all(Radius.circular(12.0)),
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
    this.wrapShimmer = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget imageBox = SmartShimmerBox(
      width: width,
      height: height ?? (aspectRatio != null ? double.infinity : 180.0),
      borderRadius: borderRadius,
      baseColor: baseColor,
      highlightColor: highlightColor,
      direction: direction,
      duration: duration,
      wrapShimmer: wrapShimmer,
    );

    if (aspectRatio != null) {
      return AspectRatio(
        aspectRatio: aspectRatio!,
        child: imageBox,
      );
    }

    return imageBox;
  }
}

