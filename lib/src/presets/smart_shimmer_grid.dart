import 'package:flutter/material.dart';
import '../core/smart_shimmer.dart';
import '../core/shimmer_direction.dart';
import 'smart_shimmer_card.dart';

/// A grid view of shimmer skeleton cards (ideal for e-commerce, media galleries, etc.).
///
/// Sweeps smoothly with a single synchronized animation.
///
/// ```dart
/// SmartShimmerGrid(crossAxisCount: 2, itemCount: 6)
/// ```
class SmartShimmerGrid extends StatelessWidget {
  /// Number of columns in the grid. Defaults to 2.
  final int crossAxisCount;

  /// Aspect ratio of each grid item. Defaults to 0.75.
  final double childAspectRatio;

  /// Total count of skeleton cards.
  final int itemCount;

  /// Spacing between rows.
  final double mainAxisSpacing;

  /// Spacing between columns.
  final double crossAxisSpacing;

  /// Padding around the grid.
  final EdgeInsetsGeometry? padding;

  /// Whether the grid should shrink wrap.
  final bool shrinkWrap;

  /// Scroll physics.
  final ScrollPhysics? physics;

  /// Custom item builder. If null, renders [SmartShimmerCard.compact].
  final IndexedWidgetBuilder? itemBuilder;

  /// Custom base color override.
  final Color? baseColor;

  /// Custom highlight color override.
  final Color? highlightColor;

  /// Shimmer sweep direction.
  final ShimmerDirection? direction;

  /// Duration of one sweep cycle.
  final Duration? duration;

  /// Creates a [SmartShimmerGrid].
  const SmartShimmerGrid({
    super.key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 0.75,
    this.itemCount = 6,
    this.mainAxisSpacing = 12.0,
    this.crossAxisSpacing = 12.0,
    this.padding,
    this.shrinkWrap = false,
    this.physics,
    this.itemBuilder,
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
  });

  @override
  Widget build(BuildContext context) {
    final grid = GridView.builder(
      padding: padding,
      shrinkWrap: shrinkWrap,
      physics: physics,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
      ),
      itemBuilder: (context, index) {
        return itemBuilder?.call(context, index) ??
            const SmartShimmerCard.compact(wrapShimmer: false);
      },
    );

    return SmartShimmer(
      baseColor: baseColor,
      highlightColor: highlightColor,
      direction: direction,
      duration: duration,
      child: grid,
    );
  }
}
