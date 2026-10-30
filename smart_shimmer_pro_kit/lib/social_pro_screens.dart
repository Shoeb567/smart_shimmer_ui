import 'package:flutter/material.dart';
import 'package:smart_shimmer_ui/smart_shimmer_ui.dart';

/// 31. Social Feed with Media
class ProSocialFeedScreen extends StatelessWidget {
  const ProSocialFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Row(children: [SmartShimmerCircle(size: 40), SizedBox(width: 10), SmartShimmerBox(width: 120, height: 14)]),
        SizedBox(height: 12),
        SmartShimmerBox(width: double.infinity, height: 240, borderRadius: BorderRadius.all(Radius.circular(16))),
        SizedBox(height: 12),
        Row(children: [SmartShimmerCircle(size: 24), SizedBox(width: 14), SmartShimmerCircle(size: 24), SizedBox(width: 14), SmartShimmerCircle(size: 24)]),
      ],
    );
  }
}

/// 32. Story Viewer & Reactions
class ProSocialStoryViewerScreen extends StatelessWidget {
  const ProSocialStoryViewerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: List.generate(4, (i) => const Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 2), child: SmartShimmerBox(height: 3, width: double.infinity))))),
        const SizedBox(height: 14),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Row(children: [SmartShimmerCircle(size: 36), SizedBox(width: 10), SmartShimmerBox(width: 100, height: 14)])),
        const Spacer(),
        const Padding(padding: EdgeInsets.all(16), child: Row(children: [Expanded(child: SmartShimmerBox(height: 42, borderRadius: BorderRadius.all(Radius.circular(20)))), SizedBox(width: 10), SmartShimmerCircle(size: 36)])),
      ],
    );
  }
}

/// 33. Short Video / Reels Player
class ProSocialReelsPlayerScreen extends StatelessWidget {
  const ProSocialReelsPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SmartShimmerBox(width: double.infinity, height: double.infinity, borderRadius: BorderRadius.zero),
        Positioned(
          right: 16,
          bottom: 40,
          child: Column(children: List.generate(4, (i) => const Padding(padding: EdgeInsets.symmetric(vertical: 8), child: SmartShimmerCircle(size: 36)))),
        ),
        const Positioned(
          left: 16,
          bottom: 30,
          right: 80,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 120, height: 14), SizedBox(height: 6), SmartShimmerText(lines: 2)]),
        ),
      ],
    );
  }
}

/// 34. User Profile & Media Grid
class ProSocialUserProfileScreen extends StatelessWidget {
  const ProSocialUserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(children: [
            const SmartShimmerCircle(size: 72),
            const SizedBox(width: 24),
            Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: List.generate(3, (i) => const Column(children: [SmartShimmerBox(width: 36, height: 16), SizedBox(height: 4), SmartShimmerBox(width: 44, height: 10)])))),
          ]),
        ),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: SmartShimmerText(lines: 2)),
        const SizedBox(height: 16),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          children: List.generate(9, (i) => const SmartShimmerBox(width: double.infinity, height: double.infinity, borderRadius: BorderRadius.zero)),
        ),
      ],
    );
  }
}

/// 35. Direct Messages / Chat List
class ProSocialDirectMessagesScreen extends StatelessWidget {
  const ProSocialDirectMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 6,
      separatorBuilder: (_, __) => const SizedBox(height: 14),
      itemBuilder: (_, __) => const Row(children: [
        SmartShimmerCircle(size: 48),
        SizedBox(width: 12),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 130, height: 14), SizedBox(height: 6), SmartShimmerBox(width: 180, height: 10)])),
        SmartShimmerBox(width: 30, height: 10),
      ]),
    );
  }
}

/// 36. Chat Conversation
class ProSocialChatConversationScreen extends StatelessWidget {
  const ProSocialChatConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Align(alignment: Alignment.centerLeft, child: SmartShimmerBox(width: 180, height: 44, borderRadius: BorderRadius.all(Radius.circular(14)))),
        SizedBox(height: 12),
        Align(alignment: Alignment.centerRight, child: SmartShimmerBox(width: 140, height: 44, borderRadius: BorderRadius.all(Radius.circular(14)))),
        SizedBox(height: 12),
        Align(alignment: Alignment.centerLeft, child: SmartShimmerBox(width: 220, height: 60, borderRadius: BorderRadius.all(Radius.circular(14)))),
      ],
    );
  }
}

/// 37. Explore / Trending Hashtags Grid
class ProSocialExploreGridScreen extends StatelessWidget {
  const ProSocialExploreGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      children: List.generate(12, (i) => const SmartShimmerBox(width: double.infinity, height: double.infinity, borderRadius: BorderRadius.zero)),
    );
  }
}

/// 38. Notifications & Activity Feed
class ProSocialNotificationsScreen extends StatelessWidget {
  const ProSocialNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 5,
      separatorBuilder: (_, __) => const Divider(height: 16),
      itemBuilder: (_, __) => const Row(children: [
        SmartShimmerCircle(size: 40),
        SizedBox(width: 12),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 150, height: 12), SizedBox(height: 4), SmartShimmerBox(width: 60, height: 8)])),
        SmartShimmerBox(width: 40, height: 40, borderRadius: BorderRadius.all(Radius.circular(6))),
      ]),
    );
  }
}

/// 39. Comments & Replies Drawer
class ProSocialCommentsDrawerScreen extends StatelessWidget {
  const ProSocialCommentsDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 4,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (_, __) => const Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SmartShimmerCircle(size: 32),
        SizedBox(width: 10),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 100, height: 12), SizedBox(height: 6), SmartShimmerText(lines: 2)])),
      ]),
    );
  }
}

/// 40. Live Stream & Floating Hearts
class ProSocialLiveStreamScreen extends StatelessWidget {
  const ProSocialLiveStreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        SmartShimmerBox(width: double.infinity, height: double.infinity, borderRadius: BorderRadius.zero),
        Positioned(top: 20, left: 16, child: Row(children: [SmartShimmerCircle(size: 36), SizedBox(width: 10), SmartShimmerBox(width: 80, height: 14)])),
        Positioned(bottom: 20, left: 16, right: 16, child: Row(children: [Expanded(child: SmartShimmerBox(height: 40, borderRadius: BorderRadius.all(Radius.circular(20)))), SizedBox(width: 10), SmartShimmerCircle(size: 36)])),
      ],
    );
  }
}
