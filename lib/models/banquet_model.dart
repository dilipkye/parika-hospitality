class BanquetHall {
  final String id;
  final String name;
  final String description;
  final String location;
  final String floor;
  final String imageUrl;
  final int capacity;
  final List<String> amenities;
  final List<String> eventTypes;
  final String priceRange;

  BanquetHall({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.floor,
    required this.imageUrl,
    required this.capacity,
    required this.amenities,
    required this.eventTypes,
    required this.priceRange,
  });
}

final List<BanquetHall> banquetHalls = [
  BanquetHall(
    id: 'golden-pearl',
    name: 'Golden Pearl Banquet Hall',
    description: 'Elegant grand banquet hall on the 5th floor with panoramic city views. Perfect for large celebrations and corporate events.',
    location: 'Ramanashree Hotel, Richmond Town - 5th Floor',
    floor: '5th Floor',
    imageUrl: 'assets/images/golden-pearl.jpg',
    capacity: 300,
    amenities: [
      'Air Conditioning',
      'Professional Sound System',
      'LED Display Screens',
      'Dance Floor',
      'Modern Kitchen',
      'Parking Facility',
      'Elegant Decor',
      'Panoramic City Views',
    ],
    eventTypes: [
      'Weddings',
      'Corporate Events',
      'Product Launches',
      'Conferences',
      'Social Gatherings',
      'Birthday Parties',
    ],
    priceRange: 'Premium',
  ),
  BanquetHall(
    id: 'aapthi-richmond',
    name: 'Aapthi Hall',
    description: 'Sophisticated banquet hall on the 1st floor. Ideal for intimate gatherings and medium-sized events with easy accessibility.',
    location: 'Ramanashree Hotel, Richmond Town - 1st Floor',
    floor: '1st Floor',
    imageUrl: 'assets/images/aapthi-richmond.jpg',
    capacity: 150,
    amenities: [
      'Air Conditioning',
      'Sound System',
      'Flexible Layout',
      'Adjacent Dining',
      'Parking',
      'Easy Access',
      'Professional Catering',
      'Modern Decor',
    ],
    eventTypes: [
      'Corporate Meetings',
      'Seminars',
      'Engagement Parties',
      'Business Lunches',
      'Small Weddings',
      'Group Gatherings',
    ],
    priceRange: 'Standard',
  ),
  BanquetHall(
    id: 'aapthi-sahakarnagar',
    name: 'Aapthi Hall',
    description: 'Premium banquet space in Sahakarnagar offering modern facilities and excellent catering services for various events.',
    location: 'P.M Square Building, Sahakarnagar',
    floor: 'Ground & Mezzanine',
    imageUrl: 'assets/images/aapthi-sahakarnagar.jpg',
    capacity: 200,
    amenities: [
      'Modern Infrastructure',
      'Professional Sound System',
      'In-House Catering',
      'Flexible Seating',
      'Air Conditioning',
      'Ample Parking',
      'Professional Staff',
      'Event Coordination Support',
    ],
    eventTypes: [
      'Weddings',
      'Corporate Events',
      'Conferences',
      'Exhibitions',
      'Training Programs',
      'Celebrations',
    ],
    priceRange: 'Premium',
  ),
];