import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 60,
        vertical: isMobile ? 40 : 60,
      ),
      color: AppTheme.darkBrown,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!isMobile)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _FooterColumn(
                  title: 'PARIKA',
                  items: [
                    'About Us',
                    'Our Mission',
                    'Team',
                    'Careers',
                  ],
                ),
                _FooterColumn(
                  title: 'Restaurants',
                  items: [
                    'Kudla Restaurant',
                    'Gourmet Kitchen & Bar',
                    'Parika Coastal Village',
                    'Uptown Rooftop Bar & Grill',
                  ],
                ),
                _FooterColumn(
                  title: 'Services',
                  items: [
                    'Banquet Halls',
                    'Catering',
                    'Room Service',
                    'Events',
                  ],
                ),
                _FooterColumn(
                  title: 'Quick Links',
                  items: [
                    'Reservations',
                    'Menu',
                    'Contact',
                    'Blog',
                  ],
                ),
              ],
            )
          else
            Column(
              children: [
                _FooterColumn(
                  title: 'PARIKA',
                  items: ['About Us', 'Our Mission', 'Team', 'Careers'],
                ),
                const SizedBox(height: 32),
                _FooterColumn(
                  title: 'Restaurants',
                  items: [
                    'Kudla Restaurant',
                    'Gourmet Kitchen & Bar',
                    'Parika Coastal Village',
                    'Uptown Rooftop Bar & Grill',
                  ],
                ),
                const SizedBox(height: 32),
                _FooterColumn(
                  title: 'Services',
                  items: [
                    'Banquet Halls',
                    'Catering',
                    'Room Service',
                    'Events',
                  ],
                ),
              ],
            ),
          const SizedBox(height: 40),
          Divider(
            color: AppTheme.white.withOpacity(0.2),
            thickness: 1,
          ),
          const SizedBox(height: 24),
          // Social Links
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _SocialIcon(Icons.facebook, 'Facebook'),
              const SizedBox(width: 24),
              _SocialIcon(Icons.camera_alt, 'Instagram'),
              const SizedBox(width: 24),
              _SocialIcon(Icons.language, 'Website'),
              const SizedBox(width: 24),
              _SocialIcon(Icons.business, 'LinkedIn'),
            ],
          ),
          const SizedBox(height: 32),
          // Copyright
          Text(
            '© 2024 Parika Hospitality Services. All rights reserved.',
            style: AppTheme.bodySmall.copyWith(
              color: AppTheme.cream,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Privacy Policy',
                style: AppTheme.bodySmall.copyWith(
                  color: AppTheme.gold,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(width: 24),
              Text(
                'Terms of Service',
                style: AppTheme.bodySmall.copyWith(
                  color: AppTheme.gold,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(width: 24),
              Text(
                'Contact Us',
                style: AppTheme.bodySmall.copyWith(
                  color: AppTheme.gold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FooterColumn extends StatelessWidget {
  final String title;
  final List<String> items;

  const _FooterColumn({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Column(
      crossAxisAlignment: isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTheme.heading4.copyWith(
            color: AppTheme.gold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),
        ...items
            .map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  item,
                  style: AppTheme.bodySmall.copyWith(
                    color: AppTheme.cream,
                  ),
                  textAlign: isMobile ? TextAlign.center : TextAlign.start,
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}

class _SocialIcon extends StatefulWidget {
  final IconData icon;
  final String label;

  const _SocialIcon(this.icon, this.label);

  @override
  State<_SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<_SocialIcon> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: _isHovered ? AppTheme.gold : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: AppTheme.gold,
            width: 1,
          ),
        ),
        child: Icon(
          widget.icon,
          size: 20,
          color: _isHovered ? AppTheme.darkBrown : AppTheme.gold,
        ),
      ),
    );
  }
}