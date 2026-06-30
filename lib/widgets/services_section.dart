import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 60,
        vertical: isMobile ? 60 : 80,
      ),
      color: AppTheme.offWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Our Services',
            style: AppTheme.heading2.copyWith(
              fontSize: isMobile ? 36 : 42,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            'Discover the essence of luxury hospitality',
            style: AppTheme.bodyLarge.copyWith(
              color: AppTheme.mediumGray,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 60),
          GridView.count(
            crossAxisCount: isMobile ? 1 : 3,
            crossAxisSpacing: 32,
            mainAxisSpacing: 32,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: isMobile ? 1.1 : 1.0,
            children: [
              _ServiceCard(
                icon: Icons.restaurant,
                title: 'Fine Dining',
                description: 'Experience coastal and multicuisine excellence',
              ),
              _ServiceCard(
                icon: Icons.event_available,
                title: 'Banquet Halls',
                description: 'Premium venues for unforgettable events',
              ),
              _ServiceCard(
                icon: Icons.nightlife,
                title: 'Rooftop Venues',
                description: 'Stunning city views and sophisticated ambiance',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;

  const _ServiceCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  State<_ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
          boxShadow: [
            if (!_isHovered) AppTheme.softShadow,
            if (_isHovered) AppTheme.mediumShadow,
          ],
          border: Border.all(
            color: _isHovered
                ? AppTheme.primaryGreen.withOpacity(0.3)
                : Colors.transparent,
            width: 1,
          ),
        ),
        child: Transform.translate(
          offset: _isHovered ? const Offset(0, -8) : Offset.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppTheme.primaryGreen.withOpacity(0.1),
                      AppTheme.primaryGreen.withOpacity(0.05),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
                ),
                child: Icon(
                  widget.icon,
                  size: 36,
                  color: AppTheme.primaryGreen,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                widget.title,
                style: AppTheme.heading5,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                widget.description,
                style: AppTheme.bodyMedium.copyWith(
                  color: AppTheme.mediumGray,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}