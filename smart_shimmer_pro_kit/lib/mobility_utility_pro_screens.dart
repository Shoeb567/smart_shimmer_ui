import 'package:flutter/material.dart';
import 'package:smart_shimmer_ui/smart_shimmer_ui.dart';


/// 41. Doctor & Clinic Search
class ProHealthDoctorSearchScreen extends StatelessWidget {
  const ProHealthDoctorSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 3,
      itemBuilder: (_, __) => Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.2)), borderRadius: BorderRadius.circular(14)),
        child: const Row(children: [
          SmartShimmerCircle(size: 56),
          SizedBox(width: 14),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 120, height: 16), SizedBox(height: 6), SmartShimmerBox(width: 80, height: 12), SizedBox(height: 8), SmartShimmerBox(width: 140, height: 10)])),
        ]),
      ),
    );
  }
}

/// 42. Appointment Booking Slot Picker
class ProHealthAppointmentSlotPickerScreen extends StatelessWidget {
  const ProHealthAppointmentSlotPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SmartShimmerBox(width: 110, height: 16),
          const SizedBox(height: 12),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: List.generate(4, (i) => const SmartShimmerBox(width: 65, height: 75, borderRadius: BorderRadius.all(Radius.circular(12))))),
          const SizedBox(height: 24),
          const SmartShimmerBox(width: 110, height: 16),
          const SizedBox(height: 12),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2.2,
            children: List.generate(6, (i) => const SmartShimmerBox(width: double.infinity, height: 36, borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
        ],
      ),
    );
  }
}

/// 43. Prescription & Medical Records
class ProHealthMedicalRecordsScreen extends StatelessWidget {
  const ProHealthMedicalRecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 3,
      itemBuilder: (_, __) => Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.2)), borderRadius: BorderRadius.circular(12)),
        child: const Row(children: [
          SmartShimmerBox(width: 44, height: 44, borderRadius: BorderRadius.all(Radius.circular(8))),
          SizedBox(width: 12),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 130, height: 14), SizedBox(height: 6), SmartShimmerBox(width: 80, height: 10)])),
          SmartShimmerCircle(size: 24),
        ]),
      ),
    );
  }
}

/// 44. Hotel & Flight Search Results
class ProTravelHotelSearchScreen extends StatelessWidget {
  const ProTravelHotelSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 2,
      itemBuilder: (_, __) => Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.2)), borderRadius: BorderRadius.circular(16)),
        child: const Column(children: [
          SmartShimmerBox(width: double.infinity, height: 140, borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 150, height: 16), SizedBox(height: 6), SmartShimmerBox(width: 90, height: 12)]),
          ),
        ]),
      ),
    );
  }
}

/// 45. Room Details & Amenities
class ProTravelRoomDetailScreen extends StatelessWidget {
  const ProTravelRoomDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SmartShimmerBox(width: double.infinity, height: 200, borderRadius: BorderRadius.all(Radius.circular(16))),
        const SizedBox(height: 16),
        const SmartShimmerBox(width: 180, height: 20),
        const SizedBox(height: 8),
        Row(children: List.generate(4, (i) => const Padding(padding: EdgeInsets.only(right: 8), child: SmartShimmerBox(width: 60, height: 26, borderRadius: BorderRadius.all(Radius.circular(6)))))),
      ],
    );
  }
}

/// 46. Ride Hailing / Cab Selection & ETA
class ProMobilityCabSelectScreen extends StatelessWidget {
  const ProMobilityCabSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: List.generate(3, (i) => Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.2)), borderRadius: BorderRadius.circular(14)),
        child: const Row(children: [
          SmartShimmerBox(width: 60, height: 40, borderRadius: BorderRadius.all(Radius.circular(8))),
          SizedBox(width: 14),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 90, height: 14), SizedBox(height: 4), SmartShimmerBox(width: 60, height: 10)])),
          SmartShimmerBox(width: 50, height: 16),
        ]),
      )),
    );
  }
}

/// 47. Ride In-Progress Map
class ProMobilityRideTrackingScreen extends StatelessWidget {
  const ProMobilityRideTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SmartShimmerBox(width: double.infinity, height: 280, borderRadius: BorderRadius.zero),
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(children: [
            Row(children: [SmartShimmerCircle(size: 44), SizedBox(width: 12), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SmartShimmerBox(width: 120, height: 14), SizedBox(height: 4), SmartShimmerBox(width: 70, height: 10)])), SmartShimmerBox(width: 70, height: 28, borderRadius: BorderRadius.all(Radius.circular(8)))]),
          ]),
        ),
      ],
    );
  }
}

/// 48. Dashboard KPI Stats & Charts
class ProDashboardKpiStatsScreen extends StatelessWidget {
  const ProDashboardKpiStatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Row(children: [
          Expanded(child: SmartShimmerBox(height: 80, borderRadius: BorderRadius.all(Radius.circular(12)))),
          SizedBox(width: 12),
          Expanded(child: SmartShimmerBox(height: 80, borderRadius: BorderRadius.all(Radius.circular(12)))),
        ]),
        SizedBox(height: 16),
        SmartShimmerBox(width: double.infinity, height: 140, borderRadius: BorderRadius.all(Radius.circular(14))),
      ],
    );
  }
}

/// 49. Task & Project Kanban Board
class ProKanbanTaskBoardScreen extends StatelessWidget {
  const ProKanbanTaskBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(2, (i) => Expanded(
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.2)), borderRadius: BorderRadius.circular(12)),
          child: const Column(children: [
            SmartShimmerBox(width: double.infinity, height: 16),
            SizedBox(height: 12),
            SmartShimmerBox(width: double.infinity, height: 60, borderRadius: BorderRadius.all(Radius.circular(8))),
            SizedBox(height: 8),
            SmartShimmerBox(width: double.infinity, height: 60, borderRadius: BorderRadius.all(Radius.circular(8))),
          ]),
        ),
      )),
    );
  }
}

/// 50. Settings, Profile & Account Security
class ProAccountSettingsScreen extends StatelessWidget {
  const ProAccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 6,
      separatorBuilder: (_, __) => const Divider(height: 16),
      itemBuilder: (_, __) => const Row(children: [
        SmartShimmerCircle(size: 32),
        SizedBox(width: 12),
        Expanded(child: SmartShimmerBox(width: 140, height: 14)),
        SmartShimmerCircle(size: 16),
      ]),
    );
  }
}
