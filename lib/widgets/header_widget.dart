import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 40,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: AppTheme.white,
        boxShadow: [
          if (_isScrolled)
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 12,
              offset: const Offset(0, 2),
            ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo & Company Name
          MouseRegion(
            onEnter: (_) {},
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  // Brand Mark
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppTheme.primaryGreen,
                          AppTheme.darkGreen,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'P',
                        style: GoogleFonts.playfairDisplay(
                          color: AppTheme.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Company Name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PARIKA',
                        style: GoogleFonts.playfairDisplay(
                          color: AppTheme.charcoal,
                          fontSize: isMobile ? 18 : 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        'Hospitality Services',
                        style: GoogleFonts.poppins(
                          color: AppTheme.primaryGreen,
                          fontSize: isMobile ? 9 : 10,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Navigation Menu
          if (!isMobile)
            Row(
              children: [
                _NavButton('Restaurants'),
                _NavButton('Banquet Hall'),
                _NavButton('Rooftop Grill'),
                _NavButton('Gallery'),
                _NavButton('Contact'),
              ],
            )
          else
            IconButton(
              icon: Icon(Icons.menu, color: AppTheme.charcoal),
              onPressed: () {},
            ),
        ],
      ),
    );
  }
}

class _NavButton extends StatefulWidget {
  final String label;

  const _NavButton(this.label);

  @override
  State<_NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<_NavButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.label,
                style: GoogleFonts.poppins(
                  color: _isHovered ? AppTheme.primaryGreen : AppTheme.charcoal,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  letterSpacing: 0.3,
                ),
              ),
              if (_isHovered)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Container(
                    height: 2,
                    width: 20,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryGreen,
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}