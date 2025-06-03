import 'package:flutter/material.dart';
import 'package:learning_english_app/themes/app_colors.dart';
import 'package:learning_english_app/views/lesson_details_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

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
              // Profile Header
              Row(
                children: [
                  const CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage(
                      'assets/avatar.png',
                    ), // Replace with your asset
                  ),

                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sophia',
                        style: textTheme.titleLarge
                      ),
                      Text(
                        'Level 5',
                        style: textTheme.bodyMedium?.copyWith(
                          color: AppColors.secondary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Course Progress
              const SizedBox(height: 8),

              // Course Completion
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Course Completion', style: textTheme.titleMedium),
                      const SizedBox(height: 4),
                      Text('75%'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: LinearProgressIndicator(
                      value: 0.75,
                      minHeight: 8,
                      backgroundColor: AppColors.unfocused, // Unfocused color
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Color(0xFF009963), // Primary color
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Skills Progress
              Text('Skills Progress', style: textTheme.titleLarge),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _skillCard('Speaking', 80),
                  _skillCard('Listening', 70),
                  _skillCard('Reading', 90),
                  _skillCard('Writing', 60),
                ],
              ),
              const SizedBox(height: 24),

              // Next Lesson
              Text('Next Lesson', style: textTheme.titleLarge),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upcoming',
                          style: textTheme.bodyMedium?.copyWith(
                          color: AppColors.secondary, // Primary color
                        ),
                        ),
                        const SizedBox(height: 4),
                        Text('Lesson with Ms. Emily', style: textTheme.titleMedium),
                        const SizedBox(height: 4),
                        Text(
                          'Tomorrow, 10:00 AM',
                          style: textTheme.bodyMedium?.copyWith(
                          color: AppColors.secondary, // Primary color
                        )
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE5F5F0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LessonDetailsView()),
                            );
                          },
                          child: const Text('View Details', style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8), // Small border radius
                    child: Image.asset(
                      'assets/teacher.png',
                      width: 150,   // Adjust size as needed
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ), // Replace with your asset
                  
                ],
              ),
              const SizedBox(height: 24),

              // Quick Actions
              Text(
                'Quick Actions',
                style: textTheme.titleLarge
              ),
              const SizedBox(height: 16),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 3.2, // Increased from 2.5 to make buttons shorter
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _quickActionButton('Practice Now', isPrimary: true),
                  _quickActionButton('Message Teacher'),
                  _quickActionButton('Review Last Lesson'),
                  _quickActionButton('Schedule Lesson'),
                ],
              ),
              const SizedBox(height: 80), // Extra space for bottom navigation

            ],
          ),
        ),
      ),
    );
  }

  Widget _skillCard(String label, int percent) {
    return Column(
      children: [
        SizedBox(
          width: 160,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.unfocused, // Unfocused color // Primary color
                width: 1, // Border thickness
              ),
              borderRadius: BorderRadius.circular(
                12,
              ), // Match Card's radius if needed
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    label,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '$percent%',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}


Widget _quickActionButton(String label, {bool isPrimary = false}) {
  return Material(
    borderRadius: BorderRadius.circular(16),
    color: isPrimary ? AppColors.primary : const Color(0xFFEAF6F2),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 18), // Reduced from 16 to 12
      width: double.infinity,
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: isPrimary ? Colors.white : Colors.black,
        ),
      ),
    ),
  );
}
