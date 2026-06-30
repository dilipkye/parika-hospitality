import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: isMobile ? screenHeight * 0.6 : screenHeight * 0.7,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.logoBg.withOpacity(0.95),
            AppTheme.logoBg.withOpacity(0.85),
          ],
        ),
        image: const DecorationImage(
          image: AssetImage('assets/images/hero-bg.jpg'),
          fit: BoxFit.cover,
          opacity: 0.15,
        ),
      ),
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: isMobile ? 24 : 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Parika',
                    style: AppTheme.heading1.copyWith(
                      color: AppTheme.logoGreen,
                      fontSize: isMobile ? 36 : 48,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Experience Culinary Excellence & Premium Hospitality',
                    style: AppTheme.heading3.copyWith(
                      color: AppTheme.white,
                      fontSize: isMobile ? 18 : 24,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _HeroButton(
                        label: 'Reserve Now',
                        isPrimary: true,
                        onTap: () {},
                      ),
                      const SizedBox(width: 20),
                      _HeroButton(
                        label: 'Order Food',
                        isPrimary: false,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _HeroButton extends StatefulWidget {
  final String label;
  final bool isPrimary;
  final VoidCallback onTap;

  const _HeroButton({
    required this.label,
    required this.isPrimary,
    required this.onTap,
  });

  @override
  State<_HeroButton> createState() => _HeroButtonState();
}

class _HeroButtonState extends State<_HeroButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          decoration: BoxDecoration(
            color: widget.isPrimary ? AppTheme.logoGreen : Colors.transparent,
            border: widget.isPrimary ? null : Border.all(color: AppTheme.logoGreen),
            borderRadius: BorderRadius.circular(50),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: AppTheme.logoGreen.withOpacity(0.4),
                      blurRadius: 12,
                      spreadRadius: 2,
                    ),
                  ]
                : [],
          ),
          child: Text(
            widget.label,
            style: AppTheme.buttonText.copyWith(
              color: widget.isPrimary ? AppTheme.logoBg : AppTheme.logoGreen,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}