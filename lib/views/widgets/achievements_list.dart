import 'package:flutter/material.dart';
import 'package:learning_english_app/themes/app_colors.dart';

class AchievementsList extends StatelessWidget {
  const AchievementsList({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: const [
        _AchievementItem(
          icon: Icons.emoji_events_outlined,
          text: 'Completed 50 Lessons',
          date: '02/15/2024',
        ),
        SizedBox(height: 12),
        _AchievementItem(
          icon: Icons.star_outline,
          text: 'Reached Intermediate Level',
          date: '03/15/2024',
        ),
      ],
    );
  }
}

class _AchievementItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final String date;

  const _AchievementItem({
    required this.icon,
    required this.text,
    required this.date,
  });

  String truncateWithEllipsis(int cutoff, String myText) {
    return (myText.length <= cutoff)
        ? myText
        : '${myText.substring(0, cutoff)}...';
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: const Color(0xFFE5F5F0),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: AppColors.primary, size: 28),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: textTheme.bodyLarge,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 16),
        Text(
          date,
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
