import 'package:flutter/material.dart';
import '../core/smart_shimmer.dart';
import '../core/shimmer_direction.dart';
import 'smart_shimmer_box.dart';

/// A realistic multi-line text skeleton placeholder.
///
/// Features customizable line count, line height, spacing, and a shorter last line.
///
/// ```dart
/// SmartShimmerText(lines: 3, lastLineWidthFactor: 0.5)
/// ```
class SmartShimmerText extends StatelessWidget {
  /// Number of text lines.
  final int lines;

  /// Height of each line bar.
  final double lineHeight;

  /// Spacing between consecutive lines.
  final double spacing;

  /// Total maximum width. If null, fills parent width.
  final double? width;

  /// Relative width factor of the final line (e.g. 0.6 for 60% width).
  final double lastLineWidthFactor;

  /// Border radius of each line pill.
  final BorderRadiusGeometry borderRadius;

  /// Text alignment alignment.
  final CrossAxisAlignment crossAxisAlignment;

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

  /// Creates a [SmartShimmerText].
  const SmartShimmerText({
    super.key,
    this.lines = 2,
    this.lineHeight = 12.0,
    this.spacing = 8.0,
    this.width,
    this.lastLineWidthFactor = 0.65,
    this.borderRadius = const BorderRadius.all(Radius.circular(6.0)),
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
    this.wrapShimmer = true,
  }) : assert(lines > 0, 'lines must be at least 1'),
       assert(
         lastLineWidthFactor > 0 && lastLineWidthFactor <= 1.0,
         'lastLineWidthFactor must be between 0 and 1.0',
       );

  @override
  Widget build(BuildContext context) {
    Widget content = LayoutBuilder(
      builder: (context, constraints) {
        final totalWidth = width ?? constraints.maxWidth;

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: crossAxisAlignment,
          children: List.generate(lines, (index) {
            final isLast = index == lines - 1;
            final isSingle = lines == 1;

            final double lineWidth = isSingle
                ? totalWidth
                : (isLast ? totalWidth * lastLineWidthFactor : totalWidth);

            return Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0.0 : spacing),
              child: SmartShimmerBox(
                width: lineWidth.isFinite ? lineWidth : 200,
                height: lineHeight,
                borderRadius: borderRadius,
                wrapShimmer: false,
              ),
            );
          }),
        );
      },
    );

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
}

