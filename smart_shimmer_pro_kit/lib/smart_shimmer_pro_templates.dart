import 'package:flutter/material.dart';
import 'package:smart_shimmer_ui/smart_shimmer_ui.dart';
/// Live animated shimmer preview for Fintech & Banking apps.
class SmartShimmerFintechPreview extends StatelessWidget {
  /// Whether to wrap with outer container styling.
  final bool isProPreview;

  /// Creates a [SmartShimmerFintechPreview].
  const SmartShimmerFintechPreview({
    super.key,
    this.isProPreview = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Holographic Credit Card Skeleton
        Container(
          width: double.infinity,
          height: 190,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF312E81), Color(0xFF4338CA), Color(0xFF6366F1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF6366F1).withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmartShimmerBox(
                    width: 44,
                    height: 32,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    baseColor: Colors.white24,
                    highlightColor: Colors.white54,
                    wrapShimmer: true,
                  ),
                  SmartShimmerBox(
                    width: 36,
                    height: 24,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    baseColor: Colors.white24,
                    highlightColor: Colors.white54,
                    wrapShimmer: true,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmartShimmerBox(
                    width: 70,
                    height: 10,
                    baseColor: Colors.white24,
                    highlightColor: Colors.white54,
                    wrapShimmer: true,
                  ),
                  SizedBox(height: 6),
                  SmartShimmerBox(
                    width: 150,
                    height: 22,
                    baseColor: Colors.white24,
                    highlightColor: Colors.white54,
                    wrapShimmer: true,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmartShimmerBox(
                    width: 140,
                    height: 14,
                    baseColor: Colors.white24,
                    highlightColor: Colors.white54,
                    wrapShimmer: true,
                  ),
                  SmartShimmerBox(
                    width: 50,
                    height: 14,
                    baseColor: Colors.white24,
                    highlightColor: Colors.white54,
                    wrapShimmer: true,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),

        // Quick Action Buttons Skeleton
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(4, (index) {
            return const Column(
              children: [
                SmartShimmerCircle(size: 48),
                SizedBox(height: 6),
                SmartShimmerBox(width: 40, height: 10),
              ],
            );
          }),
        ),
        const SizedBox(height: 24),

        // Weekly Spending Analytics Bar Chart Shimmer
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Theme.of(context).dividerColor.withOpacity(0.1),
            ),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmartShimmerBox(width: 110, height: 14),
                  SmartShimmerBox(width: 50, height: 12),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SmartShimmerBox(width: 24, height: 40),
                  SmartShimmerBox(width: 24, height: 75),
                  SmartShimmerBox(width: 24, height: 55),
                  SmartShimmerBox(width: 24, height: 95),
                  SmartShimmerBox(width: 24, height: 60),
                  SmartShimmerBox(width: 24, height: 85),
                  SmartShimmerBox(width: 24, height: 110),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),

        // Recent Transactions Section Header
        const SmartShimmerBox(width: 130, height: 16),
        const SizedBox(height: 12),

        // Transaction Rows
        ...List.generate(3, (index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                SmartShimmerCircle(size: 42),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmartShimmerBox(width: 130, height: 14),
                      SizedBox(height: 6),
                      SmartShimmerBox(width: 80, height: 10),
                    ],
                  ),
                ),
                SmartShimmerBox(width: 55, height: 16),
              ],
            ),
          );
        }),
      ],
    );
  }
}

