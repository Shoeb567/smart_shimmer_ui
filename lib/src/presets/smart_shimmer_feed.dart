import 'package:flutter/material.dart';
import '../core/smart_shimmer.dart';
import '../core/shimmer_direction.dart';
import '../primitives/smart_shimmer_box.dart';
import '../primitives/smart_shimmer_circle.dart';
import '../primitives/smart_shimmer_text.dart';

/// A social media post feed card shimmer skeleton.
///
/// Includes author header with avatar, media container, action buttons,
/// likes count, and caption skeleton lines.
///
/// ```dart
/// SmartShimmerFeed()
/// ```
class SmartShimmerFeed extends StatelessWidget {
  /// Height of the media container.
  final double mediaHeight;

  /// Diameter of the author avatar.
  final double avatarSize;

  /// Content padding.
  final EdgeInsetsGeometry padding;

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

  /// Creates a [SmartShimmerFeed].
  const SmartShimmerFeed({
    super.key,
    this.mediaHeight = 260.0,
    this.avatarSize = 42.0,
    this.padding = const EdgeInsets.all(16.0),
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
    this.wrapShimmer = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Post Header
        Padding(
          padding: padding,
          child: Row(
            children: [
              SmartShimmerCircle(
                size: avatarSize,
                wrapShimmer: false,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SmartShimmerBox(
                      width: 120,
                      height: 14,
                      wrapShimmer: false,
                    ),
                    SizedBox(height: 6),
                    SmartShimmerBox(
                      width: 70,
                      height: 10,
                      wrapShimmer: false,
                    ),
                  ],
                ),
              ),
              const SmartShimmerCircle(
                size: 20,
                wrapShimmer: false,
              ),
            ],
          ),
        ),

        // Post Media Box
        SmartShimmerBox(
          width: double.infinity,
          height: mediaHeight,
          borderRadius: BorderRadius.zero,
          wrapShimmer: false,
        ),

        // Action Bar (Like, Comment, Share, Bookmark)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            children: const [
              SmartShimmerCircle(size: 24, wrapShimmer: false),
              SizedBox(width: 16),
              SmartShimmerCircle(size: 24, wrapShimmer: false),
              SizedBox(width: 16),
              SmartShimmerCircle(size: 24, wrapShimmer: false),
              Spacer(),
              SmartShimmerCircle(size: 24, wrapShimmer: false),
            ],
          ),
        ),

        // Likes & Caption
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SmartShimmerBox(
                width: 90,
                height: 12,
                wrapShimmer: false,
              ),
              SizedBox(height: 8),
              SmartShimmerText(
                lines: 2,
                lineHeight: 12,
                spacing: 6,
                lastLineWidthFactor: 0.65,
                wrapShimmer: false,
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ],
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
