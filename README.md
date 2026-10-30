# smart_shimmer_ui ⚡✨

[![pub package](https://img.shields.io/pub/v/smart_shimmer_ui.svg?color=indigo)](https://pub.dev/packages/smart_shimmer_ui)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Flutter Platform](https://img.shields.io/badge/platform-flutter%20%7C%20android%20%7C%20ios%20%7C%20web%20%7C%20desktop-blue)](https://flutter.dev)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/Shoeb567/smart_shimmer_ui/pulls)

A modern, high-performance shimmer skeleton loading UI library for Flutter. Includes ready-to-use skeleton components, realistic multi-line text, auto-adaptive dark mode, and full-screen templates.

---

## 🌟 Why smart_shimmer_ui?

Most shimmer packages require you to build complex skeleton layouts manually using raw containers and math. **smart_shimmer_ui** provides ready-made, pixel-perfect skeleton widgets for lists, cards, feeds, chats, and profiles in a single line of code!

* 🚀 **Zero External Runtime Dependencies** - Built natively with Flutter's `ShaderMask` and hardware-accelerated animations for buttery smooth 60/120 FPS.
* 🌓 **Auto Dark & Light Mode** - Automatically detects `Theme.of(context).brightness` and adjusts shimmer contrast so your users never get blinded in dark mode.
* 🧩 **Drop-in Compatible** - Easily replace old `Shimmer.fromColors(...)` code with zero refactoring.
* 📦 **10+ Pre-built UI Presets** - `SmartShimmerListTile`, `SmartShimmerCard`, `SmartShimmerListView`, `SmartShimmerGrid`, `SmartShimmerProfile`, `SmartShimmerChat`, `SmartShimmerFeed`.
* 🔄 **Animated State Switcher** - Crossfade effortlessly from skeleton loading to real content using `SmartShimmerBuilder`.
* 💎 **Pro UI Kit & Commercial Templates** - Upgrade path for developers needing 50+ full-screen templates (Fintech, E-Commerce, Food Delivery, Social Media).

---

## 📱 Screenshots & Pre-built Widgets

| Classic Shimmer List | Cards & Product Grid | Social Media Feed |
| :---: | :---: | :---: |
| <img src="https://raw.githubusercontent.com/Shoeb567/smart_shimmer_ui/main/screenshots/list_shimmer.png" width="240" alt="Classic Shimmer List" /> | <img src="https://raw.githubusercontent.com/Shoeb567/smart_shimmer_ui/main/screenshots/cards_grid_shimmer.png" width="240" alt="Cards and Grid" /> | <img src="https://raw.githubusercontent.com/Shoeb567/smart_shimmer_ui/main/screenshots/feed_shimmer.png" width="240" alt="Social Feed" /> |

| Profile Screen (Light) | Profile Screen (Dark) | Cards & Grid (Dark) |
| :---: | :---: | :---: |
| <img src="https://raw.githubusercontent.com/Shoeb567/smart_shimmer_ui/main/screenshots/profile_light_shimmer.png" width="240" alt="Profile Light" /> | <img src="https://raw.githubusercontent.com/Shoeb567/smart_shimmer_ui/main/screenshots/dark_mode_shimmer.png" width="240" alt="Profile Dark" /> | <img src="https://raw.githubusercontent.com/Shoeb567/smart_shimmer_ui/main/screenshots/cards_grid_dark.jpg" width="240" alt="Cards and Grid Dark" /> |

---

## 📦 Installation

Add `smart_shimmer_ui` to your `pubspec.yaml`:

```yaml
dependencies:
  smart_shimmer_ui: ^1.0.2
```

Then run:

```bash
flutter pub get
```

Import it in your Dart file:

```dart
import 'package:smart_shimmer_ui/smart_shimmer_ui.dart';
```

---

## 🚀 Quick Start Examples

### 1. Classic Shimmer List (Drop-in Replacement)
Match your classic skeleton loading list with just a single widget:

```dart
SmartShimmerListView(
  itemCount: 8,
)
```

Or customize individual tiles:

```dart
SmartShimmerListTile(
  showAvatar: true,
  avatarSize: 48,
  lines: 2,
  lastLineWidthFactor: 0.6, // Realistic shorter subtitle line
  showTrailing: false,
)
```

---

### 2. Drop-in Replacement for Legacy Shimmer
If you already have existing shimmer code, use `SmartShimmer.fromColors`:

```dart
SmartShimmer.fromColors(
  baseColor: Colors.grey.shade300,
  highlightColor: Colors.white,
  period: const Duration(milliseconds: 1000),
  child: myCustomWidget(),
)
```

---

### 3. Smooth State Transition (Loading → Loaded)
Switch between skeleton and real data with smooth crossfade:

```dart
SmartShimmerBuilder(
  isLoading: userState.isLoading,
  skeleton: const SmartShimmerListTile(),
  child: UserListTile(user: userState.user),
)
```

---

### 4. Realistic Text Skeleton
Create realistic multi-line paragraph skeletons where the last line is naturally shorter:

```dart
SmartShimmerText(
  lines: 3,
  lineHeight: 14,
  spacing: 8,
  lastLineWidthFactor: 0.5, // 50% width on last line
)
```

---

### 5. Card & Grid Skeletons

#### E-Commerce Product Grid:
```dart
SmartShimmerGrid(
  crossAxisCount: 2,
  itemCount: 6,
  childAspectRatio: 0.75,
)
```

#### Social Post Feed:
```dart
SmartShimmerFeed(
  mediaHeight: 250,
)
```

#### User Profile Screen:
```dart
SmartShimmerProfile(
  coverHeight: 140,
  avatarSize: 80,
)
```

#### Chat Conversation Bubbles:
```dart
SmartShimmerChat(
  bubbleCount: 6,
)
```

---

## 🌓 Dark Mode & Global Theming

`smart_shimmer_ui` automatically detects Light and Dark mode. To customize global shimmer colors throughout your whole app, wrap your `MaterialApp` with `SmartShimmerTheme`:

```dart
SmartShimmerTheme(
  data: SmartShimmerThemeData(
    baseColor: Color(0xFFE5E7EB),
    highlightColor: Color(0xFFF9FAFB),
    duration: Duration(milliseconds: 1500),
    direction: ShimmerDirection.leftToRight,
  ),
  child: MaterialApp(
    home: HomeScreen(),
  ),
)
```

---

## 💎 Free vs PRO UI Kit

`smart_shimmer_ui` is completely free and open-source under the MIT license. For teams and developers building production applications, an extended **Pro UI Kit** is available with 50+ pre-built, full-screen templates.

| Feature | Free (Open Source) | PRO UI Kit 💎 |
| :--- | :---: | :---: |
| High-performance Shimmer Engine | ✅ | ✅ |
| Primitives (Box, Circle, Text, Image) | ✅ | ✅ |
| Standard List, Card, Feed, Profile | ✅ | ✅ |
| Auto Light & Dark Mode | ✅ | ✅ |
| **50+ Complete Full-App Screen Templates** | ❌ | ✅ |
| **Fintech & Banking Skeleton Suite** | ❌ | ✅ |
| **E-Commerce & Checkout Suite** | ❌ | ✅ |
| **Food Delivery & Live Tracking Suite** | ❌ | ✅ |
| **Figma UI Kit & Design Tokens** | ❌ | ✅ |
| **Priority Source-Code Access & Updates** | ❌ | ✅ |

👉 [**Explore Smart Shimmer PRO Templates & Source Code**](https://your-gumroad-or-lemonsqueezy-link.com)

*(See `PRO_MONETIZATION_GUIDE.md` for creator revenue instructions)*

---

## 🛠️ API Reference

### Primitives
| Widget | Description | Key Properties |
| :--- | :--- | :--- |
| `SmartShimmer` | Core shimmer sweep wrapper | `baseColor`, `highlightColor`, `duration`, `direction`, `gradient` |
| `SmartShimmerBox` | Rounded rectangle skeleton | `width`, `height`, `borderRadius`, `shape` |
| `SmartShimmerCircle` | Circular avatar skeleton | `size`, `margin` |
| `SmartShimmerText` | Multi-line text skeleton | `lines`, `lineHeight`, `spacing`, `lastLineWidthFactor` |
| `SmartShimmerImage` | Media banner skeleton | `width`, `height`, `aspectRatio`, `borderRadius` |

### Presets
| Preset Widget | Description |
| :--- | :--- |
| `SmartShimmerListTile` | Avatar + title + subtitle list tile |
| `SmartShimmerListView` | Synchronized scrollable or fixed list skeleton |
| `SmartShimmerCard` | Vertical, horizontal, or compact card skeletons |
| `SmartShimmerGrid` | Multi-column grid skeleton |
| `SmartShimmerProfile` | Cover banner + avatar + bio + stats profile skeleton |
| `SmartShimmerFeed` | Author header + media + actions + caption social feed |
| `SmartShimmerChat` | Alternating incoming/outgoing chat bubbles |
| `SmartShimmerBuilder` | Animated crossfade between skeleton and loaded data |

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/Shoeb567/smart_shimmer_ui/issues).

---

## 📄 License

This package is licensed under the [MIT License](LICENSE).