/// Live animated shimmer preview for E-Commerce & Retail apps.
class SmartShimmerEcommercePreview extends StatelessWidget {
  /// Creates a [SmartShimmerEcommercePreview].
  const SmartShimmerEcommercePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Product Gallery Banner
        Stack(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const SmartShimmer(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 12,
              right: 12,
              child: SmartShimmerCircle(size: 36),
            ),
            Positioned(
              bottom: 12,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (i) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    child: const SmartShimmerCircle(size: 8),
                  );
                }),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Price & Discount Row
        const Row(
          children: [
            SmartShimmerBox(width: 80, height: 22),
            SizedBox(width: 10),
            SmartShimmerBox(width: 50, height: 16),
            Spacer(),
            SmartShimmerBox(
              width: 60,
              height: 20,
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
          ],
        ),
        const SizedBox(height: 12),

        // Product Title & Rating
        const SmartShimmerBox(width: 220, height: 18),
        const SizedBox(height: 8),
        const Row(
          children: [
            SmartShimmerBox(width: 90, height: 12),
            SizedBox(width: 10),
            SmartShimmerBox(width: 60, height: 12),
          ],
        ),
        const SizedBox(height: 16),

        // Color Swatches
        const SmartShimmerBox(width: 70, height: 12),
        const SizedBox(height: 8),
        Row(
          children: List.generate(4, (index) {
            return Container(
              margin: const EdgeInsets.only(right: 10),
              child: const SmartShimmerCircle(size: 32),
            );
          }),
        ),
        const SizedBox(height: 20),

        // Description Paragraph
        const SmartShimmerText(lines: 3, lastLineWidthFactor: 0.6),
        const SizedBox(height: 24),

        // Sticky Bottom Buy Bar
        const Row(
          children: [
            Expanded(
              flex: 1,
              child: SmartShimmerBox(
                height: 48,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: SmartShimmerBox(
                height: 48,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/// Live animated shimmer preview for Food Delivery apps.
class SmartShimmerFoodDeliveryPreview extends StatelessWidget {
  /// Creates a [SmartShimmerFoodDeliveryPreview].
  const SmartShimmerFoodDeliveryPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Location & Search Bar
        const Row(
          children: [
            SmartShimmerCircle(size: 28),
            SizedBox(width: 10),
            SmartShimmerBox(width: 140, height: 14),
            Spacer(),
            SmartShimmerCircle(size: 32),
          ],
        ),
        const SizedBox(height: 14),
        const SmartShimmerBox(
          width: double.infinity,
          height: 44,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        const SizedBox(height: 20),

        // Food Categories Horizontal Scroll
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(4, (index) {
            return const Column(
              children: [
                SmartShimmerBox(
                  width: 64,
                  height: 64,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                SizedBox(height: 6),
                SmartShimmerBox(width: 48, height: 10),
              ],
            );
          }),
        ),
        const SizedBox(height: 24),

        // Featured Restaurant Banner
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Theme.of(context).dividerColor.withOpacity(0.1),
            ),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SmartShimmerBox(
                    width: double.infinity,
                    height: 140,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  Positioned(
                    bottom: 12,
                    right: 12,
                    child: SmartShimmerBox(
                      width: 70,
                      height: 24,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmartShimmerBox(width: 160, height: 16),
                        SmartShimmerBox(width: 44, height: 14),
                      ],
                    ),
                    SizedBox(height: 8),
                    SmartShimmerBox(width: 110, height: 12),
                    SizedBox(height: 12),
                    Divider(height: 1),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        SmartShimmerCircle(size: 16),
                        SizedBox(width: 6),
                        SmartShimmerBox(width: 120, height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Live animated shimmer preview for Social & Video apps.
class SmartShimmerVideoPreview extends StatelessWidget {
  /// Creates a [SmartShimmerVideoPreview].
  const SmartShimmerVideoPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Story Avatars Tray
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(5, (index) {
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF6366F1).withOpacity(0.3),
                      width: 2,
                    ),
                  ),
                  child: const SmartShimmerCircle(size: 46),
                ),
                const SizedBox(height: 6),
                const SmartShimmerBox(width: 40, height: 8),
              ],
            );
          }),
        ),
        const SizedBox(height: 20),

        // Large Video Player Skeleton
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Theme.of(context).dividerColor.withOpacity(0.1),
                ),
              ),
              child: const SmartShimmerBox(
                width: double.infinity,
                height: 280,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            // Centered Play Button Placeholder
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white24,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.play_arrow_rounded,
                size: 36,
                color: Colors.white,
              ),
            ),
            // Floating Right Actions
            const Positioned(
              right: 14,
              bottom: 20,
              child: Column(
                children: [
                  SmartShimmerCircle(size: 34),
                  SizedBox(height: 12),
                  SmartShimmerCircle(size: 34),
                  SizedBox(height: 12),
                  SmartShimmerCircle(size: 34),
                ],
              ),
            ),
            // Floating Bottom Captions
            const Positioned(
              left: 14,
              bottom: 16,
              right: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmartShimmerBox(width: 120, height: 14),
                  SizedBox(height: 6),
                  SmartShimmerText(lines: 2, lastLineWidthFactor: 0.5),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

