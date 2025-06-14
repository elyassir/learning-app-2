import 'package:flutter/material.dart';
import 'package:learning_english_app/themes/app_colors.dart';

class ProgressTimeline extends StatelessWidget {
  const ProgressTimeline({super.key});

  Widget _buildCircle({bool completed = false, Color? borderColor}) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor ?? AppColors.primary, width: 2),
        color: Colors.white,
      ),
      child: completed
          ? const Icon(Icons.check, size: 16, color: AppColors.primary)
          : null,
    );
  }

  Widget _buildLine({Color? color, double height = 26}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      width: 2,
      height: height,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                _buildCircle(completed: true),
                _buildLine(color: AppColors.primary),
                _buildLine(color: AppColors.primary, height: 12),
                _buildCircle(borderColor: AppColors.primary),
                _buildLine(color: Colors.grey[300]),
                _buildLine(color: Colors.grey[300], height: 12),
                _buildCircle(borderColor: Colors.grey[400]),
              ],
            ),
            const SizedBox(width: 16),
            const Expanded(child: _ProgressTextColumn()),
          ],
        ),
      ),
    );
  }
}

class _ProgressTextColumn extends StatelessWidget {
  const _ProgressTextColumn();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        _LevelText(title: 'Beginner', date: 'Started: 01/01/2024'),
        SizedBox(height: 20),
        _LevelText(title: 'Intermediate', date: 'Reached: 03/15/2024'),
        SizedBox(height: 20),
        _LevelText(title: 'Advanced', date: 'Current Level'),
      ],
    );
  }
}

class _LevelText extends StatelessWidget {
  final String title;
  final String date;

  const _LevelText({required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF0D1C17))),
        const SizedBox(height: 4),
        Text(date,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.primary,
              fontWeight: FontWeight.w500,
            )),
      ],
    );
  }
}
