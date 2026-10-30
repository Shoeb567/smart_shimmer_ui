# 💎 Smart Shimmer Pro UI Kit (50+ Full-Screen Flutter Skeletons)

Thank you for purchasing Smart Shimmer UI PRO!

## 📦 What is Included in this Kit?
This package contains 50 production-ready, null-safe Flutter shimmer skeleton screens:

1. **🏦 Fintech & Banking (Screens 1 - 10):**
   - Wallet & Cards Overview
   - Transaction Receipt Details
   - Transfer Money & Beneficiaries List
   - Spending Analytics Bar Chart
   - Crypto Portfolio & Watchlist
   - Loan / EMI Calculator
   - Bill Payment & Utility Categories
   - Savings Goals & Piggy Bank
   - Bank Statement & Date Filters
   - Card Settings & Security

2. **🛍️ E-Commerce & Retail (Screens 11 - 20):**
   - Marketplace Home & Flash Sales
   - Product Details with Image Carousel & Swatches
   - Shopping Cart with Promo Code & Bill
   - Multi-Step Checkout & Address Picker
   - Order Tracking & Live Delivery Stepper
   - Wishlist / Saved Items Grid
   - Search & Filter Results
   - Customer Reviews & Ratings breakdown
   - Category Taxonomy Grid
   - Return & Refund Status

3. **🍔 Food Delivery & Restaurants (Screens 21 - 30):**
   - Restaurant Discovery & Deals Feed
   - Restaurant Menu & Dish Categories
   - Dish Customization Bottom Sheet
   - Food Cart & Order Summary
   - Live Order Tracking Map Skeleton
   - Order History with Reorder Button
   - Delivery Address Management
   - Driver Details & Tip Picker
   - Cuisines & Mood Filter
   - Restaurant Review & Feedback

4. **🎬 Social Media & Content (Screens 31 - 40):**
   - Social Feed with Media Post & Actions
   - Story Viewer & Progress Bars
   - Short Video / Reels Player
   - User Profile & Media 3x3 Grid
   - Direct Messages / Chat List
   - Chat Conversation with Bubbles
   - Explore / Trending Hashtags Grid
   - Notifications & Activity Feed
   - Comments & Replies Drawer
   - Live Stream & Floating Hearts

5. **🚗 Mobility, Healthcare & Utility (Screens 41 - 50):**
   - Doctor & Clinic Search
   - Appointment Booking Slot Picker
   - Prescription & Medical Records
   - Hotel & Flight Search Results
   - Room Details & Amenities
   - Ride Hailing / Cab Selection & ETA
   - Ride In-Progress Map Tracking
   - Dashboard KPI Stats & Charts
   - Task & Project Kanban Board
   - Settings, Profile & Security

---

## 🚀 How to Use in Your Flutter Project

1. Add `smart_shimmer_ui` to your `pubspec.yaml`:
   ```yaml
   dependencies:
     smart_shimmer_ui: ^1.0.2
   ```

2. Copy any of the screens from `lib/` directly into your project's `screens/` or `widgets/` folder.

3. Import and use freely without watermarks:
   ```dart
   import 'package:smart_shimmer_ui/smart_shimmer_ui.dart';

   // Example: Show Wallet skeleton while data is fetching
   SmartShimmerBuilder(
     isLoading: state.isLoading,
     skeleton: const ProFintechWalletScreen(),
     child: RealWalletScreen(data: state.data),
   );
   ```

---

## 📄 License & Commercial Rights
This license grants you a perpetual, worldwide, non-exclusive license to use these templates in unlimited personal and commercial client applications.
You may not redistribute or resell the raw source code templates as a standalone skeleton UI library.

