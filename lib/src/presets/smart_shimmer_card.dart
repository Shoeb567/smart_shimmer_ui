import 'package:flutter/material.dart';
import '../core/smart_shimmer.dart';
import '../core/shimmer_direction.dart';
import '../primitives/smart_shimmer_box.dart';
import '../primitives/smart_shimmer_text.dart';

/// Card style variations.
enum ShimmerCardType {
  /// Vertical layout with image on top, followed by content.
  vertical,

  /// Horizontal layout with image on the left, content on the right.
  horizontal,

  /// Compact card layout suitable for grids and compact tiles.
  compact,
}

/// A ready-to-use shimmer skeleton card widget.
///
/// Supports vertical, horizontal, and compact layouts.
///
/// ```dart
/// SmartShimmerCard()
/// SmartShimmerCard.horizontal()
/// ```
class SmartShimmerCard extends StatelessWidget {
  /// Card layout type.
  final ShimmerCardType type;

  /// Card width. If null, fills available horizontal space.
  final double? width;

  /// Card height.
  final double? height;

  /// Height of the banner image in [ShimmerCardType.vertical].
  final double imageHeight;

  /// Width of the image in [ShimmerCardType.horizontal] and [ShimmerCardType.compact].
  final double imageWidth;

  /// Border radius of the card container.
  final BorderRadiusGeometry borderRadius;

  /// Content padding inside the card.
  final EdgeInsetsGeometry padding;

  /// Margin around the card.
  final EdgeInsetsGeometry? margin;

  /// Background color of the card surface.
  final Color? cardColor;

  /// Elevation shadow effect.
  final double elevation;

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

  /// Creates a vertical [SmartShimmerCard].
  const SmartShimmerCard({
    super.key,
    this.type = ShimmerCardType.vertical,
    this.width,
    this.height,
    this.imageHeight = 150.0,
    this.imageWidth = 100.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(16.0)),
    this.padding = const EdgeInsets.all(16.0),
    this.margin,
    this.cardColor,
    this.elevation = 0.0,
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
    this.wrapShimmer = true,
  });

  /// Horizontal card constructor.
  const SmartShimmerCard.horizontal({
    super.key,
    this.width,
    this.height = 120.0,
    this.imageHeight = 120.0,
    this.imageWidth = 110.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(16.0)),
    this.padding = const EdgeInsets.all(12.0),
    this.margin,
    this.cardColor,
    this.elevation = 0.0,
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
    this.wrapShimmer = true,
  }) : type = ShimmerCardType.horizontal;

  /// Compact card constructor.
  const SmartShimmerCard.compact({
    super.key,
    this.width = 160.0,
    this.height = 200.0,
    this.imageHeight = 110.0,
    this.imageWidth = 160.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(12.0)),
    this.padding = const EdgeInsets.all(10.0),
    this.margin,
    this.cardColor,
    this.elevation = 0.0,
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
    this.wrapShimmer = true,
  }) : type = ShimmerCardType.compact;

  @override
  Widget build(BuildContext context) {
    Widget content;

    switch (type) {
      case ShimmerCardType.vertical:
        content = _buildVerticalCard();
        break;
      case ShimmerCardType.horizontal:
        content = _buildHorizontalCard();
        break;
      case ShimmerCardType.compact:
        content = _buildCompactCard();
        break;
    }

    if (!wrapShimmer) {
      return content;
    }

    return SmartShimmer(
      baseColor: baseColor,
      highlightColor: highlightColor,
      direction: direction,
      duration: duration,
      child: content,
    );
  }

  Widget _buildVerticalCard() {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: borderRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: borderRadius is BorderRadius
                ? BorderRadius.only(
                    topLeft: (borderRadius as BorderRadius).topLeft,
                    topRight: (borderRadius as BorderRadius).topRight,
                  )
                : BorderRadius.zero,
            child: SmartShimmerBox(
              height: imageHeight,
              width: double.infinity,
              borderRadius: BorderRadius.zero,
              wrapShimmer: false,
            ),
          ),
          Padding(
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SmartShimmerBox(
                  width: 140,
                  height: 16,
                  wrapShimmer: false,
                ),
                const SizedBox(height: 10),
                const SmartShimmerText(
                  lines: 2,
                  lastLineWidthFactor: 0.7,
                  wrapShimmer: false,
                ),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SmartShimmerBox(
                      width: 60,
                      height: 14,
                      wrapShimmer: false,
                    ),
                    SmartShimmerBox(
                      width: 80,
                      height: 28,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      wrapShimmer: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalCard() {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: borderRadius,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SmartShimmerBox(
            width: imageWidth,
            height: imageHeight,
            borderRadius: BorderRadius.circular(10.0),
            wrapShimmer: false,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SmartShimmerBox(
                  width: 130,
                  height: 16,
                  wrapShimmer: false,
                ),
                SizedBox(height: 8),
                SmartShimmerText(
                  lines: 2,
                  lastLineWidthFactor: 0.5,
                  wrapShimmer: false,
                ),
                SizedBox(height: 10),
                SmartShimmerBox(
                  width: 70,
                  height: 14,
                  wrapShimmer: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompactCard() {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: borderRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: borderRadius,
            child: SmartShimmerBox(
              width: imageWidth,
              height: imageHeight,
              borderRadius: BorderRadius.zero,
              wrapShimmer: false,
            ),
          ),
          Padding(
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SmartShimmerBox(
                  width: 100,
                  height: 14,
                  wrapShimmer: false,
                ),
                SizedBox(height: 6),
                SmartShimmerBox(
                  width: 60,
                  height: 12,
                  wrapShimmer: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

