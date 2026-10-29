import 'package:flutter/material.dart';
import 'shimmer_direction.dart';
import 'smart_shimmer_theme.dart';

/// A high-performance, customizable shimmer effect widget.
///
/// Can be used as a standalone wrapper or via preset skeleton widgets.
///
/// ```dart
/// SmartShimmer(
///   child: Container(
///     width: 100,
///     height: 20,
///     decoration: BoxDecoration(
///       color: Colors.white,
///       borderRadius: BorderRadius.circular(4),
///     ),
///   ),
/// )
/// ```
class SmartShimmer extends StatefulWidget {
  /// The widget that will be masked with the shimmer effect.
  final Widget child;

  /// Base color of the shimmer skeleton.
  /// If null, resolves from [SmartShimmerTheme] or current [Theme].
  final Color? baseColor;

  /// Highlight color that sweeps across the widget.
  /// If null, resolves from [SmartShimmerTheme] or current [Theme].
  final Color? highlightColor;

  /// Duration of one shimmer sweep cycle.
  final Duration? duration;

  /// Direction of the sweep animation.
  final ShimmerDirection? direction;

  /// Whether the shimmer animation is active.
  /// Defaults to true. When false, renders child statically.
  final bool enabled;

  /// Number of times the animation will loop before stopping.
  /// Defaults to null (infinite loop).
  final int? loop;

  /// Custom gradient override. When provided, [baseColor] and [highlightColor] are ignored.
  final Gradient? gradient;

  /// Blend mode used by the shader mask.
  final BlendMode blendMode;

  /// Creates a [SmartShimmer] widget.
  const SmartShimmer({
    super.key,
    required this.child,
    this.baseColor,
    this.highlightColor,
    this.duration,
    this.direction,
    this.enabled = true,
    this.loop,
    this.gradient,
    this.blendMode = BlendMode.srcIn,
  });

  /// Drop-in compatible constructor with classic shimmer API.
  factory SmartShimmer.fromColors({
    Key? key,
    required Widget child,
    required Color baseColor,
    required Color highlightColor,
    Duration period = const Duration(milliseconds: 1500),
    ShimmerDirection direction = ShimmerDirection.leftToRight,
    int? loop,
    bool enabled = true,
    BlendMode blendMode = BlendMode.srcIn,
  }) {
    return SmartShimmer(
      key: key,
      baseColor: baseColor,
      highlightColor: highlightColor,
      duration: period,
      direction: direction,
      loop: loop,
      enabled: enabled,
      blendMode: blendMode,
      child: child,
    );
  }

  @override
  State<SmartShimmer> createState() => _SmartShimmerState();
}

class _SmartShimmerState extends State<SmartShimmer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int _currentLoop = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration ?? const Duration(milliseconds: 1500),
    );

    if (widget.loop != null) {
      _controller.addStatusListener(_onStatusChanged);
    }

    if (widget.enabled) {
      _controller.repeat();
    }
  }

  void _onStatusChanged(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _currentLoop++;
      if (widget.loop != null && _currentLoop >= widget.loop!) {
        _controller.stop();
      }
    }
  }

  @override
  void didUpdateWidget(SmartShimmer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.duration != oldWidget.duration && widget.duration != null) {
      _controller.duration = widget.duration!;
    }
    if (widget.enabled != oldWidget.enabled) {
      if (widget.enabled) {
        _currentLoop = 0;
        _controller.repeat();
      } else {
        _controller.stop();
      }
    }
  }

  @override
  void dispose() {
    _controller.removeStatusListener(_onStatusChanged);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.enabled) {
      return widget.child;
    }

    final theme = SmartShimmerTheme.of(context);
    final effectiveBaseColor = widget.baseColor ?? theme.baseColor;
    final effectiveHighlightColor =
        widget.highlightColor ?? theme.highlightColor;
    final effectiveDirection = widget.direction ?? theme.direction;

    final effectiveGradient = widget.gradient ??
        LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            effectiveBaseColor,
            effectiveHighlightColor,
            effectiveBaseColor,
          ],
          stops: const [0.35, 0.5, 0.65],
        );

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ShaderMask(
          blendMode: widget.blendMode,
          shaderCallback: (bounds) {
            final double slide = -1.0 + (_controller.value * 2.5);
            return _createSlidingGradient(
              effectiveGradient,
              bounds,
              slide,
              effectiveDirection,
            );
          },
          child: child,
        );
      },
      child: widget.child,
    );
  }

  Shader _createSlidingGradient(
    Gradient gradient,
    Rect bounds,
    double slidePercent,
    ShimmerDirection direction,
  ) {
    double dx = 0.0;
    double dy = 0.0;

    switch (direction) {
      case ShimmerDirection.leftToRight:
        dx = bounds.width * slidePercent;
        break;
      case ShimmerDirection.rightToLeft:
        dx = -bounds.width * slidePercent;
        break;
      case ShimmerDirection.topToBottom:
        dy = bounds.height * slidePercent;
        break;
      case ShimmerDirection.bottomToTop:
        dy = -bounds.height * slidePercent;
        break;
    }

    final transformMatrix = Matrix4.translationValues(dx, dy, 0.0);

    if (gradient is LinearGradient) {
      return LinearGradient(
        begin: gradient.begin,
        end: gradient.end,
        colors: gradient.colors,
        stops: gradient.stops,
        tileMode: gradient.tileMode,
        transform: _MatrixTransform(transformMatrix),
      ).createShader(bounds);
    }

    return gradient.createShader(bounds);
  }
}

class _MatrixTransform extends GradientTransform {
  final Matrix4 matrix;
  const _MatrixTransform(this.matrix);

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) => matrix;
}

