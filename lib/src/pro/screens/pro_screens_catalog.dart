import 'package:flutter/material.dart';

export 'fintech_pro_screens.dart';
export 'ecommerce_pro_screens.dart';
export 'food_delivery_pro_screens.dart';
export 'social_pro_screens.dart';
export 'mobility_utility_pro_screens.dart';

import 'fintech_pro_screens.dart';
import 'ecommerce_pro_screens.dart';
import 'food_delivery_pro_screens.dart';
import 'social_pro_screens.dart';
import 'mobility_utility_pro_screens.dart';

/// Single item representing one of the 50 Pro Full-Screen Skeletons.
class SmartShimmerScreenItem {
  final int id;
  final String title;
  final String category;
  final WidgetBuilder builder;

  const SmartShimmerScreenItem({
    required this.id,
    required this.title,
    required this.category,
    required this.builder,
  });
}

/// Complete Registry of all 50 Pro Full-Screen Skeletons.
class SmartShimmer50ScreensRegistry {
  static final List<SmartShimmerScreenItem> allScreens = [
    // 🏦 Fintech (1-10)
    SmartShimmerScreenItem(id: 1, title: 'Wallet & Cards Overview', category: 'Fintech', builder: (_) => const ProFintechWalletScreen()),
    SmartShimmerScreenItem(id: 2, title: 'Transaction Receipt', category: 'Fintech', builder: (_) => const ProFintechReceiptScreen()),
    SmartShimmerScreenItem(id: 3, title: 'Transfer Money & Contacts', category: 'Fintech', builder: (_) => const ProFintechTransferScreen()),
    SmartShimmerScreenItem(id: 4, title: 'Spending Analytics Chart', category: 'Fintech', builder: (_) => const ProFintechAnalyticsScreen()),
    SmartShimmerScreenItem(id: 5, title: 'Crypto Portfolio & Watchlist', category: 'Fintech', builder: (_) => const ProFintechCryptoScreen()),
    SmartShimmerScreenItem(id: 6, title: 'Loan / EMI Calculator', category: 'Fintech', builder: (_) => const ProFintechLoanScreen()),
    SmartShimmerScreenItem(id: 7, title: 'Bill Payment Categories', category: 'Fintech', builder: (_) => const ProFintechBillPayScreen()),
    SmartShimmerScreenItem(id: 8, title: 'Savings Goals & Piggy Bank', category: 'Fintech', builder: (_) => const ProFintechSavingsScreen()),
    SmartShimmerScreenItem(id: 9, title: 'Bank Statement & Filters', category: 'Fintech', builder: (_) => const ProFintechStatementScreen()),
    SmartShimmerScreenItem(id: 10, title: 'Card Settings & Security', category: 'Fintech', builder: (_) => const ProFintechCardSettingsScreen()),

    // 🛍️ E-Commerce (11-20)
    SmartShimmerScreenItem(id: 11, title: 'Marketplace Flash Sales', category: 'E-Commerce', builder: (_) => const ProEcommerceMarketplaceScreen()),
    SmartShimmerScreenItem(id: 12, title: 'Product Detail & Swatches', category: 'E-Commerce', builder: (_) => const ProEcommerceDetailScreen()),
    SmartShimmerScreenItem(id: 13, title: 'Shopping Cart & Promo', category: 'E-Commerce', builder: (_) => const ProEcommerceCartScreen()),
    SmartShimmerScreenItem(id: 14, title: 'Multi-Step Checkout Address', category: 'E-Commerce', builder: (_) => const ProEcommerceCheckoutScreen()),
    SmartShimmerScreenItem(id: 15, title: 'Order Tracking & Delivery', category: 'E-Commerce', builder: (_) => const ProEcommerceOrderTrackingScreen()),
    SmartShimmerScreenItem(id: 16, title: 'Wishlist / Saved Items Grid', category: 'E-Commerce', builder: (_) => const ProEcommerceWishlistScreen()),
    SmartShimmerScreenItem(id: 17, title: 'Search & Filter Results', category: 'E-Commerce', builder: (_) => const ProEcommerceSearchResultsScreen()),
    SmartShimmerScreenItem(id: 18, title: 'Customer Reviews & Ratings', category: 'E-Commerce', builder: (_) => const ProEcommerceCustomerReviewsScreen()),
    SmartShimmerScreenItem(id: 19, title: 'Category Taxonomy Grid', category: 'E-Commerce', builder: (_) => const ProEcommerceCategoriesGridScreen()),
    SmartShimmerScreenItem(id: 20, title: 'Return & Refund Status', category: 'E-Commerce', builder: (_) => const ProEcommerceReturnsScreen()),

    // 🍔 Food Delivery (21-30)
    SmartShimmerScreenItem(id: 21, title: 'Restaurant Discovery & Deals', category: 'Food Delivery', builder: (_) => const ProFoodRestaurantDiscoveryScreen()),
    SmartShimmerScreenItem(id: 22, title: 'Restaurant Menu & Dishes', category: 'Food Delivery', builder: (_) => const ProFoodRestaurantMenuScreen()),
    SmartShimmerScreenItem(id: 23, title: 'Dish Customization Sheet', category: 'Food Delivery', builder: (_) => const ProFoodDishDetailBottomSheetScreen()),
    SmartShimmerScreenItem(id: 24, title: 'Food Cart & Bill Summary', category: 'Food Delivery', builder: (_) => const ProFoodCartSummaryScreen()),
    SmartShimmerScreenItem(id: 25, title: 'Live Order Tracking Map', category: 'Food Delivery', builder: (_) => const ProFoodLiveTrackingMapScreen()),
    SmartShimmerScreenItem(id: 26, title: 'Order History & Reorder', category: 'Food Delivery', builder: (_) => const ProFoodOrderHistoryScreen()),
    SmartShimmerScreenItem(id: 27, title: 'Delivery Address Management', category: 'Food Delivery', builder: (_) => const ProFoodAddressManagementScreen()),
    SmartShimmerScreenItem(id: 28, title: 'Driver Details & Tip Picker', category: 'Food Delivery', builder: (_) => const ProFoodDriverTipScreen()),
    SmartShimmerScreenItem(id: 29, title: 'Cuisines & Mood Filter', category: 'Food Delivery', builder: (_) => const ProFoodCuisineFilterScreen()),
    SmartShimmerScreenItem(id: 30, title: 'Restaurant Review & Rating', category: 'Food Delivery', builder: (_) => const ProFoodReviewFeedbackScreen()),

    // 🎬 Social Media & Video (31-40)
    SmartShimmerScreenItem(id: 31, title: 'Social Feed & Media Post', category: 'Social Media', builder: (_) => const ProSocialFeedScreen()),
    SmartShimmerScreenItem(id: 32, title: 'Story Viewer & Progress Bars', category: 'Social Media', builder: (_) => const ProSocialStoryViewerScreen()),
    SmartShimmerScreenItem(id: 33, title: 'Short Video / Reels Player', category: 'Social Media', builder: (_) => const ProSocialReelsPlayerScreen()),
    SmartShimmerScreenItem(id: 34, title: 'User Profile & Media Grid', category: 'Social Media', builder: (_) => const ProSocialUserProfileScreen()),
    SmartShimmerScreenItem(id: 35, title: 'Direct Messages / Chat List', category: 'Social Media', builder: (_) => const ProSocialDirectMessagesScreen()),
    SmartShimmerScreenItem(id: 36, title: 'Chat Conversation Bubbles', category: 'Social Media', builder: (_) => const ProSocialChatConversationScreen()),
    SmartShimmerScreenItem(id: 37, title: 'Explore / Trending Hashtags', category: 'Social Media', builder: (_) => const ProSocialExploreGridScreen()),
    SmartShimmerScreenItem(id: 38, title: 'Notifications & Activity Feed', category: 'Social Media', builder: (_) => const ProSocialNotificationsScreen()),
    SmartShimmerScreenItem(id: 39, title: 'Comments & Replies Drawer', category: 'Social Media', builder: (_) => const ProSocialCommentsDrawerScreen()),
    SmartShimmerScreenItem(id: 40, title: 'Live Stream Floating Hearts', category: 'Social Media', builder: (_) => const ProSocialLiveStreamScreen()),

    // 🚗 Mobility, Healthcare & Productivity (41-50)
    SmartShimmerScreenItem(id: 41, title: 'Doctor & Clinic Search', category: 'Healthcare', builder: (_) => const ProHealthDoctorSearchScreen()),
    SmartShimmerScreenItem(id: 42, title: 'Appointment Booking Slot Picker', category: 'Healthcare', builder: (_) => const ProHealthAppointmentSlotPickerScreen()),
    SmartShimmerScreenItem(id: 43, title: 'Prescription & Medical Records', category: 'Healthcare', builder: (_) => const ProHealthMedicalRecordsScreen()),
    SmartShimmerScreenItem(id: 44, title: 'Hotel & Flight Search Results', category: 'Travel', builder: (_) => const ProTravelHotelSearchScreen()),
    SmartShimmerScreenItem(id: 45, title: 'Room Details & Amenities', category: 'Travel', builder: (_) => const ProTravelRoomDetailScreen()),
    SmartShimmerScreenItem(id: 46, title: 'Ride Hailing / Cab Select & ETA', category: 'Mobility', builder: (_) => const ProMobilityCabSelectScreen()),
    SmartShimmerScreenItem(id: 47, title: 'Ride In-Progress Map Tracking', category: 'Mobility', builder: (_) => const ProMobilityRideTrackingScreen()),
    SmartShimmerScreenItem(id: 48, title: 'Dashboard KPI Stats & Charts', category: 'Productivity', builder: (_) => const ProDashboardKpiStatsScreen()),
    SmartShimmerScreenItem(id: 49, title: 'Task & Project Kanban Board', category: 'Productivity', builder: (_) => const ProKanbanTaskBoardScreen()),
    SmartShimmerScreenItem(id: 50, title: 'Settings, Profile & Account', category: 'Settings', builder: (_) => const ProAccountSettingsScreen()),
  ];
}
