import 'package:flutter/material.dart';
import 'package:learning_english_app/themes/app_colors.dart';
import 'widgets/progress_header.dart';
import 'widgets/progress_timeline.dart';
import 'widgets/achievements_list.dart';
import 'widgets/detailed_breakdown.dart';
import 'widgets/feedback_section.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProgressHeader(),
              const ProgressTimeline(),
              const SizedBox(height: 32),
              Text(
                'Achievements',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1A1F16),
                ),
              ),
              const SizedBox(height: 16),
              const AchievementsList(),
              const SizedBox(height: 32),
              const DetailedBreakdown(),
              const SizedBox(height: 32),
              Text(
                'Teacher Feedback',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1A1F16),
                ),
              ),
              const SizedBox(height: 16),
              const FeedbackSection(),
            ],
          ),
        ),
      ),
    );
  }
}
