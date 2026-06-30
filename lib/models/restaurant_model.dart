class Restaurant {
  final String id;
  final String name;
  final String description;
  final String location;
  final String cuisine;
  final String imageUrl;
  final String capacity;
  final List<String> specialities;
  final String openingTime;
  final String closingTime;

  Restaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.cuisine,
    required this.imageUrl,
    required this.capacity,
    required this.specialities,
    required this.openingTime,
    required this.closingTime,
  });
}

final List<Restaurant> restaurants = [
  Restaurant(
    id: 'kudla',
    name: 'Kudla Restaurant',
    description: 'Experience authentic coastal cuisine with a modern twist. A perfect blend of traditional flavors and contemporary dining.',
    location: 'Ramanashree Hotel, Richmond Town',
    cuisine: 'Coastal & Multi-Cuisine',
    imageUrl: 'assets/images/kudla.jpg',
    capacity: '80 Guests',
    specialities: [
      'Fresh Seafood',
      'Coastal Curries',
      'Grilled Specialties',
      'Traditional Coastal Biryani',
    ],
    openingTime: '7:00 AM',
    closingTime: '11:00 PM',
  ),
  Restaurant(
    id: 'gourmet-kitchen',
    name: 'Gourmet Kitchen & Bar',
    description: 'Premium dining experience with international and Indian cuisines. Perfect for celebrations and corporate gatherings.',
    location: 'Ramanashree Hotel, Richmond Town',
    cuisine: 'International & Indian',
    imageUrl: 'assets/images/gourmet-kitchen.jpg',
    capacity: '100 Guests',
    specialities: [
      'Continental Cuisine',
      'Premium Wines',
      'Chef\'s Special',
      'Multi-Cuisine Buffet',
    ],
    openingTime: '12:00 PM',
    closingTime: '11:00 PM',
  ),
  Restaurant(
    id: 'coastal-village',
    name: 'Parika Coastal Village',
    description: 'Immerse yourself in coastal charm with our specialty seafood restaurant. A beachside dining experience in the heart of the city.',
    location: 'P.M Square Building, Sahakarnagar',
    cuisine: 'Seafood & Coastal',
    imageUrl: 'assets/images/coastal-village.jpg',
    capacity: '70 Guests',
    specialities: [
      'Fresh Catch of the Day',
      'Coastal Delicacies',
      'Specialty Platters',
      'Traditional Recipes',
    ],
    openingTime: '11:00 AM',
    closingTime: '11:00 PM',
  ),
  Restaurant(
    id: 'uptown-rooftop',
    name: 'Uptown Rooftop Bar & Grill',
    description: 'Sky-high dining with spectacular city views. A premium rooftop restaurant offering grilled specialties and craft cocktails.',
    location: 'P.M Square Building, Sahakarnagar',
    cuisine: 'Grill & Continental',
    imageUrl: 'assets/images/uptown-rooftop.jpg',
    capacity: '60 Guests',
    specialities: [
      'Premium Grills',
      'Craft Cocktails',
      'Rooftop Views',
      'Fusion Cuisine',
    ],
    openingTime: '5:00 PM',
    closingTime: '11:00 PM',
  ),
];