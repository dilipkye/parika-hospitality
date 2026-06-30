import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 60,
        vertical: isMobile ? 40 : 60,
      ),
      color: AppTheme.lightGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Our Services',
            style: AppTheme.heading2.copyWith(
              fontSize: isMobile ? 32 : 40,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          GridView.count(
            crossAxisCount: isMobile ? 1 : 2,
            crossAxisSpacing: 40,
            mainAxisSpacing: 40,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _ServiceCard(
                icon: Icons.restaurant,
                title: 'Fine Dining Restaurants',
                description: 'Premium culinary experience with diverse cuisines',
                services: [
                  '• Kudla Restaurant',
                  '• Gourmet Kitchen & Bar',
                  '• Parika Coastal Village',
                  '• Uptown Rooftop Bar & Grill',
                ],
              ),
              _ServiceCard(
                icon: Icons.room_service,
                title: 'Room Service',
                description: 'Delicious meals delivered to your room',
                services: [
                  '• Breakfast Service',
                  '• Lunch & Dinner',
                  '• Special Requests',
                  '• 24/7 Availability',
                ],
              ),
              _ServiceCard(
                icon: Icons.celebration,
                title: 'Banquet Halls',
                description: 'Elegant venues for your special events',
                services: [
                  '• Golden Pearl Hall (300 capacity)',
                  '• Aapthi Hall (150-200 capacity)',
                  '• Professional Catering',
                  '• Event Coordination',
                ],
              ),
              _ServiceCard(
                icon: Icons.event_available,
                title: 'Events & Catering',
                description: 'Complete event management solutions',
                services: [
                  '• Weddings',
                  '• Corporate Events',
                  '• Conferences',
                  '• Private Functions',
                ],
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
  final List<String> services;

  const _ServiceCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.services,
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
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(_isHovered ? 0.15 : 0.08),
              blurRadius: _isHovered ? 16 : 8,
              spreadRadius: _isHovered ? 2 : 0,
              offset: Offset(0, _isHovered ? 8 : 4),
            ),
          ],
          border: Border.all(
            color: _isHovered ? AppTheme.primaryBrown : Colors.transparent,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.cream,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                widget.icon,
                size: 32,
                color: AppTheme.primaryBrown,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.title,
              style: AppTheme.heading4,
            ),
            const SizedBox(height: 12),
            Text(
              widget.description,
              style: AppTheme.bodyMedium.copyWith(color: AppTheme.grey),
            ),
            const SizedBox(height: 20),
            ...widget.services
                .map(
                  (service) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      service,
                      style: AppTheme.bodySmall,
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}