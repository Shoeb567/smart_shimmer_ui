import 'package:flutter/material.dart';
import '../../primitives/smart_shimmer_box.dart';
import '../../primitives/smart_shimmer_circle.dart';
import '../../primitives/smart_shimmer_text.dart';

/// 11. Marketplace Home / Flash Sales
class ProEcommerceMarketplaceScreen extends StatelessWidget {
  const ProEcommerceMarketplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SmartShimmerBox(width: double.infinity, height: 44, borderRadius: BorderRadius.all(Radius.circular(12))),
        const SizedBox(height: 16),
        const SmartShimmerBox(width: double.infinity, height: 140, borderRadius: BorderRadius.all(Radius.circular(16))),
        const SizedBox(height: 20),
        const SmartShimmerBox(width: 120, height: 16),
        const SizedBox(height: 12),
        Row(
          children: const [
            Expanded(child: SmartShimmerBox(height: 180, borderRadius: BorderRadius.all(Radius.circular(12)))),
            SizedBox(width: 12),
            Expanded(child: SmartShimmerBox(height: 180, borderRadius: BorderRadius.all(Radius.circular(12)))),
          ],
        ),
      ],
    );
  }
}

/// 12. Product Details with Gallery & Swatches
class ProEcommerceDetailScreen extends StatelessWidget {
  const ProEcommerceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SmartShimmerBox(width: double.infinity, height: 220, borderRadius: BorderRadius.all(Radius.circular(16))),
        const SizedBox(height: 16),
        const SmartShimmerBox(width: 180, height: 20),
        const SizedBox(height: 8),
        const SmartShimmerBox(width: 90, height: 22),
        const SizedBox(height: 16),
        const SmartShimmerText(lines: 3),
        const SizedBox(height: 20),
        const SmartShimmerBox(width: double.infinity, height: 48, borderRadius: BorderRadius.all(Radius.circular(12))),
      ],
    );
  }
}

/// 13. Shopping Cart with Promo & Total
class ProEcommerceCartScreen extends StatelessWidget {
  const ProEcommerceCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ...List.generate(3, (i) => Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: Row(
            children: const [
              SmartShimmerBox(width: 80, height: 80, borderRadius: BorderRadius.all(Radius.circular(10))),
              SizedBox(width: 12),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [SmartShimmerBox(width: 140, height: 14), SizedBox(height: 6), SmartShimmerBox(width: 60, height: 14)],
              )),
              SmartShimmerBox(width: 70, height: 28, borderRadius: BorderRadius.all(Radius.circular(6))),
            ],
          ),
        )),
        const Divider(height: 24),
        const SmartShimmerBox(width: double.infinity, height: 48, borderRadius: BorderRadius.all(Radius.circular(12))),
      ],
    );
  }
}

/// 14. Multi-Step Checkout & Address
class ProEcommerceCheckoutScreen extends StatelessWidget {
  const ProEcommerceCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(3, (i) => const SmartShimmerCircle(size: 32)),
        ),
        const SizedBox(height: 24),
        const SmartShimmerBox(width: 130, height: 16),
        const SizedBox(height: 12),
        const SmartShimmerBox(width: double.infinity, height: 80, borderRadius: BorderRadius.all(Radius.circular(12))),
        const SizedBox(height: 20),
        const SmartShimmerBox(width: 130, height: 16),
        const SizedBox(height: 12),
        const SmartShimmerBox(width: double.infinity, height: 60, borderRadius: BorderRadius.all(Radius.circular(12))),
      ],
    );
  }
}

/// 15. Order Tracking & Delivery Status
class ProEcommerceOrderTrackingScreen extends StatelessWidget {
  const ProEcommerceOrderTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SmartShimmerBox(width: double.infinity, height: 160, borderRadius: BorderRadius.all(Radius.circular(16))),
        const SizedBox(height: 20),
        ...List.generate(4, (i) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SmartShimmerCircle(size: 20),
            const SizedBox(width: 14),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [SmartShimmerBox(width: 120, height: 14), SizedBox(height: 4), SmartShimmerBox(width: 70, height: 10), SizedBox(height: 20)],
            )),
          ],
        )),
      ],
    );
  }
}

/// 16. Wishlist / Saved Items Grid
class ProEcommerceWishlistScreen extends StatelessWidget {
  const ProEcommerceWishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 0.75,
      children: List.generate(4, (i) => Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.2)), borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: const [
            SmartShimmerBox(width: double.infinity, height: 120, borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 100, height: 12), SizedBox(height: 6), SmartShimmerBox(width: 50, height: 14)]),
            ),
          ],
        ),
      )),
    );
  }
}

/// 17. Search & Filter Results
class ProEcommerceSearchResultsScreen extends StatelessWidget {
  const ProEcommerceSearchResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: const [
            Expanded(child: SmartShimmerBox(height: 40, borderRadius: BorderRadius.all(Radius.circular(10)))),
            SizedBox(width: 10),
            SmartShimmerBox(width: 40, height: 40, borderRadius: BorderRadius.all(Radius.circular(10))),
          ],
        ),
        const SizedBox(height: 16),
        ...List.generate(4, (i) => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: const [
              SmartShimmerBox(width: 70, height: 70, borderRadius: BorderRadius.all(Radius.circular(8))),
              SizedBox(width: 12),
              Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 140, height: 14), SizedBox(height: 6), SmartShimmerBox(width: 60, height: 12)])),
            ],
          ),
        )),
      ],
    );
  }
}

/// 18. Customer Reviews & Ratings
class ProEcommerceCustomerReviewsScreen extends StatelessWidget {
  const ProEcommerceCustomerReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: const [
            SmartShimmerBox(width: 50, height: 36),
            SizedBox(width: 16),
            Expanded(child: Column(children: [SmartShimmerBox(width: double.infinity, height: 6), SizedBox(height: 4), SmartShimmerBox(width: double.infinity, height: 6)])),
          ],
        ),
        const Divider(height: 24),
        ...List.generate(3, (i) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Row(children: [SmartShimmerCircle(size: 32), SizedBox(width: 10), SmartShimmerBox(width: 90, height: 12)]),
              SizedBox(height: 8),
              SmartShimmerText(lines: 2),
            ],
          ),
        )),
      ],
    );
  }
}

/// 19. Category Taxonomy Grid
class ProEcommerceCategoriesGridScreen extends StatelessWidget {
  const ProEcommerceCategoriesGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(6, (i) => Column(
        children: const [
          SmartShimmerBox(width: 68, height: 68, borderRadius: BorderRadius.all(Radius.circular(16))),
          SizedBox(height: 6),
          SmartShimmerBox(width: 50, height: 10),
        ],
      )),
    );
  }
}

/// 20. Return / Refund Status
class ProEcommerceReturnsScreen extends StatelessWidget {
  const ProEcommerceReturnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: const [
          SmartShimmerBox(width: double.infinity, height: 90, borderRadius: BorderRadius.all(Radius.circular(14))),
          SizedBox(height: 16),
          SmartShimmerBox(width: double.infinity, height: 130, borderRadius: BorderRadius.all(Radius.circular(14))),
        ],
      ),
    );
  }
}
