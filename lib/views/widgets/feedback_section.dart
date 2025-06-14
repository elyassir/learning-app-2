import 'package:flutter/material.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _FeedbackTile(
          date: '03/01/2024',
          feedback:
              'Great progress in pronunciation! Focus on expanding your vocabulary.',
          expanded: true,
        ),
        _FeedbackTile(
          date: '02/01/2024',
          feedback:
              'You\'re doing well with conversation practice. Keep working on your listening skills and try to practice more speaking with native speakers.',
        ),
      ],
    );
  }
}

class _FeedbackTile extends StatelessWidget {
  final String date;
  final String feedback;
  final bool expanded;

  const _FeedbackTile({
    required this.date,
    required this.feedback,
    this.expanded = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: expanded,
          tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          expandedAlignment: Alignment.topLeft,
          childrenPadding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
          title: Text(
            'Feedback from $date',
            style: textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          iconColor: Colors.black,
          children: [
            Text(
              feedback,
              style: textTheme.bodyLarge!.copyWith(
                color: const Color(0xFF45A180),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
