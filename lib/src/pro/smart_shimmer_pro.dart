import 'package:flutter/material.dart';
import 'smart_shimmer_pro_templates.dart';

/// Information about an available Pro Shimmer UI template kit.
class SmartShimmerProTemplate {
  /// Name of the template kit.
  final String title;

  /// Description of the included screens and widgets.
  final String description;

  /// Icon representing the category.
  final IconData icon;

  /// Highlight tags (e.g. 'Fintech', 'E-Commerce', '5+ Screens').
  final List<String> tags;

  /// Builder returning a live preview widget.
  final WidgetBuilder? previewBuilder;

  /// Creates a [SmartShimmerProTemplate].
  const SmartShimmerProTemplate({
    required this.title,
    required this.description,
    required this.icon,
    required this.tags,
    this.previewBuilder,
  });
}

/// Catalog of premium Pro templates available in the Smart Shimmer Pro Kit.
class SmartShimmerProCatalog {
  /// Configuration for checkout URL (e.g. Gumroad or LemonSqueezy).
  static String checkoutUrl = 'https://shoebster43.gumroad.com/l/hpsvs';

  /// List of production-ready Pro template kits.
  static final List<SmartShimmerProTemplate> templates = [
    SmartShimmerProTemplate(
      title: 'Fintech & Banking Suite',
      description:
          'Holographic credit card skeletons, wallet balance overview, weekly analytics bar charts, and transaction history.',
      icon: Icons.account_balance_wallet_rounded,
      tags: ['Fintech', 'Cards', 'Charts', '8 Screens'],
      previewBuilder: (context) => const SmartShimmerFintechPreview(),
    ),
    SmartShimmerProTemplate(
      title: 'E-Commerce & Retail Suite',
      description:
          'Product gallery hero, rating stars, color/size swatch pills, flash sale carousels, and sticky checkout bars.',
      icon: Icons.shopping_bag_rounded,
      tags: ['E-Commerce', 'Cart', 'Products', '10 Screens'],
      previewBuilder: (context) => const SmartShimmerEcommercePreview(),
    ),
    SmartShimmerProTemplate(
      title: 'Food Delivery & Restaurants',
      description:
          'Location selector, category pills, restaurant cover banners, live delivery ETA badges, and menu cards.',
      icon: Icons.restaurant_rounded,
      tags: ['Food', 'Orders', 'Tracking', '6 Screens'],
      previewBuilder: (context) => const SmartShimmerFoodDeliveryPreview(),
    ),
    SmartShimmerProTemplate(
      title: 'Social & Video Streaming',
      description:
          'Instagram-style story trays, 9:16 reels video loader, floating reactions, sound disk, and comment drawer.',
      icon: Icons.play_circle_filled_rounded,
      tags: ['Social', 'Stories', 'Video', '7 Screens'],
      previewBuilder: (context) => const SmartShimmerVideoPreview(),
    ),
    const SmartShimmerProTemplate(
      title: 'Ride-Hailing & Mobility',
      description:
          'Vehicle category selector, driver arrival ETA cards, fare estimate sheets, and live route map breakdown.',
      icon: Icons.local_taxi_rounded,
      tags: ['Mobility', 'Maps', 'ETA', '5 Screens'],
    ),
    const SmartShimmerProTemplate(
      title: 'Healthcare & Clinic Booking',
      description:
          'Doctor profiles, interactive calendar slot skeletons, prescription cards, and hospital clinic detail screens.',
      icon: Icons.medical_services_rounded,
      tags: ['Healthcare', 'Booking', 'Calendar', '6 Screens'],
    ),
  ];
}

/// A wrapper widget that presents live shimmer templates with a sleek Pro badge and unlock CTA.
class SmartShimmerProPreviewCard extends StatelessWidget {
  /// The live animated shimmer widget.
  final Widget child;

  /// Title of the template.
  final String title;

  /// Category tag or subtitle.
  final String subtitle;

  /// Accent color.
  final Color accentColor;

  /// Custom tap handler to unlock.
  final VoidCallback? onUnlockTap;

