import 'package:flutter/material.dart';
import '../models/banquet_model.dart';
import '../theme/app_theme.dart';

class BanquetHallsSection extends StatelessWidget {
  const BanquetHallsSection({Key? key}) : super(key: key);

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
            'Banquet Halls',
            style: AppTheme.heading2.copyWith(
              fontSize: isMobile ? 32 : 40,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            'Perfect venues for your special moments',
            style: AppTheme.bodyLarge.copyWith(
              color: AppTheme.grey,
              fontSize: isMobile ? 14 : 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          ListView.separated(
            itemCount: banquetHalls.length,
            separatorBuilder: (_, __) => const SizedBox(height: 40),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return _BanquetHallCard(hall: banquetHalls[index]);
            },
          ),
        ],
      ),
    );
  }
}

class _BanquetHallCard extends StatefulWidget {
  final BanquetHall hall;

  const _BanquetHallCard({required this.hall});

  @override
  State<_BanquetHallCard> createState() => _BanquetHallCardState();
}

class _BanquetHallCardState extends State<_BanquetHallCard> {
  bool _isHovered = false;
  bool _isExpanded = false;

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
              spreadRadius: 0,
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
                // Image Placeholder
                Container(
                  width: isMobile ? 120 : 200,
                  height: isMobile ? 120 : 150,
                  decoration: BoxDecoration(
                    color: AppTheme.primaryBrown.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.event_seat,
                    size: 60,
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
                        widget.hall.name,
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
                              widget.hall.location,
                              style: AppTheme.bodyMedium,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          _InfoBadge(
                            icon: Icons.people,
                            label: '${widget.hall.capacity} Guests',
                          ),
                          const SizedBox(width: 16),
                          _InfoBadge(
                            icon: Icons.layers,
                            label: widget.hall.floor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Description
            Text(
              widget.hall.description,
              style: AppTheme.bodyMedium.copyWith(
                color: AppTheme.grey,
              ),
            ),
            const SizedBox(height: 24),
            // Amenities & Event Types
            if (_isExpanded || !isMobile) ...[  
              Text(
                'Amenities',
                style: AppTheme.heading4.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: widget.hall.amenities
                    .map(
                      (amenity) => Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.cream,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: AppTheme.primaryBrown.withOpacity(0.3),
                          ),
                        ),
                        child: Text(
                          amenity,
                          style: AppTheme.bodySmall,
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 24),
              Text(
                'Event Types',
                style: AppTheme.heading4.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: widget.hall.eventTypes
                    .map(
                      (event) => Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryBrown.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: AppTheme.primaryBrown,
                          ),
                        ),
                        child: Text(
                          event,
                          style: AppTheme.bodySmall.copyWith(
                            color: AppTheme.primaryBrown,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 24),
              // CTA Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryBrown,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Enquire Now',
                    style: AppTheme.buttonText,
                  ),
                ),
              ),
            ],
            // Expand Button for Mobile
            if (isMobile)
              GestureDetector(
                onTap: () => setState(() => _isExpanded = !_isExpanded),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    _isExpanded ? 'Show Less' : 'Show More',
                    style: AppTheme.bodyMedium.copyWith(
                      color: AppTheme.primaryBrown,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _InfoBadge extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoBadge({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppTheme.cream,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppTheme.primaryBrown.withOpacity(0.3),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: AppTheme.primaryBrown),
          const SizedBox(width: 6),
          Text(
            label,
            style: AppTheme.bodySmall.copyWith(
              color: AppTheme.primaryBrown,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}