import 'package:flutter/material.dart';
import '../models/restaurant_model.dart';
import '../theme/app_theme.dart';

class RestaurantsSection extends StatelessWidget {
  const RestaurantsSection({Key? key}) : super(key: key);

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
            'Our Restaurants',
            style: AppTheme.heading2.copyWith(
              fontSize: isMobile ? 32 : 40,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            'Discover our diverse culinary destinations',
            style: AppTheme.bodyLarge.copyWith(
              color: AppTheme.grey,
              fontSize: isMobile ? 14 : 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isMobile ? 1 : 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              childAspectRatio: isMobile ? 1.1 : 1.2,
            ),
            itemCount: restaurants.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return _RestaurantCard(restaurant: restaurants[index]);
            },
          ),
        ],
      ),
    );
  }
}

class _RestaurantCard extends StatefulWidget {
  final Restaurant restaurant;

  const _RestaurantCard({required this.restaurant});

  @override
  State<_RestaurantCard> createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<_RestaurantCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () {
          // Navigate to restaurant details
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(_isHovered ? 0.15 : 0.08),
                blurRadius: _isHovered ? 16 : 8,
                spreadRadius: _isHovered ? 2 : 0,
              ),
            ],
            overflow: Overflow.hidden,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                // Image
                Container(
                  color: AppTheme.lightGrey,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        color: AppTheme.primaryBrown.withOpacity(0.7),
                        child: Center(
                          child: Icon(
                            Icons.restaurant,
                            size: 80,
                            color: AppTheme.gold.withOpacity(0.3),
                          ),
                        ),
                      ),
                      if (_isHovered)
                        Container(
                          color: Colors.black.withOpacity(0.3),
                        ),
                    ],
                  ),
                ),
                // Content
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.7),
                          Colors.transparent,
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.restaurant.name,
                          style: AppTheme.heading4.copyWith(
                            color: AppTheme.white,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 16,
                              color: AppTheme.gold,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                widget.restaurant.location,
                                style: AppTheme.bodySmall.copyWith(
                                  color: AppTheme.cream,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: AppTheme.gold.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: AppTheme.gold.withOpacity(0.5),
                            ),
                          ),
                          child: Text(
                            widget.restaurant.cuisine,
                            style: AppTheme.bodySmall.copyWith(
                              color: AppTheme.gold,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        if (_isHovered) ...[  
                          const SizedBox(height: 16),
                          Text(
                            widget.restaurant.description,
                            style: AppTheme.bodySmall.copyWith(
                              color: AppTheme.cream,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}