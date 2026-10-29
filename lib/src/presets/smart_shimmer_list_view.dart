import 'package:flutter/material.dart';
import '../core/smart_shimmer.dart';
import '../core/shimmer_direction.dart';
import 'smart_shimmer_list_tile.dart';

/// A scrollable or fixed list of shimmer skeleton items.
///
/// Uses a single synchronized [SmartShimmer] sweep across all items for optimal performance.
///
/// ```dart
/// SmartShimmerListView(itemCount: 8)
/// ```
class SmartShimmerListView extends StatelessWidget {
  /// Number of shimmer items.
  final int itemCount;

  /// Custom item builder. If null, renders [SmartShimmerListTile].
  final IndexedWidgetBuilder? itemBuilder;

  /// Optional separator between items.
  final Widget? separator;

  /// Whether the list view should shrink wrap its content.
  final bool shrinkWrap;

  /// Scroll physics for the list view.
  final ScrollPhysics? physics;

  /// Padding around the list.
  final EdgeInsetsGeometry? padding;

  /// Custom base color override.
  final Color? baseColor;

  /// Custom highlight color override.
  final Color? highlightColor;

  /// Shimmer sweep direction.
  final ShimmerDirection? direction;

  /// Duration of one sweep cycle.
  final Duration? duration;

  /// Creates a [SmartShimmerListView].
  const SmartShimmerListView({
    super.key,
    this.itemCount = 6,
    this.itemBuilder,
    this.separator,
    this.shrinkWrap = false,
    this.physics,
    this.padding,
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
  });

  @override
  Widget build(BuildContext context) {
    Widget list;

    if (separator != null) {
      list = ListView.separated(
        shrinkWrap: shrinkWrap,
        physics: physics,
        padding: padding,
        itemCount: itemCount,
        separatorBuilder: (context, index) => separator!,
        itemBuilder: (context, index) {
          return itemBuilder?.call(context, index) ??
              const SmartShimmerListTile(wrapShimmer: false);
        },
      );
    } else {
      list = ListView.builder(
        shrinkWrap: shrinkWrap,
        physics: physics,
        padding: padding,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return itemBuilder?.call(context, index) ??
              const SmartShimmerListTile(wrapShimmer: false);
        },
      );
    }

    return SmartShimmer(
      baseColor: baseColor,
      highlightColor: highlightColor,
      direction: direction,
      duration: duration,
      child: list,
    );
  }
}

