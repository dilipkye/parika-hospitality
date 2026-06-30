import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/location_model.dart';
import '../theme/app_theme.dart';

class LocationsSection extends StatelessWidget {
  const LocationsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 60,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Our Locations',
            style: AppTheme.heading2.copyWith(
              fontSize: isMobile ? 32 : 40,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            'Visit us at our premium hospitality destinations',
            style: AppTheme.bodyLarge.copyWith(
              color: AppTheme.grey,
              fontSize: isMobile ? 14 : 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          ListView.separated(
            itemCount: parikaLocations.length,
            separatorBuilder: (_, __) => const SizedBox(height: 40),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return _LocationCard(location: parikaLocations[index]);
            },
          ),
        ],
      ),
    );
  }
}

class _LocationCard extends StatefulWidget {
  final Location location;

  const _LocationCard({required this.location});

  @override
  State<_LocationCard> createState() => _LocationCardState();
}

class _LocationCardState extends State<_LocationCard> {
  bool _isHovered = false;

  void _launchMap() async {
    final url = 'https://www.google.com/maps/search/${widget.location.coordinates}';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    }
  }

  void _callPhone() async {
    final url = 'tel:${widget.location.phone}';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  void _sendEmail() async {
    final url = 'mailto:${widget.location.email}';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: _isHovered ? AppTheme.primaryBrown : AppTheme.lightGrey,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(_isHovered ? 0.12 : 0.05),
              blurRadius: _isHovered ? 12 : 6,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Map Preview
                Container(
                  width: isMobile ? 100 : 180,
                  height: isMobile ? 100 : 140,
                  decoration: BoxDecoration(
                    color: AppTheme.primaryBrown.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.location_city,
                    size: 50,
                    color: AppTheme.gold.withOpacity(0.3),
                  ),
                ),
                const SizedBox(width: 24),
                // Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.location.name,
                        style: AppTheme.heading3.copyWith(
                          fontSize: isMobile ? 22 : 28,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 16,
                            color: AppTheme.primaryBrown,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '${widget.location.area}, ${widget.location.city}',
                              style: AppTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.location.address,
                        style: AppTheme.bodySmall.copyWith(
                          color: AppTheme.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Contact Info
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.cream,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 18,
                        color: AppTheme.primaryBrown,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          widget.location.phone,
                          style: AppTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 18,
                        color: AppTheme.primaryBrown,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          widget.location.email,
                          style: AppTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 18,
                        color: AppTheme.primaryBrown,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          widget.location.operatingHours[0],
                          style: AppTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Facilities
            Text(
              'Facilities',
              style: AppTheme.heading4.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: widget.location.facilities
                  .map(
                    (facility) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryBrown.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: AppTheme.primaryBrown.withOpacity(0.3),
                        ),
                      ),
                      child: Text(
                        facility,
                        style: AppTheme.bodySmall.copyWith(
                          color: AppTheme.primaryBrown,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 24),
            // Action Buttons
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _ActionButton(
                  icon: Icons.map,
                  label: 'View Map',
                  onTap: _launchMap,
                  isPrimary: true,
                ),
                _ActionButton(
                  icon: Icons.phone,
                  label: 'Call',
                  onTap: _callPhone,
                  isPrimary: false,
                ),
                _ActionButton(
                  icon: Icons.email,
                  label: 'Email',
                  onTap: _sendEmail,
                  isPrimary: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatefulWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isPrimary;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
    this.isPrimary = false,
  });

  @override
  State<_ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<_ActionButton> {
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: widget.isPrimary
                ? AppTheme.primaryBrown
                : AppTheme.lightGrey,
            borderRadius: BorderRadius.circular(8),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: widget.isPrimary
                          ? AppTheme.primaryBrown.withOpacity(0.4)
                          : Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ]
                : [],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.icon,
                size: 18,
                color: widget.isPrimary ? AppTheme.white : AppTheme.primaryBrown,
              ),
              const SizedBox(width: 8),
              Text(
                widget.label,
                style: AppTheme.bodySmall.copyWith(
                  color: widget.isPrimary
                      ? AppTheme.white
                      : AppTheme.primaryBrown,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}