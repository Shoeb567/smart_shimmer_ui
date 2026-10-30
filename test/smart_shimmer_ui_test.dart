import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_shimmer_ui/smart_shimmer_ui.dart';

void main() {
  group('SmartShimmer Core Tests', () {
    testWidgets('SmartShimmer renders child widget with ShaderMask',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmer(
              child: SizedBox(
                width: 100,
                height: 50,
              ),
            ),
          ),
        ),
      );

      expect(find.byType(SmartShimmer), findsOneWidget);
      expect(find.byType(ShaderMask), findsOneWidget);
    });

    testWidgets('SmartShimmer.fromColors renders correctly', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SmartShimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.white,
              period: const Duration(milliseconds: 1000),
              child: Container(
                width: 100,
                height: 50,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      );

      expect(find.byType(SmartShimmer), findsOneWidget);
      expect(find.byType(ShaderMask), findsOneWidget);
    });

    testWidgets('SmartShimmer renders without ShaderMask when enabled is false',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmer(
              enabled: false,
              child: SizedBox(
                width: 100,
                height: 50,
              ),
            ),
          ),
        ),
      );

      expect(find.byType(SmartShimmer), findsOneWidget);
      expect(find.byType(ShaderMask), findsNothing);
    });
  });

  group('SmartShimmer Theme Tests', () {
    testWidgets('Inherits theme from SmartShimmerTheme', (tester) async {
      final customTheme = SmartShimmerThemeData(
        baseColor: Colors.amber,
        highlightColor: Colors.yellow,
        duration: const Duration(seconds: 2),
        direction: ShimmerDirection.rightToLeft,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: SmartShimmerTheme(
            data: customTheme,
            child: const Scaffold(
              body: SmartShimmer(
                child: SizedBox(width: 80, height: 20),
              ),
            ),
          ),
        ),
      );

      final BuildContext context = tester.element(find.byType(SmartShimmer));
      final resolvedTheme = SmartShimmerTheme.of(context);
      expect(resolvedTheme.baseColor, Colors.amber);
      expect(resolvedTheme.highlightColor, Colors.yellow);
      expect(resolvedTheme.direction, ShimmerDirection.rightToLeft);
    });
  });

  group('Primitives Tests', () {
    testWidgets('SmartShimmerBox renders with expected dimensions',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmerBox(
              width: 120,
              height: 24,
            ),
          ),
        ),
      );

      expect(find.byType(SmartShimmerBox), findsOneWidget);
      expect(find.byType(SmartShimmer), findsOneWidget);
    });

    testWidgets('SmartShimmerCircle renders circular container',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmerCircle(size: 64),
          ),
        ),
      );

      expect(find.byType(SmartShimmerCircle), findsOneWidget);
      expect(find.byType(SmartShimmerBox), findsOneWidget);
    });

    testWidgets('SmartShimmerText renders given number of lines',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmerText(
              lines: 3,
              width: 200,
            ),
          ),
        ),
      );

      expect(find.byType(SmartShimmerText), findsOneWidget);
      expect(find.byType(SmartShimmerBox), findsNWidgets(3));
    });
  });

  group('Preset Skeletons Tests', () {
    testWidgets('SmartShimmerListTile renders avatar, lines, and optional trailing',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmerListTile(
              showAvatar: true,
              lines: 2,
              showTrailing: true,
            ),
          ),
        ),
      );

      expect(find.byType(SmartShimmerListTile), findsOneWidget);
      expect(find.byType(SmartShimmerCircle), findsOneWidget);
      expect(find.byType(SmartShimmerText), findsOneWidget);
      expect(find.byType(SmartShimmerBox), findsWidgets);
    });

    testWidgets('SmartShimmerListView renders multiple items', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmerListView(
              itemCount: 4,
            ),
          ),
        ),
      );

      expect(find.byType(SmartShimmerListView), findsOneWidget);
      expect(find.byType(SmartShimmerListTile), findsNWidgets(4));
    });

    testWidgets('SmartShimmerCard renders vertical and horizontal layouts',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SmartShimmerCard(),
                  SmartShimmerCard.horizontal(),
                  SmartShimmerCard.compact(),
                ],
              ),
            ),
          ),
        ),
      );

      expect(find.byType(SmartShimmerCard), findsNWidgets(3));
    });

    testWidgets('SmartShimmerGrid renders grid items', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmerGrid(
              itemCount: 4,
            ),
          ),
        ),
      );

      expect(find.byType(SmartShimmerGrid), findsOneWidget);
      expect(find.byType(SmartShimmerCard), findsNWidgets(4));
    });

    testWidgets('SmartShimmerProfile renders profile components',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmerProfile(),
          ),
        ),
      );

      expect(find.byType(SmartShimmerProfile), findsOneWidget);
      expect(find.byType(SmartShimmerCircle), findsOneWidget);
      expect(find.byType(SmartShimmerText), findsOneWidget);
    });

    testWidgets('SmartShimmerChat renders message bubbles', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmerChat(bubbleCount: 4),
          ),
        ),
      );

      expect(find.byType(SmartShimmerChat), findsOneWidget);
    });

    testWidgets('SmartShimmerFeed renders social feed elements',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmerFeed(),
          ),
        ),
      );

      expect(find.byType(SmartShimmerFeed), findsOneWidget);
    });
  });

  group('SmartShimmerBuilder Tests', () {
    testWidgets('Shows skeleton when isLoading is true', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmerBuilder(
              isLoading: true,
              skeleton: Text('Skeleton Loading...'),
              child: Text('Loaded Data!'),
            ),
          ),
        ),
      );

      expect(find.text('Skeleton Loading...'), findsOneWidget);
      expect(find.text('Loaded Data!'), findsNothing);
    });

    testWidgets('Shows child when isLoading is false', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmerBuilder(
              isLoading: false,
              skeleton: Text('Skeleton Loading...'),
              child: Text('Loaded Data!'),
            ),
          ),
        ),
      );

      expect(find.text('Loaded Data!'), findsOneWidget);
      expect(find.text('Skeleton Loading...'), findsNothing);
    });
  });

  group('SmartShimmer Pro Preview Tests', () {
    testWidgets('SmartShimmerFintechPreview renders correctly', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: SmartShimmerFintechPreview(),
            ),
          ),
        ),
      );

      expect(find.byType(SmartShimmerFintechPreview), findsOneWidget);
    });

    testWidgets('SmartShimmerEcommercePreview renders correctly',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: SmartShimmerEcommercePreview(),
            ),
          ),
        ),
      );

      expect(find.byType(SmartShimmerEcommercePreview), findsOneWidget);
    });

    testWidgets('SmartShimmerProPreviewCard renders with pro badge',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SmartShimmerProPreviewCard(
              title: 'Test Pro Template',
              subtitle: 'Subtitle info',
              child: SizedBox(height: 50),
            ),
          ),
        ),
      );

      expect(find.text('PRO TEMPLATE'), findsOneWidget);
      expect(find.text('Test Pro Template'), findsOneWidget);
      expect(find.text('Unlock'), findsOneWidget);
    });
  });
}
