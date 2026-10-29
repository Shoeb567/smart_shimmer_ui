import 'package:flutter/material.dart';
import 'shimmer_direction.dart';

/// Configuration data for [SmartShimmer] and its preset widgets.
@immutable
class SmartShimmerThemeData {
  /// Base color of the shimmer skeleton.
  final Color baseColor;

  /// Highlight color of the shimmer sweep animation.
  final Color highlightColor;

  /// Duration of one shimmer animation cycle.
  final Duration duration;

  /// Direction of the shimmer animation.
  final ShimmerDirection direction;

  /// Creates shimmer theme data.
  const SmartShimmerThemeData({
    required this.baseColor,
    required this.highlightColor,
    this.duration = const Duration(milliseconds: 1500),
    this.direction = ShimmerDirection.leftToRight,
  });

  /// Default light mode theme.
  factory SmartShimmerThemeData.light({
    Color baseColor = const Color(0xFFE5E7EB),
    Color highlightColor = const Color(0xFFF9FAFB),
    Duration duration = const Duration(milliseconds: 1500),
    ShimmerDirection direction = ShimmerDirection.leftToRight,
  }) {
    return SmartShimmerThemeData(
      baseColor: baseColor,
      highlightColor: highlightColor,
      duration: duration,
      direction: direction,
    );
  }

  /// Default dark mode theme.
  factory SmartShimmerThemeData.dark({
    Color baseColor = const Color(0xFF1F2937),
    Color highlightColor = const Color(0xFF374151),
    Duration duration = const Duration(milliseconds: 1500),
    ShimmerDirection direction = ShimmerDirection.leftToRight,
  }) {
    return SmartShimmerThemeData(
      baseColor: baseColor,
      highlightColor: highlightColor,
      duration: duration,
      direction: direction,
    );
  }

  /// Copies theme with overrides.
  SmartShimmerThemeData copyWith({
    Color? baseColor,
    Color? highlightColor,
    Duration? duration,
    ShimmerDirection? direction,
  }) {
    return SmartShimmerThemeData(
      baseColor: baseColor ?? this.baseColor,
      highlightColor: highlightColor ?? this.highlightColor,
      duration: duration ?? this.duration,
      direction: direction ?? this.direction,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SmartShimmerThemeData &&
        other.baseColor == baseColor &&
        other.highlightColor == highlightColor &&
        other.duration == duration &&
        other.direction == direction;
  }

  @override
  int get hashCode => Object.hash(baseColor, highlightColor, duration, direction);
}

/// An [InheritedWidget] that provides [SmartShimmerThemeData] down the tree.
class SmartShimmerTheme extends InheritedWidget {
  /// Theme data applied to child shimmer widgets.
  final SmartShimmerThemeData data;

  /// Creates a shimmer theme scope.
  const SmartShimmerTheme({
    super.key,
    required this.data,
    required super.child,
  });

  /// Retrieves the closest [SmartShimmerThemeData] in the tree.
  /// If not found, falls back to dark or light defaults based on [Theme.of(context).brightness].
  static SmartShimmerThemeData of(BuildContext context) {
    final themeWidget =
        context.dependOnInheritedWidgetOfExactType<SmartShimmerTheme>();
    if (themeWidget != null) {
      return themeWidget.data;
    }

    final isDark = Theme.of(context).brightness == Brightness.dark;
    return isDark ? SmartShimmerThemeData.dark() : SmartShimmerThemeData.light();
  }

  @override
  bool updateShouldNotify(SmartShimmerTheme oldWidget) => data != oldWidget.data;
}