  /// Creates a [SmartShimmerProPreviewCard].
  const SmartShimmerProPreviewCard({
    super.key,
    required this.child,
    required this.title,
    required this.subtitle,
    this.accentColor = const Color(0xFF6366F1),
    this.onUnlockTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: accentColor.withOpacity(isDark ? 0.25 : 0.15),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(isDark ? 0.3 : 0.05),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Bar
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.workspace_premium_rounded,
                          color: Colors.white, size: 14),
                      SizedBox(width: 4),
                      Text(
                        'PRO TEMPLATE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  tooltip: 'Preview Options',
                  icon: const Icon(Icons.info_outline_rounded, size: 20),
                  onPressed: () => showSmartShimmerProModal(context),
                ),
              ],
            ),
          ),
          const Divider(height: 1),

          // Live Shimmer Content Preview
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: child,
          ),

          // Unlock CTA Footer Banner
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: accentColor.withOpacity(isDark ? 0.15 : 0.06),
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(22)),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.lock_rounded,
                  size: 16,
                  color: Color(0xFF6366F1),
                ),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Full Source Code & Figma Tokens available in PRO',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: onUnlockTap ??
                      () => showSmartShimmerProModal(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: accentColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Unlock',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// A ready-to-use promotional banner for Smart Shimmer Pro.
class SmartShimmerProBanner extends StatelessWidget {
  /// Optional callback when developer taps upgrade.
  final VoidCallback? onUpgradeTap;

  /// Accent color for the Pro badge and buttons.
  final Color accentColor;

  /// Creates a [SmartShimmerProBanner].
  const SmartShimmerProBanner({
    super.key,
    this.onUpgradeTap,
    this.accentColor = const Color(0xFF6366F1),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            accentColor.withOpacity(0.12),
            accentColor.withOpacity(0.04),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: accentColor.withOpacity(0.3), width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: accentColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.diamond_rounded, color: Colors.white, size: 14),
                    SizedBox(width: 4),
                    Text(
                      'SMART SHIMMER PRO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  '50+ Templates',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Text(
            'Need Complete Full-App Shimmer Skeletons?',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Preview ready-to-use screens for Fintech, E-Commerce, Food Delivery, and Social Media below. Unlock the complete source code & Figma assets for your projects.',
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade700,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: onUpgradeTap ?? () => showSmartShimmerProModal(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: accentColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 13),
                elevation: 0,
              ),
              icon: const Icon(Icons.workspace_premium_rounded, size: 18),
              label: const Text(
                'Explore Pro Kits & Licensing',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Displays the Smart Shimmer Pro checkout & feature modal bottom sheet.
void showSmartShimmerProModal(BuildContext context,
    {Color accentColor = const Color(0xFF6366F1)}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (ctx) => _ProCatalogSheet(accentColor: accentColor),
  );
}

class _ProCatalogSheet extends StatefulWidget {
  final Color accentColor;

  const _ProCatalogSheet({required this.accentColor});

  @override
  State<_ProCatalogSheet> createState() => _ProCatalogSheetState();
}

class _ProCatalogSheetState extends State<_ProCatalogSheet> {
  int _selectedTier = 0; // 0 = Single Dev ($19), 1 = Team ($49)

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      height: MediaQuery.of(context).size.height * 0.90,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Drag handle
          Center(
            child: Container(
              width: 44,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Header
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      widget.accentColor,
                      widget.accentColor.withOpacity(0.7),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.diamond_rounded,
                    color: Colors.white, size: 24),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Smart Shimmer UI PRO',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Production Source Code & Figma Design Tokens',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Pricing Selector Cards
          Row(
            children: [
              Expanded(
                child: _buildTierCard(
                  index: 0,
                  title: 'Single Dev',
                  price: '\$19',
                  inr: '₹1,500',
                  badge: 'Popular',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildTierCard(
                  index: 1,
                  title: 'Team / Agency',
                  price: '\$49',
                  inr: '₹3,999',
                  badge: 'Unlimited',
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          const Text(
            'Included in Smart Shimmer Pro:',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // Feature List
          Expanded(
            child: ListView(
              children: [
                _buildBenefitItem(
                  Icons.phone_iphone_rounded,
                  '50+ Full-Screen Flutter Skeletons',
                  'Fintech cards, E-commerce checkouts, Food delivery maps, and Social feeds.',
                ),
                _buildBenefitItem(
                  Icons.palette_rounded,
                  'Figma UI Kit & Design Tokens',
                  'Pixel-perfect Figma library matched 1:1 with Flutter shimmer components.',
                ),
                _buildBenefitItem(
                  Icons.code_rounded,
                  '100% Unlocked Source Code',
                  'Clean, null-safe Dart code ready to drop directly into your commercial apps.',
                ),
                _buildBenefitItem(
                  Icons.all_inclusive_rounded,
                  'Lifetime Access & Free Updates',
                  'Never pay monthly subscriptions. All future skeleton kits included free.',
                ),
                _buildBenefitItem(
                  Icons.support_agent_rounded,
                  'Direct Developer Support',
                  'Get rapid GitHub issue priority and private Discord/Slack assistance.',
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          // Direct Checkout Action Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: widget.accentColor,
                    content: Text(
                      'To complete purchase, open your Gumroad/LemonSqueezy link:\n${SmartShimmerProCatalog.checkoutUrl}',
                    ),
                    duration: const Duration(seconds: 4),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.accentColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 0,
              ),
              icon: const Icon(Icons.shopping_bag_rounded, size: 20),
              label: Text(
                _selectedTier == 0
                    ? 'Unlock Single License (\$19 / ₹1,500)'
                    : 'Unlock Team License (\$49 / ₹3,999)',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              'Instant Digital Delivery • 14-Day Money Back Guarantee',
              style: TextStyle(
                fontSize: 11,
                color: isDark ? Colors.grey.shade400 : Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTierCard({
    required int index,
    required String title,
    required String price,
    required String inr,
    required String badge,
  }) {
    final isSelected = _selectedTier == index;

    return GestureDetector(
      onTap: () => setState(() => _selectedTier = index),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected
              ? widget.accentColor.withOpacity(0.1)
              : Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected
                ? widget.accentColor
                : Theme.of(context).dividerColor.withOpacity(0.2),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: isSelected ? widget.accentColor : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    badge,
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white : Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  inr,
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                ),
              ],
            ),
            Text(
              'one-time payment',
              style: TextStyle(fontSize: 10, color: Colors.grey.shade500),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBenefitItem(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: widget.accentColor.withOpacity(0.12),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: widget.accentColor, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey.shade600,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
