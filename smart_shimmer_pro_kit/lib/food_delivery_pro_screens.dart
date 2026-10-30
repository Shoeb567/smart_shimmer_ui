import 'package:flutter/material.dart';
import 'package:smart_shimmer_ui/smart_shimmer_ui.dart';

/// 21. Restaurant Discovery & Deals Feed
class ProFoodRestaurantDiscoveryScreen extends StatelessWidget {
  const ProFoodRestaurantDiscoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SmartShimmerBox(width: double.infinity, height: 44, borderRadius: BorderRadius.all(Radius.circular(12))),
        const SizedBox(height: 16),
        const SmartShimmerBox(width: double.infinity, height: 130, borderRadius: BorderRadius.all(Radius.circular(16))),
        const SizedBox(height: 16),
        ...List.generate(2, (i) => const Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmartShimmerBox(width: double.infinity, height: 140, borderRadius: BorderRadius.all(Radius.circular(14))),
              SizedBox(height: 8),
              SmartShimmerBox(width: 140, height: 16),
              SizedBox(height: 4),
              SmartShimmerBox(width: 90, height: 12),
            ],
          ),
        )),
      ],
    );
  }
}

/// 22. Restaurant Menu & Categories
class ProFoodRestaurantMenuScreen extends StatelessWidget {
  const ProFoodRestaurantMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SmartShimmerBox(width: double.infinity, height: 160, borderRadius: BorderRadius.all(Radius.circular(16))),
        const SizedBox(height: 16),
        const SmartShimmerBox(width: 160, height: 20),
        const SizedBox(height: 8),
        const SmartShimmerBox(width: 100, height: 12),
        const SizedBox(height: 20),
        ...List.generate(3, (i) => const Padding(
          padding: EdgeInsets.only(bottom: 14),
          child: Row(
            children: [
              Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 130, height: 14), SizedBox(height: 4), SmartShimmerBox(width: 60, height: 12)])),
              SmartShimmerBox(width: 76, height: 76, borderRadius: BorderRadius.all(Radius.circular(10))),
            ],
          ),
        )),
      ],
    );
  }
}

/// 23. Dish Customization Bottom Sheet
class ProFoodDishDetailBottomSheetScreen extends StatelessWidget {
  const ProFoodDishDetailBottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SmartShimmerBox(width: double.infinity, height: 160, borderRadius: BorderRadius.all(Radius.circular(16))),
          const SizedBox(height: 16),
          const SmartShimmerBox(width: 150, height: 18),
          const SizedBox(height: 8),
          const SmartShimmerBox(width: 60, height: 16),
          const SizedBox(height: 16),
          ...List.generate(3, (i) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SmartShimmerBox(width: 110, height: 14), SmartShimmerCircle(size: 20)],
            ),
          )),
        ],
      ),
    );
  }
}

/// 24. Food Cart & Bill Summary
class ProFoodCartSummaryScreen extends StatelessWidget {
  const ProFoodCartSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ...List.generate(2, (i) => const Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmartShimmerBox(width: 120, height: 14),
              SmartShimmerBox(width: 60, height: 26, borderRadius: BorderRadius.all(Radius.circular(6))),
              SmartShimmerBox(width: 50, height: 14),
            ],
          ),
        )),
        const Divider(height: 24),
        const SmartShimmerBox(width: double.infinity, height: 100, borderRadius: BorderRadius.all(Radius.circular(12))),
        const SizedBox(height: 20),
        const SmartShimmerBox(width: double.infinity, height: 48, borderRadius: BorderRadius.all(Radius.circular(12))),
      ],
    );
  }
}

/// 25. Live Order Tracking Map
class ProFoodLiveTrackingMapScreen extends StatelessWidget {
  const ProFoodLiveTrackingMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SmartShimmerBox(width: double.infinity, height: 260, borderRadius: BorderRadius.zero),
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmartShimmerBox(width: 130, height: 18),
              SizedBox(height: 8),
              SmartShimmerBox(width: 90, height: 12),
              SizedBox(height: 16),
              SmartShimmerBox(width: double.infinity, height: 70, borderRadius: BorderRadius.all(Radius.circular(12))),
            ],
          ),
        ),
      ],
    );
  }
}

/// 26. Order History & Reorder
class ProFoodOrderHistoryScreen extends StatelessWidget {
  const ProFoodOrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 3,
      itemBuilder: (_, __) => Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.2)), borderRadius: BorderRadius.circular(14)),
        child: const Column(
          children: [
            Row(children: [SmartShimmerCircle(size: 36), SizedBox(width: 10), Expanded(child: SmartShimmerBox(width: 120, height: 14)), SmartShimmerBox(width: 50, height: 14)]),
            Divider(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SmartShimmerBox(width: 80, height: 12), SmartShimmerBox(width: 70, height: 28, borderRadius: BorderRadius.all(Radius.circular(8)))]),
          ],
        ),
      ),
    );
  }
}

/// 27. Delivery Address Management
class ProFoodAddressManagementScreen extends StatelessWidget {
  const ProFoodAddressManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: List.generate(3, (i) => Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.2)), borderRadius: BorderRadius.circular(12)),
        child: const Row(
          children: [
            SmartShimmerCircle(size: 28),
            SizedBox(width: 12),
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 90, height: 14), SizedBox(height: 4), SmartShimmerBox(width: 160, height: 10)])),
          ],
        ),
      )),
    );
  }
}

/// 28. Driver Details & Tip Selector
class ProFoodDriverTipScreen extends StatelessWidget {
  const ProFoodDriverTipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Row(children: [SmartShimmerCircle(size: 48), SizedBox(width: 14), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 110, height: 14), SizedBox(height: 4), SmartShimmerBox(width: 60, height: 10)])]),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(4, (i) => const SmartShimmerBox(width: 60, height: 36, borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
        ],
      ),
    );
  }
}

/// 29. Cuisines & Mood Filter
class ProFoodCuisineFilterScreen extends StatelessWidget {
  const ProFoodCuisineFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(4, (i) => const SmartShimmerBox(width: double.infinity, height: 100, borderRadius: BorderRadius.all(Radius.circular(14)))),
    );
  }
}

/// 30. Restaurant Review & Feedback
class ProFoodReviewFeedbackScreen extends StatelessWidget {
  const ProFoodReviewFeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SmartShimmerCircle(size: 60),
          SizedBox(height: 14),
          SmartShimmerBox(width: 140, height: 16),
          SizedBox(height: 12),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [SmartShimmerBox(width: 120, height: 24)]),
          SizedBox(height: 20),
          SmartShimmerBox(width: double.infinity, height: 80, borderRadius: BorderRadius.all(Radius.circular(12))),
        ],
      ),
    );
  }
}
