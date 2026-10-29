import 'package:flutter/material.dart';
import '../core/smart_shimmer.dart';
import '../core/shimmer_direction.dart';
import '../primitives/smart_shimmer_box.dart';
import '../primitives/smart_shimmer_circle.dart';
import '../primitives/smart_shimmer_text.dart';

/// A complete profile screen shimmer skeleton.
///
/// Includes cover image banner, overlapping avatar, username,
/// bio lines, followers/following stats row, and action buttons.
///
/// ```dart
/// SmartShimmerProfile()
/// ```
class SmartShimmerProfile extends StatelessWidget {
  /// Height of the cover banner.
  final double coverHeight;

  /// Diameter of the profile avatar.
  final double avatarSize;

  /// Padding around profile content.
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

  /// Creates a [SmartShimmerProfile].
  const SmartShimmerProfile({
    super.key,
    this.coverHeight = 140.0,
    this.avatarSize = 80.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0),
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
    this.wrapShimmer = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cover & Avatar Stack
          Stack(
            clipBehavior: Clip.none,
            children: [
              SmartShimmerBox(
                width: double.infinity,
                height: coverHeight,
                borderRadius: BorderRadius.zero,
                wrapShimmer: false,
              ),
              Positioned(
                bottom: -(avatarSize / 2),
                left: 16,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: SmartShimmerCircle(
                    size: avatarSize,
                    wrapShimmer: false,
                  ),
                ),
              ),
              Positioned(
                right: 16,
                bottom: -(avatarSize / 3),
                child: const SmartShimmerBox(
                  width: 100,
                  height: 36,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  wrapShimmer: false,
                ),
              ),
            ],
          ),
          SizedBox(height: (avatarSize / 2) + 12),

          Padding(
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name & Handle
                const SmartShimmerBox(
                  width: 160,
                  height: 20,
                  wrapShimmer: false,
                ),
                const SizedBox(height: 8),
                const SmartShimmerBox(
                  width: 100,
                  height: 14,
                  wrapShimmer: false,
                ),
                const SizedBox(height: 16),

                // Bio
                const SmartShimmerText(
                  lines: 3,
                  lineHeight: 12,
                  spacing: 6,
                  lastLineWidthFactor: 0.5,
                  wrapShimmer: false,
                ),
                const SizedBox(height: 20),

                // Stats Row (Posts, Followers, Following)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(3, (index) {
                    return Column(
                      children: const [
                        SmartShimmerBox(
                          width: 48,
                          height: 18,
                          wrapShimmer: false,
                        ),
                        SizedBox(height: 6),
                        SmartShimmerBox(
                          width: 60,
                          height: 12,
                          wrapShimmer: false,
                        ),
                      ],
                    );
                  }),
                ),
                const SizedBox(height: 24),

                // Tab bar indicator
                Row(
                  children: const [
                    Expanded(
                      child: Center(
                        child: SmartShimmerBox(
                          width: 60,
                          height: 16,
                          wrapShimmer: false,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: SmartShimmerBox(
                          width: 60,
                          height: 16,
                          wrapShimmer: false,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(height: 20),
              ],
            ),
          ),
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

