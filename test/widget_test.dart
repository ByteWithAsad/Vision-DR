import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('VisionDR app renders correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const VisionDRApp());

    // Verify that the app title is visible
    expect(find.text('VisionDR'), findsOneWidget);
    
    // Verify the main components are present
    expect(find.text('Upload Retinal Scan'), findsOneWidget);
    expect(find.text('Analyze Image'), findsOneWidget);
    expect(find.text('Diagnosis Results'), findsOneWidget);
    expect(find.text('About Diabetic Retinopathy'), findsOneWidget);
    
    // Verify initial state
    expect(find.text('No diagnosis yet'), findsOneWidget);
  });

  testWidgets('Diagnosis flow works', (WidgetTester tester) async {
    await tester.pumpWidget(const VisionDRApp());
    
    // Initial state
    expect(find.text('Moderate Non-Proliferative DR'), findsNothing);
    
    // Tap the analyze button
    await tester.tap(find.text('Analyze Image'));
    await tester.pump();
    
    // Verify diagnosis results appear
    expect(find.text('Moderate Non-Proliferative DR'), findsOneWidget);
    expect(find.text('87% confidence'), findsOneWidget);
    expect(find.text('Stage 3'), findsOneWidget);
    expect(find.text('Refer to ophthalmologist within 3-6 months'), findsOneWidget);
    expect(find.text('View Detailed Report'), findsOneWidget);
  });
}