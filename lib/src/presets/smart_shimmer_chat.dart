import 'package:flutter/material.dart';
import '../core/smart_shimmer.dart';
import '../core/shimmer_direction.dart';
import '../primitives/smart_shimmer_box.dart';
import '../primitives/smart_shimmer_circle.dart';

/// A chat screen shimmer skeleton with alternating message bubbles.
///
/// Features realistic left/right chat bubbles with avatar icons.
///
/// ```dart
/// SmartShimmerChat(bubbleCount: 8)
/// ```
class SmartShimmerChat extends StatelessWidget {
  /// Number of simulated message bubbles. Defaults to 6.
  final int bubbleCount;

  /// Whether to display avatar next to received messages. Defaults to true.
  final bool showAvatar;

  /// Padding around the chat container.
  final EdgeInsetsGeometry padding;

  /// Spacing between consecutive chat bubbles.
  final double bubbleSpacing;

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

  /// Creates a [SmartShimmerChat].
  const SmartShimmerChat({
    super.key,
    this.bubbleCount = 6,
    this.showAvatar = true,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    this.bubbleSpacing = 14.0,
    this.baseColor,
    this.highlightColor,
    this.direction,
    this.duration,
    this.wrapShimmer = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.separated(
      padding: padding,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: bubbleCount,
      separatorBuilder: (context, index) => SizedBox(height: bubbleSpacing),
      itemBuilder: (context, index) {
        final bool isSender = index % 2 == 1;
        final double bubbleWidth = 140.0 + ((index * 37) % 110);

        if (isSender) {
          // Sent message (aligned right)
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SmartShimmerBox(
                width: bubbleWidth,
                height: 48,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(4),
                ),
                wrapShimmer: false,
              ),
            ],
          );
        } else {
          // Received message (aligned left)
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (showAvatar) ...[
                const SmartShimmerCircle(
                  size: 32,
                  wrapShimmer: false,
                ),
                const SizedBox(width: 8),
              ],
              SmartShimmerBox(
                width: bubbleWidth,
                height: 48,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(4),
                ),
                wrapShimmer: false,
              ),
            ],
          );
        }
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
