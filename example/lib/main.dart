import 'package:flutter/material.dart';
import 'package:smart_shimmer_ui/smart_shimmer_ui.dart';

void main() {
  runApp(const SmartShimmerDemoApp());
}

class SmartShimmerDemoApp extends StatefulWidget {
  const SmartShimmerDemoApp({super.key});

  @override
  State<SmartShimmerDemoApp> createState() => _SmartShimmerDemoAppState();
}

class _SmartShimmerDemoAppState extends State<SmartShimmerDemoApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Shimmer UI Demo',
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFF9FAFB),
        colorSchemeSeed: const Color(0xFF6366F1),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF111827),
        colorSchemeSeed: const Color(0xFF6366F1),
      ),
      home: DemoHomeScreen(
        isDark: _themeMode == ThemeMode.dark,
        onToggleTheme: _toggleTheme,
      ),
    );
  }
}

class DemoHomeScreen extends StatefulWidget {
  final bool isDark;
  final VoidCallback onToggleTheme;

  const DemoHomeScreen({
    super.key,
    required this.isDark,
    required this.onToggleTheme,
  });

  @override
  State<DemoHomeScreen> createState() => _DemoHomeScreenState();
}

class _DemoHomeScreenState extends State<DemoHomeScreen> {
  int _currentTabIndex = 0;
  bool _isLoadingContent = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          _currentTabIndex == 0
              ? 'Skeleton Loading with shimmer'
              : 'Smart Shimmer UI',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          IconButton(
            tooltip: 'Toggle Light / Dark',
            icon: Icon(widget.isDark ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.onToggleTheme,
          ),
        ],
      ),
      body: _buildCurrentTab(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentTabIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.list_alt_rounded),
            label: 'List',
          ),
          NavigationDestination(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Cards',
          ),
          NavigationDestination(
            icon: Icon(Icons.dynamic_feed_rounded),
            label: 'Feed',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.diamond_rounded),
            label: 'Pro Kit',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isLoadingContent = !_isLoadingContent;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(_isLoadingContent
                  ? 'Switched to Skeleton loading'
                  : 'Switched to Loaded Content'),
              duration: const Duration(seconds: 1),
            ),
          );
        },
        child: Icon(_isLoadingContent ? Icons.replay : Icons.check),
      ),
    );
  }

  Widget _buildCurrentTab() {
    switch (_currentTabIndex) {
      case 0:
        return _buildClassicListDemo();
      case 1:
        return _buildCardsAndGridDemo();
      case 2:
        return _buildFeedDemo();
      case 3:
        return const SmartShimmerProfile();
      case 4:
        return _buildProShowcaseTab();
      default:
        return _buildClassicListDemo();
    }
  }

  /// Exact replica of the user demo screenshot:
  /// Circle avatar + 2 lines of shimmer list!
  Widget _buildClassicListDemo() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: [
              Text(
                'Demonstrating SmartShimmerListView',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Text(
                'Tap FAB to toggle state',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.indigo.shade400,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SmartShimmerBuilder(
            isLoading: _isLoadingContent,
            skeleton: SmartShimmerListView(
              itemCount: 8,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: 8,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo.shade100,
                    child: Text('${index + 1}'),
                  ),
                  title: Text(
                    'Real Data Title Item #${index + 1}',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Loaded asynchronously from database or API response.',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCardsAndGridDemo() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const Text(
          'Vertical Shimmer Card',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const SmartShimmerCard(),
        const SizedBox(height: 24),
        const Text(
          'Horizontal Shimmer Card',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const SmartShimmerCard.horizontal(),
        const SizedBox(height: 24),
        const Text(
          'E-Commerce Grid Skeletons',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 420,
          child: SmartShimmerGrid(
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ),
      ],
    );
  }

  Widget _buildFeedDemo() {
    return ListView(
      children: const [
        SmartShimmerFeed(),
        Divider(height: 32),
        SmartShimmerFeed(),
      ],
    );
  }

  Widget _buildProShowcaseTab() {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 12),
      children: [
        const SmartShimmerProBanner(),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Included in Free vs Pro',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 8),
        _buildComparisonTable(),
      ],
    );
  }

  Widget _buildComparisonTable() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.grey.shade200),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              _FeatureRow('Core Shimmer Engine', free: true, pro: true),
              _FeatureRow('ShimmerText, Circle, Box', free: true, pro: true),
              _FeatureRow('ListTile & ListView Presets', free: true, pro: true),
              _FeatureRow('Cards & Grid Presets', free: true, pro: true),
              _FeatureRow('Auto Light & Dark Mode', free: true, pro: true),
              _FeatureRow('50+ Full-Screen Screen Kits',
                  free: false, pro: true),
              _FeatureRow('Fintech & Banking Kit', free: false, pro: true),
              _FeatureRow('E-Commerce App Shimmer Kit', free: false, pro: true),
              _FeatureRow('Food Delivery & Tracking Kit',
                  free: false, pro: true),
              _FeatureRow('Figma UI Kit & Design Tokens',
                  free: false, pro: true),
              _FeatureRow('Priority Support & Updates', free: false, pro: true),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeatureRow extends StatelessWidget {
  final String title;
  final bool free;
  final bool pro;

  const _FeatureRow(this.title, {required this.free, required this.pro});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
          ),
          Icon(
            free ? Icons.check_circle_rounded : Icons.cancel_outlined,
            size: 18,
            color: free ? Colors.green : Colors.grey.shade400,
          ),
          const SizedBox(width: 40),
          const Icon(
            Icons.check_circle_rounded,
            size: 18,
            color: Color(0xFF6366F1),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}

