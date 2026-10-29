import 'package:flutter/material.dart';
import '../core/smart_shimmer.dart';
import '../core/shimmer_direction.dart';
import '../primitives/smart_shimmer_box.dart';
import '../primitives/smart_shimmer_circle.dart';
import '../primitives/smart_shimmer_text.dart';

/// A ready-to-use shimmer skeleton for list items.
///
/// Features a leading avatar, multiple title/subtitle text lines,
/// and an optional trailing widget.
///
/// ```dart
/// SmartShimmerListTile()
/// ```
class SmartShimmerListTile extends StatelessWidget {
  /// Whether to display the leading avatar.
  final bool showAvatar;

  /// Leading avatar size (diameter).
  final double avatarSize;

  /// Shape of the leading widget (circle or rounded rectangle).
  final BoxShape avatarShape;

  /// Border radius for rectangle avatar.
  final BorderRadiusGeometry avatarBorderRadius;

  /// Number of text lines. Defaults to 2.
  final int lines;

  /// Height of title/text lines.
  final double lineHeight;

  /// Spacing between text lines.
  final double lineSpacing;

  /// Relative width factor of the last text line.
  final double lastLineWidthFactor;

  /// Whether to display a trailing placeholder box.
  final bool showTrailing;

  /// Width of the trailing placeholder box.
  final double trailingWidth;

  /// Height of the trailing placeholder box.
  final double trailingHeight;

  /// Padding around the list tile.
  final EdgeInsetsGeometry contentPadding;

  /// Spacing between the avatar and text.
  final double spacing;

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

  /// Creates a [SmartShimmerListTile].
  const SmartShimmerListTile({
    super.key,
    this.showAvatar = true,
    this.avatarSize = 48.0,
    this.avatarShape = BoxShape.circle,
    this.avatarBorderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.lines = 2,
    this.lineHeight = 12.0,
    this.lineSpacing = 8.0,
    this.lastLineWidthFactor = 0.6,
    this.showTrailing = false,
    this.trailingWidth = 24.0,
    this.trailingHeight = 24.0,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    this.spacing = 16.0,
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
    this.wrapShimmer = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = Padding(
      padding: contentPadding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (showAvatar) ...[
            if (avatarShape == BoxShape.circle)
              SmartShimmerCircle(
                size: avatarSize,
                wrapShimmer: false,
              )
            else
              SmartShimmerBox(
                width: avatarSize,
                height: avatarSize,
                borderRadius: avatarBorderRadius,
                wrapShimmer: false,
              ),
            SizedBox(width: spacing),
          ],
          Expanded(
            child: SmartShimmerText(
              lines: lines,
              lineHeight: lineHeight,
              spacing: lineSpacing,
              lastLineWidthFactor: lastLineWidthFactor,
              wrapShimmer: false,
            ),
          ),
          if (showTrailing) ...[
            SizedBox(width: spacing),
            SmartShimmerBox(
              width: trailingWidth,
              height: trailingHeight,
              borderRadius: BorderRadius.circular(6.0),
              wrapShimmer: false,
            ),
          ],
        ],
      ),
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

