import 'package:flutter/material.dart';
import 'package:smart_shimmer_ui/smart_shimmer_ui.dart';

/// 1. Wallet & Cards Overview Screen Skeleton
class ProFintechWalletScreen extends StatelessWidget {
  const ProFintechWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmartShimmerCircle(size: 44),
            SmartShimmerBox(width: 120, height: 18),
            SmartShimmerCircle(size: 40),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          height: 190,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFF312E81),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmartShimmerBox(width: 50, height: 30, baseColor: Colors.white24, highlightColor: Colors.white54),
              SmartShimmerBox(width: 160, height: 24, baseColor: Colors.white24, highlightColor: Colors.white54),
              SmartShimmerBox(width: 140, height: 14, baseColor: Colors.white24, highlightColor: Colors.white54),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(4, (i) => const Column(
            children: [SmartShimmerCircle(size: 48), SizedBox(height: 6), SmartShimmerBox(width: 44, height: 10)],
          )),
        ),
      ],
    );
  }
}

/// 2. Transaction Receipt Details Skeleton
class ProFintechReceiptScreen extends StatelessWidget {
  const ProFintechReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SmartShimmerCircle(size: 64),
          const SizedBox(height: 12),
          const SmartShimmerBox(width: 120, height: 24),
          const SizedBox(height: 8),
          const SmartShimmerBox(width: 80, height: 14),
          const SizedBox(height: 24),
          const Divider(),
          ...List.generate(5, (i) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SmartShimmerBox(width: 90, height: 14), SmartShimmerBox(width: 110, height: 14)],
            ),
          )),
        ],
      ),
    );
  }
}

/// 3. Transfer Money & Beneficiaries Skeleton
class ProFintechTransferScreen extends StatelessWidget {
  const ProFintechTransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SmartShimmerBox(width: 140, height: 16),
        const SizedBox(height: 12),
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (_, __) => const Column(
              children: [SmartShimmerCircle(size: 52), SizedBox(height: 6), SmartShimmerBox(width: 44, height: 10)],
            ),
          ),
        ),
        const SizedBox(height: 24),
        const SmartShimmerBox(width: 110, height: 16),
        const SizedBox(height: 12),
        const SmartShimmerBox(width: double.infinity, height: 52, borderRadius: BorderRadius.all(Radius.circular(12))),
      ],
    );
  }
}

/// 4. Monthly Spending Analytics Chart Skeleton
class ProFintechAnalyticsScreen extends StatelessWidget {
  const ProFintechAnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SmartShimmerBox(width: 130, height: 16),
          SizedBox(height: 10),
          SmartShimmerBox(width: 90, height: 26),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SmartShimmerBox(width: 24, height: 60),
              SmartShimmerBox(width: 24, height: 110),
              SmartShimmerBox(width: 24, height: 80),
              SmartShimmerBox(width: 24, height: 140),
              SmartShimmerBox(width: 24, height: 95),
              SmartShimmerBox(width: 24, height: 130),
            ],
          ),
        ],
      ),
    );
  }
}

/// 5. Crypto Portfolio & Watchlist Skeleton
class ProFintechCryptoScreen extends StatelessWidget {
  const ProFintechCryptoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 6,
      separatorBuilder: (_, __) => const Divider(height: 20),
      itemBuilder: (_, __) => const Row(
        children: [
          SmartShimmerCircle(size: 40),
          SizedBox(width: 12),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [SmartShimmerBox(width: 80, height: 14), SizedBox(height: 4), SmartShimmerBox(width: 40, height: 10)],
          )),
          SmartShimmerBox(width: 60, height: 24),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [SmartShimmerBox(width: 60, height: 14), SizedBox(height: 4), SmartShimmerBox(width: 40, height: 10)],
          ),
        ],
      ),
    );
  }
}

/// 6. Loan / EMI Calculator Skeleton
class ProFintechLoanScreen extends StatelessWidget {
  const ProFintechLoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SmartShimmerBox(width: double.infinity, height: 110, borderRadius: BorderRadius.all(Radius.circular(16))),
          SizedBox(height: 20),
          SmartShimmerBox(width: double.infinity, height: 16),
          SizedBox(height: 8),
          SmartShimmerBox(width: double.infinity, height: 8),
          SizedBox(height: 24),
          SmartShimmerBox(width: double.infinity, height: 48, borderRadius: BorderRadius.all(Radius.circular(12))),
        ],
      ),
    );
  }
}

/// 7. Bill Payment & Utility Categories Skeleton
class ProFintechBillPayScreen extends StatelessWidget {
  const ProFintechBillPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      children: List.generate(6, (i) => Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.2)), borderRadius: BorderRadius.circular(12)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SmartShimmerCircle(size: 36), SizedBox(height: 8), SmartShimmerBox(width: 50, height: 10)],
        ),
      )),
    );
  }
}

/// 8. Savings Goals & Piggy Bank Skeleton
class ProFintechSavingsScreen extends StatelessWidget {
  const ProFintechSavingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 3,
      itemBuilder: (_, __) => Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.2)), borderRadius: BorderRadius.circular(16)),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SmartShimmerBox(width: 110, height: 16), SmartShimmerBox(width: 60, height: 14)],
            ),
            SizedBox(height: 12),
            SmartShimmerBox(width: double.infinity, height: 8, borderRadius: BorderRadius.all(Radius.circular(4))),
          ],
        ),
      ),
    );
  }
}

/// 9. Bank Statement & Filter Screen Skeleton
class ProFintechStatementScreen extends StatelessWidget {
  const ProFintechStatementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Row(
          children: [
            SmartShimmerBox(width: 80, height: 32, borderRadius: BorderRadius.all(Radius.circular(20))),
            SizedBox(width: 8),
            SmartShimmerBox(width: 80, height: 32, borderRadius: BorderRadius.all(Radius.circular(20))),
            SizedBox(width: 8),
            SmartShimmerBox(width: 80, height: 32, borderRadius: BorderRadius.all(Radius.circular(20))),
          ],
        ),
        const SizedBox(height: 16),
        ...List.generate(5, (i) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 140, height: 14), SizedBox(height: 4), SmartShimmerBox(width: 80, height: 10)]),
              SmartShimmerBox(width: 60, height: 16),
            ],
          ),
        )),
      ],
    );
  }
}

/// 10. Card Settings & Security Screen Skeleton
class ProFintechCardSettingsScreen extends StatelessWidget {
  const ProFintechCardSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: List.generate(4, (i) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 150, height: 14), SizedBox(height: 4), SmartShimmerBox(width: 90, height: 10)]),
            SmartShimmerBox(width: 44, height: 24, borderRadius: BorderRadius.all(Radius.circular(12))),
          ],
        ),
      )),
    );
  }
}
