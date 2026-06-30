import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 40,
        vertical: isMobile ? 16 : 24,
      ),
      decoration: BoxDecoration(
        color: AppTheme.darkBrown,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo & Company Name
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PARIKA',
                style: AppTheme.heading2.copyWith(
                  color: AppTheme.gold,
                  fontSize: isMobile ? 28 : 36,
                ),
              ),
              Text(
                'Hospitality Services',
                style: AppTheme.bodyMedium.copyWith(
                  color: AppTheme.cream,
                  fontSize: isMobile ? 12 : 14,
                ),
              ),
            ],
          ),
          // Navigation Menu
          if (!isMobile)
            Row(
              children: [
                _NavButton('Restaurants'),
                _NavButton('Banquet Halls'),
                _NavButton('Locations'),
                _NavButton('Contact'),
              ],
            )
          else
            IconButton(
              icon: const Icon(Icons.menu, color: AppTheme.white),
              onPressed: () {
                // Show mobile menu
              },
            ),
        ],
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String label;

  const _NavButton(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            // Navigate to section
          },
          child: Text(
            label,
            style: AppTheme.bodyLarge.copyWith(
              color: AppTheme.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}