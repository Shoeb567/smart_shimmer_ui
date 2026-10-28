import 'package:flutter/material.dart';

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

  /// Creates a [SmartShimmerProTemplate].
  const SmartShimmerProTemplate({
    required this.title,
    required this.description,
    required this.icon,
    required this.tags,
  });
}

/// Catalog of premium Pro templates available in the Smart Shimmer Pro Kit.
class SmartShimmerProCatalog {
  /// List of production-ready Pro template kits.
  static const List<SmartShimmerProTemplate> templates = [
    SmartShimmerProTemplate(
      title: 'Fintech & Banking Kit',
      description:
          'Credit card skeletons, account balances, transaction history with receipts, and analytical chart bar shimmers.',
      icon: Icons.account_balance_wallet_rounded,
      tags: ['Fintech', 'Cards', 'Charts', '8 Screens'],
    ),
    SmartShimmerProTemplate(
      title: 'E-Commerce & Retail Kit',
      description:
          'Flash sale carousel, product detail pages, animated cart items, and multi-step checkout skeletons.',
      icon: Icons.shopping_bag_rounded,
      tags: ['E-Commerce', 'Cart', 'Products', '10 Screens'],
    ),
    SmartShimmerProTemplate(
      title: 'Food Delivery & Restaurants',
      description:
          'Restaurant listing, menu category pills, live order tracking map placeholder, and chef review skeletons.',
      icon: Icons.restaurant_rounded,
      tags: ['Food', 'Orders', 'Tracking', '6 Screens'],
    ),
    SmartShimmerProTemplate(
      title: 'Social & Media Streaming',
      description:
          'Story bubble trays, short video / reel skeletons, video player loaders, and interactive comment drawers.',
      icon: Icons.play_circle_filled_rounded,
      tags: ['Social', 'Stories', 'Video', '7 Screens'],
    ),
    SmartShimmerProTemplate(
      title: 'Ride-Hailing & Navigation',
      description:
          'Vehicle category selector, driver arrival ETA cards, fare estimate sheets, and route breakdown skeleton.',
      icon: Icons.local_taxi_rounded,
      tags: ['Mobility', 'Maps', 'ETA', '5 Screens'],
    ),
    SmartShimmerProTemplate(
      title: 'Healthcare & Appointments',
      description:
          'Doctor profiles, interactive calendar slot skeletons, prescription cards, and clinic detail screens.',
      icon: Icons.medical_services_rounded,
      tags: ['Healthcare', 'Booking', 'Calendar', '6 Screens'],
    ),
  ];
}

/// A ready-to-use promotional banner and showcase modal for Smart Shimmer Pro.
///
/// Easily customize the upgrade callback or purchase URL for Gumroad, LemonSqueezy, or Stripe.
class SmartShimmerProBanner extends StatelessWidget {
  /// Optional callback when developer taps upgrade.
  final VoidCallback? onUpgradeTap;

  /// Accent color for the Pro badge and buttons.
  final Color accentColor;

  /// Creates a [SmartShimmerProBanner].
  const SmartShimmerProBanner({
    super.key,
    this.onUpgradeTap,
    this.accentColor = const Color(0xFF6366F1), // Indigo
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            accentColor.withValues(alpha: 0.12),
            accentColor.withValues(alpha: 0.04),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: accentColor.withValues(alpha: 0.3), width: 1.5),
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
                child: const Text(
                  '💎 PRO UI KIT',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                '50+ Templates',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'Need Complex Full-App Shimmer Skeletons?',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Get 50+ pre-built, pixel-perfect screen templates for Fintech, E-Commerce, Food Delivery, and Social Apps with full source code & Figma assets.',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 14),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: onUpgradeTap ??
                  () => _showProCatalogModal(context, accentColor),
              style: ElevatedButton.styleFrom(
                backgroundColor: accentColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
                elevation: 0,
              ),
              icon: const Icon(Icons.star_rounded, size: 18),
              label: const Text(
                'Explore Pro Templates & Source Code',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void _showProCatalogModal(BuildContext context, Color accentColor) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => _ProCatalogSheet(accentColor: accentColor),
    );
  }
}

class _ProCatalogSheet extends StatelessWidget {
  final Color accentColor;

  const _ProCatalogSheet({required this.accentColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: accentColor.withValues(alpha: 0.15),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.workspace_premium_rounded,
                    color: accentColor, size: 24),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Smart Shimmer UI PRO',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Premium UI Kits, Themes & Source Code',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
          Expanded(
            child: ListView.separated(
              itemCount: SmartShimmerProCatalog.templates.length,
              separatorBuilder: (context, index) => const Divider(height: 24),
              itemBuilder: (context, index) {
                final item = SmartShimmerProCatalog.templates[index];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(item.icon, color: accentColor, size: 26),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item.description,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade700,
                              height: 1.3,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: 6,
                            runSpacing: 4,
                            children: item.tags.map((tag) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  tag,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Visit your Gumroad/LemonSqueezy link in README to access Pro Source Code!',
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: accentColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Get Pro License & Templates',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
