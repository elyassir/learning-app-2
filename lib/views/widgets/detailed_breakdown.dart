// First, create a new file for the detailed breakdown component:
// filepath: /home/yel/Desktop/learning_english_app/lib/views/widgets/detailed_breakdown.dart

import 'package:flutter/material.dart';
import 'package:learning_english_app/themes/app_colors.dart';

class DetailedBreakdown extends StatelessWidget {
  const DetailedBreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Detailed Breakdown',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: const Color(0xFF1A1F16),
          ),
        ),
        const SizedBox(height: 16),
        
        Column(
          children: [
            // First row
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  // Hours studied
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hours\nStudied',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF45A180),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '120',
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF0D1C17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Lessons completed
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Lessons\nCompleted',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF45A180),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '75',
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF0D1C17),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            const Divider(height: 1, thickness: 1, color: Color(0xFFEAEAEA)),
            
            // Second row
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  // Average accuracy
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Average\nAccuracy',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF45A180),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '88%',
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF0D1C17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Empty space for alignment
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}