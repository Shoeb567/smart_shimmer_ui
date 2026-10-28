import 'package:flutter/material.dart';

/// A utility widget that toggles between a shimmer skeleton and actual loaded content.
///
/// Supports smooth animated crossfade transitions.
///
/// ```dart
/// SmartShimmerBuilder(
///   isLoading: state.isLoading,
///   skeleton: SmartShimmerListTile(),
///   child: UserListTile(user: state.user),
/// )
/// ```
class SmartShimmerBuilder extends StatelessWidget {
  /// Whether content is currently loading.
  final bool isLoading;

  /// Skeleton widget displayed when [isLoading] is true.
  final Widget skeleton;

  /// Actual widget displayed when [isLoading] is false.
  final Widget child;

  /// Whether to crossfade smoothly between skeleton and child.
  /// Defaults to true.
  final bool animatedSwitch;

  /// Duration of the crossfade transition.
  final Duration switchDuration;

  /// Transition curve.
  final Curve switchCurve;

  /// Creates a [SmartShimmerBuilder].
  const SmartShimmerBuilder({
    super.key,
    required this.isLoading,
    required this.skeleton,
    required this.child,
    this.animatedSwitch = true,
    this.switchDuration = const Duration(milliseconds: 300),
    this.switchCurve = Curves.easeInOut,
  });

  @override
  Widget build(BuildContext context) {
    if (!animatedSwitch) {
      return isLoading ? skeleton : child;
    }

    return AnimatedSwitcher(
      duration: switchDuration,
      switchInCurve: switchCurve,
      switchOutCurve: switchCurve,
      child: KeyedSubtree(
        key: ValueKey<bool>(isLoading),
        child: isLoading ? skeleton : child,
      ),
    );
  }
}
