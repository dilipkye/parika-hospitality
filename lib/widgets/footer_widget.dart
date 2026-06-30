import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      color: AppTheme.charcoal,
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
                    'Our Story',
                    'Careers',
                    'Press',
                  ],
                ),
                _FooterColumn(
                  title: 'Our Brands',
                  items: [
                    'Parika Multicuisine',
                    'Gourmet Kitchen',
                    'Kudla Seafood',
                    'Coastal Village',
                  ],
                ),
                _FooterColumn(
                  title: 'Venues',
                  items: [
                    'Golden Pearl Hall',
                    'Rapthi Boardroom',
                    'Uptown Rooftop',
                    'Events',
                  ],
                ),
                _FooterColumn(
                  title: 'Connect',
                  items: [
                    'Contact Us',
                    'Reservations',
                    'Catering',
                    'FAQs',
                  ],
                ),
              ],
            )
          else
            Column(
              children: [
                _FooterColumn(
                  title: 'PARIKA',
                  items: ['About Us', 'Our Story', 'Careers', 'Press'],
                ),
                const SizedBox(height: 32),
                _FooterColumn(
                  title: 'Our Brands',
                  items: [
                    'Parika Multicuisine',
                    'Gourmet Kitchen',
                    'Kudla Seafood',
                    'Coastal Village',
                  ],
                ),
                const SizedBox(height: 32),
                _FooterColumn(
                  title: 'Venues',
                  items: [
                    'Golden Pearl Hall',
                    'Rapthi Boardroom',
                    'Uptown Rooftop',
                    'Events',
                  ],
                ),
              ],
            ),
          const SizedBox(height: 40),
          Container(
            height: 1,
            color: AppTheme.darkGray.withOpacity(0.2),
          ),
          const SizedBox(height: 32),
          // Social Links
          Wrap(
            spacing: 24,
            children: [
              _SocialIcon(Icons.facebook, 'Facebook'),
              _SocialIcon(Icons.camera_alt, 'Instagram'),
              _SocialIcon(Icons.language, 'Website'),
              _SocialIcon(Icons.mail, 'Email'),
            ],
          ),
          const SizedBox(height: 32),
          // Copyright & Links
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '© 2024 Parika Hospitality Services. All rights reserved.',
                style: AppTheme.bodySmall.copyWith(
                  color: AppTheme.mediumGray,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 24,
                alignment: WrapAlignment.center,
                children: [
                  _FooterLink('Privacy Policy'),
                  _FooterLink('Terms of Service'),
                  _FooterLink('Cookie Policy'),
                ],
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
          style: GoogleFonts.poppins(
            color: AppTheme.deepGold,
            fontSize: 13,
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
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
                    color: AppTheme.white.withOpacity(0.8),
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
          color: _isHovered ? AppTheme.primaryGreen : Colors.transparent,
          border: Border.all(
            color: AppTheme.deepGold,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        ),
        child: Icon(
          widget.icon,
          size: 18,
          color: _isHovered ? AppTheme.white : AppTheme.deepGold,
        ),
      ),
    );
  }
}

class _FooterLink extends StatefulWidget {
  final String label;

  const _FooterLink(this.label);

  @override
  State<_FooterLink> createState() => _FooterLinkState();
}

class _FooterLinkState extends State<_FooterLink> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 200),
        style: AppTheme.bodySmall.copyWith(
          color: _isHovered ? AppTheme.deepGold : AppTheme.mediumGray,
          decoration: _isHovered ? TextDecoration.underline : null,
        ),
        child: Text(widget.label),
      ),
    );
  }
}
