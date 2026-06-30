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
        vertical: isMobile ? 12 : 16,
      ),
      decoration: BoxDecoration(
        color: AppTheme.white,
        border: Border(
          bottom: BorderSide(
            color: AppTheme.logoBg.withOpacity(0.2),
            width: 2,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo & Company Name
          Row(
            children: [
              // Logo placeholder
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppTheme.logoBg,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'P',
                    style: TextStyle(
                      color: AppTheme.logoGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PARIKA',
                    style: TextStyle(
                      color: AppTheme.logoBg,
                      fontSize: isMobile ? 20 : 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Hospitality',
                    style: TextStyle(
                      color: AppTheme.logoGreen,
                      fontSize: isMobile ? 10 : 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
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
              icon: Icon(Icons.menu, color: AppTheme.logoBg),
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            // Navigate to section
          },
          child: Text(
            label,
            style: TextStyle(
              color: AppTheme.logoBg,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}